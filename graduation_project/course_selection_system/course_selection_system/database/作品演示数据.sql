/*
Navicat MySQL Data Transfer

Source Server         : hymanServiceDB
Source Server Version : 50712
Source Host           : 119.29.226.226:3306
Source Database       : db_course_selection_system

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-20 09:05:08
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '123', 'admin1', '3');
INSERT INTO `admin` VALUES ('2', '1202020241016', '123', '陈浩贤', null);
INSERT INTO `admin` VALUES ('3', '120202041016', '123', '陈浩贤', null);

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
  KEY `fk_course_teacher` (`tno`)
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
  `cno` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `ctype` varchar(50) DEFAULT NULL,
  `ctime` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `tno` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cno` (`cno`),
  KEY `tno` (`tno`),
  CONSTRAINT `coursetongxuan_ibfk_1` FOREIGN KEY (`tno`) REFERENCES `teacher` (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursetongxuan
-- ----------------------------
INSERT INTO `coursetongxuan` VALUES ('1111111', '计算机基础', '自然科学', '周一 10:00--11:30', '2', '50', '3', '4', '42');
INSERT INTO `coursetongxuan` VALUES ('1111112', '程序设计基础（C）', '自然科学', '周一 10:00--11:30', '2', '50', '3', '10', '43');
INSERT INTO `coursetongxuan` VALUES ('1111113', '计算机网络', '自然科学', '周二 10:00--11:30', '2', '50', '4', '16', '44');
INSERT INTO `coursetongxuan` VALUES ('1111114', 'Java程序设计', '自然科学', '周一 10:00--11:30', '2', '50', '4', '22', '45');
INSERT INTO `coursetongxuan` VALUES ('1111116', 'C++程序设计', '自然科学', '周一 10:00--11:30', '2', '50', '3', '28', '47');
INSERT INTO `coursetongxuan` VALUES ('1111118', '数据结构', '自然科学', '周二 10:00--11:30', '2', '50', '3', '4', '49');
INSERT INTO `coursetongxuan` VALUES ('2222221', '中国近代史', '自然科学', '周一 10:00--11:30', '2', '50', '4', '9', '50');
INSERT INTO `coursetongxuan` VALUES ('2222222', '毛泽东思想', '人文地理', '周四 10:00--11:30', '2', '50', '3', '45', '51');
INSERT INTO `coursetongxuan` VALUES ('2222223', '马克思主义概论', '人文地理', '周五 10:00--11:30', '2', '50', '3', '51', '52');
INSERT INTO `coursetongxuan` VALUES ('1111117', '算法设计与分析', '自然科学', '周一 10:00--11:30', '2', '50', '1', '123456', '55');
INSERT INTO `coursetongxuan` VALUES ('1111115', 'C#程序设计', '自然科学', '周二 10:00--11:30', '2', '50', '4', '123456', '56');

-- ----------------------------
-- Table structure for credit
-- ----------------------------
DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit` (
  `selected` int(11) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL,
  `success` int(11) DEFAULT '0',
  KEY `fk_credit_student` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of credit
-- ----------------------------
INSERT INTO `credit` VALUES (null, '1', '2');

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
INSERT INTO `department` VALUES ('2', '外国语学院');
INSERT INTO `department` VALUES ('3', '艺术学院');
INSERT INTO `department` VALUES ('4', '机车学院');
INSERT INTO `department` VALUES ('5', '数理学院');
INSERT INTO `department` VALUES ('6', '思政部');

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
INSERT INTO `profession` VALUES ('经济学', '10', '6');
INSERT INTO `profession` VALUES ('国际贸易', '11', '6');
INSERT INTO `profession` VALUES ('计算机科学与技术', '2', '1');
INSERT INTO `profession` VALUES ('服装设计', '3', '3');
INSERT INTO `profession` VALUES ('日语', '4', '2');
INSERT INTO `profession` VALUES ('机车专业1', '5', '4');
INSERT INTO `profession` VALUES ('物理专业', '6', '5');
INSERT INTO `profession` VALUES ('数学专业', '7', '5');
INSERT INTO `profession` VALUES ('会计', '8', '6');
INSERT INTO `profession` VALUES ('金融学', '9', '6');

-- ----------------------------
-- Table structure for selectcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectcourse`;
CREATE TABLE `selectcourse` (
  `cno` varchar(20) DEFAULT NULL,
  `sno` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  KEY `fk_selectcourse_coursetongxuan` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectcourse
-- ----------------------------
INSERT INTO `selectcourse` VALUES ('TX1', '2543', '在修');
INSERT INTO `selectcourse` VALUES ('TX2', '2543', '在修');
INSERT INTO `selectcourse` VALUES ('TX3', '2543', '在修');
INSERT INTO `selectcourse` VALUES ('TX4', '2543', '在修');
INSERT INTO `selectcourse` VALUES ('TX5', '2543', '在修');
INSERT INTO `selectcourse` VALUES ('TX6', '2543', '在修');
INSERT INTO `selectcourse` VALUES ('TX4', '5342', '在修');
INSERT INTO `selectcourse` VALUES ('TX2', '5342', '在修');
INSERT INTO `selectcourse` VALUES ('TX5', '5342', '在修');
INSERT INTO `selectcourse` VALUES ('TX3', '5342', '在修');
INSERT INTO `selectcourse` VALUES ('TX1', '5342', '在修');
INSERT INTO `selectcourse` VALUES ('TX1', '5311', '在修');
INSERT INTO `selectcourse` VALUES ('TX2', '5311', '在修');
INSERT INTO `selectcourse` VALUES ('TX3', '5311', '在修');
INSERT INTO `selectcourse` VALUES ('TX4', '5311', '在修');
INSERT INTO `selectcourse` VALUES ('1111115', '120202041016', '在修');
INSERT INTO `selectcourse` VALUES ('1111116', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111118', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('2222221', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('2222222', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111111', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111112', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111113', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111114', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111115', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('2222223', '120202041039', '在修');
INSERT INTO `selectcourse` VALUES ('1111111', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111112', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111113', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111114', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111115', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('2222223', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111116', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111118', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('2222221', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('2222221', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('2222222', '120202041001', '在修');
INSERT INTO `selectcourse` VALUES ('1111111', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111112', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111113', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111114', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111115', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('2222223', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111116', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111118', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('2222221', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('2222222', '120202041018', '在修');
INSERT INTO `selectcourse` VALUES ('1111117', '120202041016', '在修');
INSERT INTO `selectcourse` VALUES ('1111113', '120202041016', '在修');
INSERT INTO `selectcourse` VALUES ('1111114', '120202041016', '在修');

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
) ENGINE=InnoDB AUTO_INCREMENT=9035 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('9028', '陈浩贤', '120202041016', '1', '123', null, '1');
INSERT INTO `student` VALUES ('9029', '刘硕晋', '120202041039', '1', '123', null, '1');
INSERT INTO `student` VALUES ('9030', '赖永焜', '120202041018', '1', '123', null, '1');
INSERT INTO `student` VALUES ('9031', '王明', '120202041001', '1', '123', null, '1');
INSERT INTO `student` VALUES ('9032', '黄隆昌', '110202041016', '2', '123', null, '1');
INSERT INTO `student` VALUES ('9033', '王志鹏', '110202041039', '2', '123', null, '1');
INSERT INTO `student` VALUES ('9034', '陈红', '100202041018', '3', '123', null, '1');

-- ----------------------------
-- Table structure for table_test
-- ----------------------------
DROP TABLE IF EXISTS `table_test`;
CREATE TABLE `table_test` (
  `COLUMN_int` int(11) DEFAULT NULL,
  `COLUMN_varchar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_test
-- ----------------------------

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
INSERT INTO `teacher` VALUES ('4', '陈维红', '123', '1');
INSERT INTO `teacher` VALUES ('5', '陈志霞', '123', '2');
INSERT INTO `teacher` VALUES ('9', '陈妍郡', '123', '6');
INSERT INTO `teacher` VALUES ('10', '陈艳妍', '123', '1');
INSERT INTO `teacher` VALUES ('11', '陈妍艳', '123', '2');
INSERT INTO `teacher` VALUES ('12', '陈妍飞', '123', '3');
INSERT INTO `teacher` VALUES ('13', '陈妍菲', '123', '4');
INSERT INTO `teacher` VALUES ('14', '陈妍霏', '123', '5');
INSERT INTO `teacher` VALUES ('15', '陈桐文', '123', '6');
INSERT INTO `teacher` VALUES ('16', '陈芬英', '123', '1');
INSERT INTO `teacher` VALUES ('17', '陈明艳', '123', '2');
INSERT INTO `teacher` VALUES ('18', '陈虹颖', '123', '3');
INSERT INTO `teacher` VALUES ('19', '陈银霞', '123', '4');
INSERT INTO `teacher` VALUES ('20', '陈丹玲', '123', '5');
INSERT INTO `teacher` VALUES ('21', '陈碧琴', '123', '6');
INSERT INTO `teacher` VALUES ('22', '陈宇芬', '123', '1');
INSERT INTO `teacher` VALUES ('23', '陈香蓉', '123', '2');
INSERT INTO `teacher` VALUES ('24', '陈银娜', '123', '3');
INSERT INTO `teacher` VALUES ('25', '陈湘莹', '123', '4');
INSERT INTO `teacher` VALUES ('26', '陈晖莹', '123', '5');
INSERT INTO `teacher` VALUES ('27', '陈立颖', '123', '6');
INSERT INTO `teacher` VALUES ('28', '陈泓怡', '123', '1');
INSERT INTO `teacher` VALUES ('29', '陈爱英', '123', '2');
INSERT INTO `teacher` VALUES ('30', '陈虞莹', '123', '3');
INSERT INTO `teacher` VALUES ('31', '陈脘莹', '123', '4');
INSERT INTO `teacher` VALUES ('32', '陈睦莹', '123', '5');
INSERT INTO `teacher` VALUES ('33', '陈暮莹', '123', '6');
INSERT INTO `teacher` VALUES ('34', '陈宁颖', '123', '1');
INSERT INTO `teacher` VALUES ('35', '陈焕莹', '123', '2');
INSERT INTO `teacher` VALUES ('36', '陈韵怡', '123', '3');
INSERT INTO `teacher` VALUES ('37', '陈熳琳', '123', '4');
INSERT INTO `teacher` VALUES ('38', '陈丽琳', '123', '5');
INSERT INTO `teacher` VALUES ('39', '陈艳琼', '123', '6');
INSERT INTO `teacher` VALUES ('40', '张伟', '123', '1');
INSERT INTO `teacher` VALUES ('41', '王伟', '123', '2');
INSERT INTO `teacher` VALUES ('42', '王芳', '123', '3');
INSERT INTO `teacher` VALUES ('43', '李伟', '123', '4');
INSERT INTO `teacher` VALUES ('44', '李娜', '123', '5');
INSERT INTO `teacher` VALUES ('45', '张敏', '123', '6');
INSERT INTO `teacher` VALUES ('46', '李静', '123', '1');
INSERT INTO `teacher` VALUES ('47', '王静刘伟', '123', '2');
INSERT INTO `teacher` VALUES ('48', '王秀英', '123', '3');
INSERT INTO `teacher` VALUES ('49', '陈红', '123', '4');
INSERT INTO `teacher` VALUES ('50', '王莹', '123', '5');
INSERT INTO `teacher` VALUES ('51', '陈兆颖', '123', '6');
INSERT INTO `teacher` VALUES ('52', '陈欣瑶', '123', '1');
INSERT INTO `teacher` VALUES ('123456', '周天剑', '123', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

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
INSERT INTO `user_contact` VALUES ('44', 'sdfsdf', '47461ddd70@qq.com', 'sdfsdf');
INSERT INTO `user_contact` VALUES ('45', '是对方身份', '474打点滴770@qq.com', '水电费水电费');

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
-- Procedure structure for pro_deleteStudentByAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_deleteStudentByAdmin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_deleteStudentByAdmin`(in p_sno varchar(30))
BEGIN	
	declare t_error integer default 0;
	declare continue handler for sqlexception set t_error = 1;
	
	start transaction;
		delete from student where sno = p_sno;
		delete from selectcourse where sno = p_sno;
	
	if t_error = 1 THEN
		rollback;
	ELSE		
		commit;
	end if;
	
	select t_error;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_deleteTeacherByAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_deleteTeacherByAdmin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_deleteTeacherByAdmin`(in p_tno varchar(30))
BEGIN	
	declare t_error integer default 0;
	declare continue handler for sqlexception set t_error = 1;
	
	start transaction;
		delete from coursetongxuan where tno = p_tno;
		delete from teacher where tno = p_tno;
-- 		delete from selectcourse where cno in (
-- 			select cno from coursetongxuan where tno = p_tno
-- 		);
		
	
	if t_error = 1 THEN
		rollback;
	ELSE		
		commit;
	end if;
	
	select t_error;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_findTeacherByTno
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_findTeacherByTno`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_findTeacherByTno`(in p_tno varchar(30))
BEGIN
	select t.* ,d.departmentname
	from teacher t
	LEFT JOIN department d on t.departmentNo=d.departmentNo
	where t.tno = p_tno;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_getSelectCourse
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_getSelectCourse`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_getSelectCourse`(in p_sno varchar(50))
BEGIN
select s.* , c.cname,c.ctime,t.tname
from selectcourse s
LEFT JOIN coursetongxuan c on s.cno = c.cno
LEFT JOIN teacher t on c.tno = t.tno
where s.sno = p_sno
ORDER BY s.status;
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

-- ----------------------------
-- Procedure structure for pro_update_credit
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_update_credit`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_update_credit`(in p_sno varchar(30),in p_credit int)
BEGIN
update credit set selected = selected - p_credit where sno = p_sno;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_countCourseRecordBySno
-- ----------------------------
DROP FUNCTION IF EXISTS `func_countCourseRecordBySno`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_countCourseRecordBySno`(p_sno varchar(30)) RETURNS int(11)
BEGIN
declare temp int;
select count(1) into temp from coursetongxuan 
	where cno not in
	(
		select cno from selectcourse where sno = P_Sno
	);
return temp;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_find_credit_by_cno
-- ----------------------------
DROP FUNCTION IF EXISTS `func_find_credit_by_cno`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_find_credit_by_cno`(p_cno varchar(30)) RETURNS int(11)
BEGIN
declare temp int ;
select credit into temp from coursetongxuan where cno = p_cno;
RETURN temp;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_test
-- ----------------------------
DROP FUNCTION IF EXISTS `func_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_test`(p_test varchar(30)) RETURNS int(11)
BEGIN
declare temp int;
select credit into temp from coursetongxuan where cno = p_test;
return temp;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_insert_selectcourse`;
DELIMITER ;;
CREATE TRIGGER `tri_insert_selectcourse` AFTER INSERT ON `selectcourse` FOR EACH ROW BEGIN
declare v_credit int ;
set v_credit = 0-func_find_credit_by_cno(new.cno);
call pro_update_credit(new.sno,v_credit);

update coursetongxuan 
set margin = margin + 1
where cno = new.cno;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_delete_selectcourse`;
DELIMITER ;;
CREATE TRIGGER `tri_delete_selectcourse` AFTER DELETE ON `selectcourse` FOR EACH ROW BEGIN
declare v_credit int ;

set v_credit = func_find_credit_by_cno(old.cno);

call pro_update_credit(old.sno,v_credit);

update coursetongxuan set margin = margin - 1
where cno = old.cno;

end
;;
DELIMITER ;
