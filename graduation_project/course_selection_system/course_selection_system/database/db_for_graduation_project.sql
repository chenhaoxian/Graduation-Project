# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.16
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2015-12-31 15:07:47
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for db_course_selection_system
CREATE DATABASE IF NOT EXISTS `db_course_selection_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_course_selection_system`;


# Dumping structure for table db_course_selection_system.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aid` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`id`, `aid`, `password`, `name`, `usertype`) VALUES
	(1, '1', '123', 'admin1', 3);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.course
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `ccount` int(11) DEFAULT NULL,
  `ctype` varchar(20) DEFAULT NULL,
  `ccredit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cno` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.course: ~0 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.department
CREATE TABLE IF NOT EXISTS `department` (
  `departmentno` varchar(20) DEFAULT NULL,
  `departmentname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.department: ~0 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.profession
CREATE TABLE IF NOT EXISTS `profession` (
  `professionName` varchar(50) DEFAULT NULL,
  `professionNo` varchar(20) NOT NULL,
  `departmentno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`professionNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.profession: ~0 rows (approximately)
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.selectcourse
CREATE TABLE IF NOT EXISTS `selectcourse` (
  `cno` varchar(20) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.selectcourse: ~0 rows (approximately)
/*!40000 ALTER TABLE `selectcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `selectcourse` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `scredit` int(11) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `professionno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sno` (`sno`),
  KEY `fk_student_professionNo` (`professionno`),
  CONSTRAINT `fk_student_professionNo` FOREIGN KEY (`professionno`) REFERENCES `profession` (`professionNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.student: ~1 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`id`, `sname`, `sno`, `grade`, `password`, `scredit`, `usertype`, `professionno`) VALUES
	(1, 'student1', '1', 1, '123', 0, '1', NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.teacher
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(20) DEFAULT NULL,
  `tno` varchar(20) DEFAULT NULL,
  `departmentno` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tno` (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.teacher: ~1 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
REPLACE INTO `teacher` (`id`, `tname`, `tno`, `departmentno`, `password`, `usertype`) VALUES
	(1, 'test1', '1', 'hahaha', '123', '2');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `name`, `userid`, `password`, `user_type`) VALUES
	(4, 'test1', '1', '1', 1),
	(5, 'test2', '2', '2', 2),
	(6, 'test3', '3', '3', 3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.user_contact
CREATE TABLE IF NOT EXISTS `user_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.user_contact: ~42 rows (approximately)
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
REPLACE INTO `user_contact` (`id`, `name`, `email`, `message`) VALUES
	(1, 'test1', 'test1@qq.com', 'test1'),
	(2, 'test2', 'test2@qq.com', 'test2'),
	(3, 'test3', 'test3@qq.com', 'test3'),
	(4, 'test4', 'test4@qq.com', 'test4'),
	(5, 'sdfsdf', '474613770@qq.com', 'sdfsf'),
	(6, 'sdfsdf', 'test5@qq.com', 'sdfsdf'),
	(7, 'sdfsdf', 'testsdfsdf@qq.com', 'sdfsdf'),
	(8, 'sdfsdf', 'rfdf@qq.com', 'sdfsdf'),
	(9, 'sdfsdf', '474s3770@qq.com', 'sdfsdf'),
	(10, 'dfdfdf', '4sdfsdf3770@qq.com', 'sdfsdf'),
	(11, 'xvfsdfsd', '47sdfsdf70@qq.com', 'sdfsdf'),
	(12, 'sdfsdf', '4sdfsdfsdf770@qq.com', 'sdfsdf'),
	(13, 'sdfsdf', 'sdfsdfsdff770@qq.com', 'sdfsdf'),
	(14, 'asdasd', 'sdfssdfffffffff770@qq.com', 'sdfsdf'),
	(15, 'sdfsdf', 'test11@qq.com', 'asdas'),
	(16, 'dfsdfsf', 'sdfsdfsdfsd4@ww.com', 'dsfsdfsdf'),
	(17, 'sdasdas', 'dddddd@qq.com', 'dfdfdf'),
	(18, 'sdsad', 'sssssssa@qq.com', 'ddddddd'),
	(19, 'sdfsdfsd', 'dddddfdfdf@qq.com', 'dfsdffffffff'),
	(20, 'sdfsdf', 'ssdfsdfddddddd4@ww.com', 'dfdf'),
	(21, 'sdfsdfsdf', 'sdfsdf@qq.com', 'sdfdsf'),
	(22, 'sdfsdf', '474sdfdff613770@qq.com', 'ddd'),
	(23, 'sdfsd', 'sdffffdfsdf@qq.com', 'sdfdf'),
	(24, 'asdasd', '47461sdfsd770@qq.com', 'ss'),
	(25, 'sdasd', 'asdssssdfsdf@qq.com', 'ss'),
	(26, 'dsfsdf', '47sdfsdfd3770@qq.com', 'sdfd'),
	(27, 'dsfsdf', '474ssss770@qq.com', 'sdfd'),
	(28, 'asdsd', '47461sssdsdsdasd3770@qq.com', 'asds'),
	(29, 'asdsd', 'sdsdsda770@qq.com', 'sss'),
	(30, 'sdfsdf', 'sss70@qq.com', 'ss'),
	(31, 'sdfsdf', '47sdfdddd3770@qq.com', 'ddd'),
	(32, 'sdfdf', 'ddddsdfdffdf@qq.com', 'sdf'),
	(33, 'asdasd', 'ddfsdfdddf@qq.com', 'dfdfdf'),
	(34, 'adadasd', 'd13770@qq.com', 'aasdasd'),
	(35, '?', '47dd13770@qq.com', 'dd'),
	(36, 'sdadasd', '4746asdssd70@qq.com', 'asdas'),
	(37, '???', '47asdsdw613770@qq.com', '????'),
	(38, 'sda?', 'teasdddsdfsdf@qq.com', 'asdad????'),
	(39, '陈浩贤', 'dfsdfsd@qq.com', '哈哈哈哈'),
	(40, '????', '47sf13770@qq.com', 'dd??'),
	(41, '??', '47ddf3770@qq.com', '????'),
	(42, '颠倒是非', '47dfdf3770@qq.com', 'sdf辅导费');
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
