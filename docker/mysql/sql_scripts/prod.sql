-- Script to initialize schema with data
-- to be used with mysql
-- schema name should match xxx.sql (prod here)
-- # ************************************************************

-- # Dump of table example
-- # ------------------------------------------------------------
-- # use database that matches xxx.sql
USE prod;

-- # Insert the sql queries below to upload
-- the data into the mysql database
-- below are some test data to try out
DROP TABLE IF EXISTS `testTable`;

CREATE TABLE `testTable` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`column1` varchar(255),
	`column2` datetime,
	`column3` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `testTable` WRITE;
/*!40000 ALTER TABLE `testTable` DISABLE KEYS */;

INSERT INTO `testTable` (`column1`,`column2`,`column3`) VALUES
		('test1', '2019-04-12', 34),
		('test2', '2019-05-13', 45),
		('test3', '2019-06-14', 56),
		('test4', '2019-07-15', 67),
		('test5', '2019-08-16', 78);
/*!40000 ALTER TABLE `testTable` ENABLE KEYS */;

UNLOCK TABLES;