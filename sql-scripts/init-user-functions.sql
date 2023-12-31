USE `trainapp`;
DROP TABLE IF EXISTS `tickets`;
DROP TABLE IF EXISTS `trips`;
DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `users`
--

INSERT INTO `users` 
VALUES 
('nick','{noop}password',1),
('matt','{noop}password',1);


--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
('nick','ROLE_USER'),
('matt','ROLE_USER');


CREATE TABLE `trainapp`.`trips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trips_idx_1` (`username`),
  CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1 DEFAULT CHARSET=latin1;

CREATE TABLE `trainapp`.`tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trip_id` integer,
  `rider_name` varchar(255),
  `train_id` integer,
  PRIMARY KEY (`id`),
  KEY `fk_trip` (`trip_id`),
  CONSTRAINT `fk_trip` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`),
  KEY `fk_train` (`train_id`),
  CONSTRAINT `fk_train` FOREIGN KEY (`train_id`) REFERENCES `trains` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;


