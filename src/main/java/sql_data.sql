ALTER TABLE admin AUTO_INCREMENT = 1500;
ALTER TABLE `users` ADD  UNIQUE (`email`);
ALTER TABLE `teacher` ADD UNIQUE (`email`); 
 ALTER TABLE `admin` ADD UNIQUE (`email`); 
  ALTER TABLE `students` ADD UNIQUE (`email`);
 INSERT INTO `idb`.`teacher` (`id`, `email`, `name`) VALUES ('303', 'teacher@gmail.com', 'teacher');
  INSERT INTO `idb`.`admin` (`id`, `email`, `name`) VALUES ('202', 'admin@gmail.com', 'admin');
   INSERT INTO `idb`.`students` (`id`, `email`, `name`) VALUES ('101', 'student@gmail.com', 'student');
