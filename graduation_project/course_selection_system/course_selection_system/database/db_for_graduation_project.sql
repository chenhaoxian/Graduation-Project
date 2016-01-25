# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.16
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2016-01-25 17:07:09
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for db_course_selection_system
DROP DATABASE IF EXISTS `db_course_selection_system`;
CREATE DATABASE IF NOT EXISTS `db_course_selection_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_course_selection_system`;


# Dumping structure for table db_course_selection_system.admin
DROP TABLE IF EXISTS `admin`;
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
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cno` varchar(20) DEFAULT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `ctype` varchar(50) DEFAULT NULL,
  `ctime` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `tno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cno` (`cno`),
  KEY `fk_course_teacher` (`tno`),
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`tno`) REFERENCES `teacher` (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.course: ~5 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
REPLACE INTO `course` (`id`, `cno`, `cname`, `ctype`, `ctime`, `credit`, `total`, `margin`, `tno`) VALUES
	(1, 'TX1', '通选课1', '自然科学', '周一 8:00--9:30', 2, 50, 0, '1'),
	(2, 'TX2', '通选课2', '自然科学', '周二 8:00--9:30', 2, 50, 0, '1'),
	(3, 'TX3', '通选课3', '自然科学', '周三 8:00--9:30', 2, 50, 0, '1'),
	(4, 'TX4', '通选课4', '自然科学', '周四 8:00--9:30', 2, 50, 0, '1'),
	(5, 'TX5', '通选课5', '自然科学', '周五 8:00--9:30', 2, 50, 0, '1');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.coursetongxuan
DROP TABLE IF EXISTS `coursetongxuan`;
CREATE TABLE IF NOT EXISTS `coursetongxuan` (
  `id` int(11) NOT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `ctype` varchar(50) DEFAULT NULL,
  `ctime` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `tno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cno` (`cno`),
  KEY `tno` (`tno`),
  CONSTRAINT `coursetongxuan_ibfk_1` FOREIGN KEY (`tno`) REFERENCES `teacher` (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.coursetongxuan: ~6 rows (approximately)
/*!40000 ALTER TABLE `coursetongxuan` DISABLE KEYS */;
REPLACE INTO `coursetongxuan` (`id`, `cno`, `cname`, `ctype`, `ctime`, `credit`, `total`, `margin`, `tno`) VALUES
	(0, 'TX6', '通选课6', '自然科学', '周一 10:00--11:30', 2, 50, 0, '1'),
	(1, 'TX1', '通选课1', '自然科学', '周一 8:00--9:30', 2, 50, 0, '1'),
	(2, 'TX2', '通选课2', '自然科学', '周二 8:00--9:30', 2, 50, 0, '1'),
	(3, 'TX3', '通选课3', '自然科学', '周三 8:00--9:30', 2, 50, 0, '1'),
	(4, 'TX4', '通选课4', '自然科学', '周四 8:00--9:30', 2, 50, 0, '1'),
	(5, 'TX5', '通选课5', '自然科学', '周五 8:00--9:30', 2, 50, 0, '1');
/*!40000 ALTER TABLE `coursetongxuan` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.credit
DROP TABLE IF EXISTS `credit`;
CREATE TABLE IF NOT EXISTS `credit` (
  `required` int(11) DEFAULT NULL,
  `selected` int(11) DEFAULT NULL,
  `common` int(11) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL,
  KEY `fk_credit_student` (`sno`),
  CONSTRAINT `fk_credit_student` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.credit: ~1 rows (approximately)
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
REPLACE INTO `credit` (`required`, `selected`, `common`, `sno`) VALUES
	(4, 2, 2, '1');
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.department
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `departmentNo` varchar(20) NOT NULL,
  `departmentName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`departmentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.department: ~1 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
REPLACE INTO `department` (`departmentNo`, `departmentName`) VALUES
	('1', '计算机学院');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.profession
DROP TABLE IF EXISTS `profession`;
CREATE TABLE IF NOT EXISTS `profession` (
  `professionName` varchar(50) DEFAULT NULL,
  `professionNo` varchar(20) NOT NULL,
  `departmentNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`professionNo`),
  KEY `fk_profession_departmentNo` (`departmentNo`),
  CONSTRAINT `fk_profession_departmentNo` FOREIGN KEY (`departmentNo`) REFERENCES `department` (`departmentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.profession: ~1 rows (approximately)
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
REPLACE INTO `profession` (`professionName`, `professionNo`, `departmentNo`) VALUES
	('软件工程', '1', '1');
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.selectcourse
DROP TABLE IF EXISTS `selectcourse`;
CREATE TABLE IF NOT EXISTS `selectcourse` (
  `cno` varchar(20) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.selectcourse: ~0 rows (approximately)
/*!40000 ALTER TABLE `selectcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `selectcourse` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.student
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `professionno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sno` (`sno`),
  KEY `fk_student_professionNo` (`professionno`),
  CONSTRAINT `fk_student_professionNo` FOREIGN KEY (`professionno`) REFERENCES `profession` (`professionNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.student: ~1 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`id`, `sname`, `sno`, `grade`, `password`, `usertype`, `professionno`) VALUES
	(1, 'student1', '1', 1, '123', '1', '1');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.teacher
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) DEFAULT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `departmentNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tno` (`tno`),
  KEY `fk_teacher_department` (`departmentNo`),
  CONSTRAINT `fk_teacher_department` FOREIGN KEY (`departmentNo`) REFERENCES `department` (`departmentNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.teacher: ~1 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
REPLACE INTO `teacher` (`id`, `tno`, `tname`, `password`, `departmentNo`) VALUES
	(1, '1', 'teacher1', '123', '1');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


# Dumping structure for table db_course_selection_system.user
DROP TABLE IF EXISTS `user`;
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
DROP TABLE IF EXISTS `user_contact`;
CREATE TABLE IF NOT EXISTS `user_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

# Dumping data for table db_course_selection_system.user_contact: ~43 rows (approximately)
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
	(42, '颠倒是非', '47dfdf3770@qq.com', 'sdf辅导费'),
	(43, 'ss', 'sdfsdfssdff770@qq.com', 'sss');
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
