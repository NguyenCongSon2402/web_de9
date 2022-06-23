
CREATE TABLE `student` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `selected` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `student` VALUES ('a','son','2001-04-25','sss',0),('aa','thuong','2001-05-25','sas',0);
