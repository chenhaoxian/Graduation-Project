/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : db_course_selection_system

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2016-02-03 16:19:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aid` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '123', 'admin1', '3');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
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

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'TX1', '通选课1', '自然科学', '周一 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `course` VALUES ('2', 'TX2', '通选课2', '自然科学', '周二 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `course` VALUES ('3', 'TX3', '通选课3', '自然科学', '周三 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `course` VALUES ('4', 'TX4', '通选课4', '自然科学', '周四 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `course` VALUES ('5', 'TX5', '通选课5', '自然科学', '周五 8:00--9:30', '2', '50', '0', '1');

-- ----------------------------
-- Table structure for coursetongxuan
-- ----------------------------
DROP TABLE IF EXISTS `coursetongxuan`;
CREATE TABLE `coursetongxuan` (
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

-- ----------------------------
-- Records of coursetongxuan
-- ----------------------------
INSERT INTO `coursetongxuan` VALUES ('0', 'TX6', '通选课6', '自然科学', '周一 10:00--11:30', '2', '50', '0', '1');
INSERT INTO `coursetongxuan` VALUES ('1', 'TX1', '通选课1', '自然科学', '周一 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `coursetongxuan` VALUES ('2', 'TX2', '通选课2', '自然科学', '周二 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `coursetongxuan` VALUES ('3', 'TX3', '通选课3', '自然科学', '周三 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `coursetongxuan` VALUES ('4', 'TX4', '通选课4', '自然科学', '周四 8:00--9:30', '2', '50', '0', '1');
INSERT INTO `coursetongxuan` VALUES ('5', 'TX5', '通选课5', '自然科学', '周五 8:00--9:30', '2', '50', '0', '1');

-- ----------------------------
-- Table structure for credit
-- ----------------------------
DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit` (
  `required` int(11) DEFAULT NULL,
  `selected` int(11) DEFAULT NULL,
  `common` int(11) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL,
  KEY `fk_credit_student` (`sno`),
  CONSTRAINT `fk_credit_student` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of credit
-- ----------------------------
INSERT INTO `credit` VALUES ('4', '2', '2', '1');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentNo` varchar(20) NOT NULL,
  `departmentName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`departmentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '计算机学院');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `professionName` varchar(50) DEFAULT NULL,
  `professionNo` varchar(20) NOT NULL,
  `departmentNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`professionNo`),
  KEY `fk_profession_departmentNo` (`departmentNo`),
  CONSTRAINT `fk_profession_departmentNo` FOREIGN KEY (`departmentNo`) REFERENCES `department` (`departmentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('软件工程', '1', '1');
INSERT INTO `profession` VALUES ('计算机科学与技术', '2', '1');

-- ----------------------------
-- Table structure for selectcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectcourse`;
CREATE TABLE `selectcourse` (
  `cno` varchar(20) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectcourse
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
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

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'student1', '1', '1', '123', '1', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tno` varchar(30) DEFAULT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `departmentNo` varchar(20) DEFAULT NULL,
  UNIQUE KEY `tno` (`tno`),
  KEY `fk_teacher_department` (`departmentNo`),
  CONSTRAINT `fk_teacher_department` FOREIGN KEY (`departmentNo`) REFERENCES `department` (`departmentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'teacher1', '123', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'test1', '1', '1', '1');
INSERT INTO `user` VALUES ('5', 'test2', '2', '2', '2');
INSERT INTO `user` VALUES ('6', 'test3', '3', '3', '3');

-- ----------------------------
-- Table structure for user_contact
-- ----------------------------
DROP TABLE IF EXISTS `user_contact`;
CREATE TABLE `user_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_contact
-- ----------------------------
INSERT INTO `user_contact` VALUES ('1', 'test1', 'test1@qq.com', 'test1');
INSERT INTO `user_contact` VALUES ('2', 'test2', 'test2@qq.com', 'test2');
INSERT INTO `user_contact` VALUES ('3', 'test3', 'test3@qq.com', 'test3');
INSERT INTO `user_contact` VALUES ('4', 'test4', 'test4@qq.com', 'test4');
INSERT INTO `user_contact` VALUES ('5', 'sdfsdf', '474613770@qq.com', 'sdfsf');
INSERT INTO `user_contact` VALUES ('6', 'sdfsdf', 'test5@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('7', 'sdfsdf', 'testsdfsdf@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('8', 'sdfsdf', 'rfdf@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('9', 'sdfsdf', '474s3770@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('10', 'dfdfdf', '4sdfsdf3770@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('11', 'xvfsdfsd', '47sdfsdf70@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('12', 'sdfsdf', '4sdfsdfsdf770@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('13', 'sdfsdf', 'sdfsdfsdff770@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('14', 'asdasd', 'sdfssdfffffffff770@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('15', 'sdfsdf', 'test11@qq.com', 'asdas');
INSERT INTO `user_contact` VALUES ('16', 'dfsdfsf', 'sdfsdfsdfsd4@ww.com', 'dsfsdfsdf');
INSERT INTO `user_contact` VALUES ('17', 'sdasdas', 'dddddd@qq.com', 'dfdfdf');
INSERT INTO `user_contact` VALUES ('18', 'sdsad', 'sssssssa@qq.com', 'ddddddd');
INSERT INTO `user_contact` VALUES ('19', 'sdfsdfsd', 'dddddfdfdf@qq.com', 'dfsdffffffff');
INSERT INTO `user_contact` VALUES ('20', 'sdfsdf', 'ssdfsdfddddddd4@ww.com', 'dfdf');
INSERT INTO `user_contact` VALUES ('21', 'sdfsdfsdf', 'sdfsdf@qq.com', 'sdfdsf');
INSERT INTO `user_contact` VALUES ('22', 'sdfsdf', '474sdfdff613770@qq.com', 'ddd');
INSERT INTO `user_contact` VALUES ('23', 'sdfsd', 'sdffffdfsdf@qq.com', 'sdfdf');
INSERT INTO `user_contact` VALUES ('24', 'asdasd', '47461sdfsd770@qq.com', 'ss');
INSERT INTO `user_contact` VALUES ('25', 'sdasd', 'asdssssdfsdf@qq.com', 'ss');
INSERT INTO `user_contact` VALUES ('26', 'dsfsdf', '47sdfsdfd3770@qq.com', 'sdfd');
INSERT INTO `user_contact` VALUES ('27', 'dsfsdf', '474ssss770@qq.com', 'sdfd');
INSERT INTO `user_contact` VALUES ('28', 'asdsd', '47461sssdsdsdasd3770@qq.com', 'asds');
INSERT INTO `user_contact` VALUES ('29', 'asdsd', 'sdsdsda770@qq.com', 'sss');
INSERT INTO `user_contact` VALUES ('30', 'sdfsdf', 'sss70@qq.com', 'ss');
INSERT INTO `user_contact` VALUES ('31', 'sdfsdf', '47sdfdddd3770@qq.com', 'ddd');
INSERT INTO `user_contact` VALUES ('32', 'sdfdf', 'ddddsdfdffdf@qq.com', 'sdf');
INSERT INTO `user_contact` VALUES ('33', 'asdasd', 'ddfsdfdddf@qq.com', 'dfdfdf');
INSERT INTO `user_contact` VALUES ('34', 'adadasd', 'd13770@qq.com', 'aasdasd');
INSERT INTO `user_contact` VALUES ('35', '?', '47dd13770@qq.com', 'dd');
INSERT INTO `user_contact` VALUES ('36', 'sdadasd', '4746asdssd70@qq.com', 'asdas');
INSERT INTO `user_contact` VALUES ('37', '???', '47asdsdw613770@qq.com', '????');
INSERT INTO `user_contact` VALUES ('38', 'sda?', 'teasdddsdfsdf@qq.com', 'asdad????');
INSERT INTO `user_contact` VALUES ('39', '陈浩贤', 'dfsdfsd@qq.com', '哈哈哈哈');
INSERT INTO `user_contact` VALUES ('40', '????', '47sf13770@qq.com', 'dd??');
INSERT INTO `user_contact` VALUES ('41', '??', '47ddf3770@qq.com', '????');
INSERT INTO `user_contact` VALUES ('42', '颠倒是非', '47dfdf3770@qq.com', 'sdf辅导费');
INSERT INTO `user_contact` VALUES ('43', 'ss', 'sdfsdfssdff770@qq.com', 'sss');

-- ----------------------------
-- Procedure structure for pro_countTableRows
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_countTableRows`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_countTableRows`(IN `p_tablename` VARCHAR(50))
BEGIN
declare v_tablename varchar(50);
set v_tablename = concat('select count(1) from ',p_tablename);
set @v_tablename = v_tablename;
prepare stmt from @v_tablename;
execute stmt;
deallocate prepare stmt;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_findTeacherByTno
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_findTeacherByTno`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_findTeacherByTno`(in p_tno varchar(50) )
BEGIN
select * from teacher where tno = p_tno;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_getTable
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_getTable`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_getTable`(IN `p_tablename` VARCHAR(50))
BEGIN
declare v_tablename varchar(50);
set v_tablename = concat('select * from ',P_tablename);
set @v_tablename=v_tablename;
prepare stmt from @v_tablename;
EXECUTE stmt ;
deallocate prepare stmt;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_test`(IN `P_tablename` VARCHAR(50))
BEGIN
declare v_tablename varchar(50);
set v_tablename = concat('select * from ',P_tablename);
set @v_tablename=v_tablename;
prepare stmt from @v_tablename;
EXECUTE stmt ;
deallocate prepare stmt;
END
;;
DELIMITER ;
