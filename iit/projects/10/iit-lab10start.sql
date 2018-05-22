--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
 `movieid` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `title` varchar(100) NOT NULL,
 `year` char(4) DEFAULT NULL,
 PRIMARY KEY (`movieid`)
);


--
-- Insert data into table
--

INSERT INTO `movies` VALUES
  (1, "Iron Man", "2008"),
  (2, "Thor", "2011"),
  (3, "Captain America: The First Avenger", "2011"),
  (4, "The Avengers", "2012"),
  (5, "Captain America: The Winter Soldier", "2014"),
  (6, "Guardians of the Galaxy", "2014"),
  (7, "Avengers: Age of Ultron", "2015"),
  (8, "Doctor Strange", "2016"),
  (9, "Guardians of the Galaxy: Volume 2", "2017"),
  (10, "Thor: Ragnarok", "2017"),
  (11, "Avengers: Infinity War", "2018");

  

--
-- Table structure for table `actors`
--

CREATE TABLE `actors`(
	`actorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`full_name` varchar(100) NOT NULL,
	`dob` char(4) DEFAULT NULL,
	PRIMARY KEY (`actorid`)
);

--
-- Insert data into table
--

INSERT INTO `actors` VALUES
	(1, "Robert Downey Jr", "1965"),
	(2, "Samuel L. Jackson", "1948"),
	(3, "Chris Evans", "1981"),
	(4, "Chris Hemsworth", "1983"),
	(5, "Tom Hiddleston", "1981"),
	(6, "Scarlett Johanson", "1984"),
	(7, "Mark Ruffalo", "1967"),
	(8, "Chris Pratt", "1979"),
	(9, "Vin Diesel", "1967"),
	(10, "Zoe Saldana", "1978"),
	(11, "Benedict Cumberbatch", "1976");


--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `movie_actorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movieID` int(10) unsigned NOT NULL,
  `actorID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`movie_actorID`)
);


--
-- Insert data into table
--

INSERT INTO `movie_actor` (`movieID`, `actorID`) VALUES
	(1, 1),
	(1, 2),
	(2, 4),
	(2, 5),
	(3, 3),
	(3, 2),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 4),
	(4, 5),
	(4, 6),
	(4, 7),
	(5, 3),
	(5, 2),
	(5, 6),
	(6, 8),
	(6, 9),
	(6, 10),
	(7, 1),
	(7, 2),
	(7, 3),
	(7, 4),
	(7, 5),
	(7, 6),
	(7, 7),
	(8, 11),
	(9, 8),
	(9, 9),
	(9, 10),
	(10, 4),
	(10, 5),
	(10, 6),
	(10, 7),
	(11, 1),
	(11, 2),
	(11, 3),
	(11, 4),
	(11, 5),
	(11, 6),
	(11, 7),
	(11, 8),
	(11, 9),
	(11, 10),
	(11, 11);
