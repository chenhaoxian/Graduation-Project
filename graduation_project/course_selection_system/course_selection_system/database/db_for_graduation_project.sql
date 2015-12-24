# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.16
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2015-12-24 14:45:20
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for db_course_selection_system
CREATE DATABASE IF NOT EXISTS `db_course_selection_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_course_selection_system`;


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
