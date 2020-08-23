package org.school.config;

import java.util.Properties;
import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class HiberConfig {
    
    private static final String DATABASE_URL = "jdbc:mysql://localhost/idb";
    private static final String DATABASE_DRIVER_CLASS_NAME ="com.mysql.jdbc.Driver";
    private static final String DATABASE_USERNAME ="root";
    private static final String DATABASE_PASSWORD ="";
        
    
    
    
    
    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[]{"org.school.model"});
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    } 

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(DATABASE_DRIVER_CLASS_NAME);
        dataSource.setUrl(DATABASE_URL);
        dataSource.setUsername(DATABASE_USERNAME);
        dataSource.setPassword(DATABASE_PASSWORD);
        return dataSource;
    }

    private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
        properties.put("hibernate.show_sql", true);
        properties.put("hibernate.format_sql", true);
        properties.put("hibernate.hbm2ddl.auto", "update");        
        return properties;
    }

    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory sf) {
        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(sf);
        return txManager;
    }


}
