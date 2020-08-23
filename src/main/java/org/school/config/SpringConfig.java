
package org.school.config;



import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;



@Import({ HiberConfig.class})
@EnableWebMvc
@Configuration
@ComponentScan({"org.school.config","org.school.service", "org.school.controller","org.school.repository"})
public class SpringConfig implements WebMvcConfigurer {
    
    
  
    @Bean
    public BeanNameViewResolver beanNameResolver() {
        BeanNameViewResolver br = new BeanNameViewResolver();
        return br;
    }




    
        @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

                registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/assets/css/");
                registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/assets/fonts/");
                registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/assets/images/");
                registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/assets/js/");
                registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/assets/");
                registry.addResourceHandler("/other/**").addResourceLocations("/WEB-INF/others/");
//                registry.addResourceHandler("/*.xhtml").addResourceLocations("/WEB-INF/others/");
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        registry.addViewController("/").setViewName("forward:/index.html");
        registry.addViewController("/").setViewName("redirect:/home");    //goes to "/home"
        
//        registry.addViewController("/index").setViewName("index");
     

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

//    @Bean
//    public DataSource getDataSource() {
//        DriverManagerDataSource dataSource = new DriverManagerDataSource();
//        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//        dataSource.setUrl("jdbc:mysql://localhost:3306/emp3");
//        dataSource.setUsername("root");
//        dataSource.setPassword("");
//
//        return dataSource;
//    }


}
