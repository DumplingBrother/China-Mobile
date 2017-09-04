/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : mobile

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-08-29 17:23:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEL_NUMBER` varchar(11) DEFAULT NULL,
  `ACCOUNT_BALANCE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  KEY `fk_t_account_t_mobile` (`TEL_NUMBER`),
  CONSTRAINT `fk_t_account_t_mobile` FOREIGN KEY (`TEL_NUMBER`) REFERENCES `t_mobile` (`TEL_NUMB`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1081 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('2', '13023565305', '2707');
INSERT INTO `t_account` VALUES ('1002', '13456375432', '1473');
INSERT INTO `t_account` VALUES ('1020', '13775357811', '50');
INSERT INTO `t_account` VALUES ('1040', '13775357881', '260');
INSERT INTO `t_account` VALUES ('1060', '13452217743', '300');
INSERT INTO `t_account` VALUES ('1061', '15329138121', '100');
INSERT INTO `t_account` VALUES ('1062', '18851317743', '100');
INSERT INTO `t_account` VALUES ('1063', '15815317743', '200');
INSERT INTO `t_account` VALUES ('1080', '13213213211', '100');

-- ----------------------------
-- Table structure for t_business_fee
-- ----------------------------
DROP TABLE IF EXISTS `t_business_fee`;
CREATE TABLE `t_business_fee` (
  `BUSINESS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUSINESS_NAME` varchar(20) DEFAULT NULL,
  `SHORT_NAME` varchar(20) DEFAULT NULL,
  `BUSINESS_CHARGE` int(11) DEFAULT NULL,
  `IS_OPTIONAL` char(1) DEFAULT NULL,
  `IS_LARGESS` char(1) DEFAULT NULL,
  `EFFECTIVE_TIME` int(1) DEFAULT NULL,
  `END_TIME` int(2) DEFAULT NULL,
  PRIMARY KEY (`BUSINESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_business_fee
-- ----------------------------
INSERT INTO `t_business_fee` VALUES ('1000', '国内数据流量10M', '10M', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1001', '国内数据流量30M', '30M', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1002', '国内数据流量60M', '60M', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1003', '国内数据流量100M', '100M', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1004', '国内数据流量250M', '250M', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1005', '国内数据流量700M', '700M', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1006', '国内数据流量1G', '1G', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1007', '国内数据流量2G', '2G', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1008', '国内通话时间30分钟', '30分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1009', '国内通话时间50分钟', '50分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1010', '国内通话时间80分钟', '80分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1011', '国内通话时间100分钟', '100分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1012', '国内通话时间150分钟', '150分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1013', '国内通话时间200分钟', '200分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1014', '国内通话时间300分钟', '300分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1015', '国内通话时间400分钟', '400分钟', '0', '0', '1', null, null);
INSERT INTO `t_business_fee` VALUES ('1016', '亲情号码', null, '1', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1017', '5元包30MB国内流量', null, '5', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1018', '10元包70MB国内流量', null, '10', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1019', '20元包150MB国内流量', null, '20', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1020', '来电显示', null, '0', '0', '0', null, null);
INSERT INTO `t_business_fee` VALUES ('1021', '短信功能', null, '0', '0', '0', null, null);
INSERT INTO `t_business_fee` VALUES ('1022', '呼叫转移', null, '0', '0', '0', null, null);
INSERT INTO `t_business_fee` VALUES ('1023', '数据功能', null, '0', '0', '0', null, null);
INSERT INTO `t_business_fee` VALUES ('1024', '彩铃', null, '5', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1025', '短信呼', null, '1', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1026', '两城一家', null, '2', '1', null, null, null);
INSERT INTO `t_business_fee` VALUES ('1027', '定向长途', null, '3', '1', null, null, null);

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_USERNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(20) DEFAULT NULL,
  `ID_CARD_NUMB` varchar(18) DEFAULT NULL,
  `TEL_NUMB` varchar(11) DEFAULT NULL,
  `CUSTOMER_BIRTHDAY` date DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(30) DEFAULT NULL,
  `CUSTOMER_PWD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `CUSTOMER_USERNAME` (`CUSTOMER_USERNAME`),
  KEY `fk_t_customer_t_mobile` (`TEL_NUMB`),
  CONSTRAINT `fk_t_customer_t_mobile` FOREIGN KEY (`TEL_NUMB`) REFERENCES `t_mobile` (`TEL_NUMB`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1083 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1004', '1213042022', '李四', '320923199411051216', '13023565305', '1990-11-05', null, '123');
INSERT INTO `t_customer` VALUES ('1021', '1213042021', '张三', '320923199411051211', '13456375432', '1990-11-01', null, '123');
INSERT INTO `t_customer` VALUES ('1060', '1213042023', '王五', '320923199411051216', '13775357811', '1990-11-05', null, '123');
INSERT INTO `t_customer` VALUES ('1080', '1213042024', '赵六', '320923199411051211', '15815317743', '1990-08-05', null, '123');
INSERT INTO `t_customer` VALUES ('1081', '1213042025', '三毛', '320923199411251211', '13452217743', '1990-01-01', null, '123');
INSERT INTO `t_customer` VALUES ('1082', '1213042026', '阿七', '320923189411051211', '15329138121', '1990-11-16', null, '123');

-- ----------------------------
-- Table structure for t_mobile
-- ----------------------------
DROP TABLE IF EXISTS `t_mobile`;
CREATE TABLE `t_mobile` (
  `TEL_NUMB` varchar(11) DEFAULT NULL,
  `TEL_TYPE` varchar(20) DEFAULT NULL,
  `TEL_ADD` varchar(20) DEFAULT NULL,
  `ACC_INIT_AMOUNT` int(11) DEFAULT NULL,
  `IS_SALE` char(1) DEFAULT NULL,
  KEY `TEL_NUMB` (`TEL_NUMB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mobile
-- ----------------------------
INSERT INTO `t_mobile` VALUES ('13213213211', '3G', '南通', '100', '1');
INSERT INTO `t_mobile` VALUES ('15768675464', 'GSM', '扬州', '600', '0');
INSERT INTO `t_mobile` VALUES ('18543534522', 'GSM', '扬州', '500', '0');
INSERT INTO `t_mobile` VALUES ('13456546234', '3G', '扬州', '400', '0');
INSERT INTO `t_mobile` VALUES ('15896743544', '3G', '扬州', '300', '0');
INSERT INTO `t_mobile` VALUES ('18998754434', '3G', '扬州', '200', '0');
INSERT INTO `t_mobile` VALUES ('18756883461', '3G', '南京', '100', '0');
INSERT INTO `t_mobile` VALUES ('15672138903', '3G', '南京', '600', '0');
INSERT INTO `t_mobile` VALUES ('13923218751', '3G', '南京', '400', '0');
INSERT INTO `t_mobile` VALUES ('18232131217', 'GSM', '南京', '500', '0');
INSERT INTO `t_mobile` VALUES ('15195221721', 'GSM', '南京', '200', '0');
INSERT INTO `t_mobile` VALUES ('13165378453', 'GSM', '南京', '800', '0');
INSERT INTO `t_mobile` VALUES ('13165723476', '4G', '南京', '50', '0');
INSERT INTO `t_mobile` VALUES ('15412321126', '4G', '南京', '300', '0');
INSERT INTO `t_mobile` VALUES ('18306348423', '4G', '南京', '200', '0');
INSERT INTO `t_mobile` VALUES ('13154323123', 'GSM', '镇江', '100', '0');
INSERT INTO `t_mobile` VALUES ('15355388976', 'GSM', '镇江', '600', '0');
INSERT INTO `t_mobile` VALUES ('18756432342', 'GSM', '镇江', '800', '0');
INSERT INTO `t_mobile` VALUES ('13401728138', '3G', '镇江', '200', '0');
INSERT INTO `t_mobile` VALUES ('15479523412', '3G', '镇江', '400', '0');
INSERT INTO `t_mobile` VALUES ('18943265425', '3G', '镇江', '300', '0');
INSERT INTO `t_mobile` VALUES ('13234364522', '4G', '镇江', '50', '0');
INSERT INTO `t_mobile` VALUES ('15236765732', '4G', '镇江', '100', '0');
INSERT INTO `t_mobile` VALUES ('18323521351', '4G', '镇江', '500', '0');
INSERT INTO `t_mobile` VALUES ('13523213423', 'GSM', '常州', '800', '0');
INSERT INTO `t_mobile` VALUES ('18453421342', 'GSM', '常州', '600', '0');
INSERT INTO `t_mobile` VALUES ('15213657561', 'GSM', '常州', '400', '0');
INSERT INTO `t_mobile` VALUES ('13686743323', '3G', '常州', '100', '0');
INSERT INTO `t_mobile` VALUES ('18454351231', '3G', '常州', '200', '0');
INSERT INTO `t_mobile` VALUES ('15965435123', '3G', '常州', '50', '0');
INSERT INTO `t_mobile` VALUES ('15321657652', '4G', '常州', '300', '0');
INSERT INTO `t_mobile` VALUES ('18543512322', '4G', '常州', '500', '0');
INSERT INTO `t_mobile` VALUES ('13673242365', '4G', '常州', '300', '0');
INSERT INTO `t_mobile` VALUES ('13783218782', 'GSM', '无锡', '50', '0');
INSERT INTO `t_mobile` VALUES ('15894237812', 'GSM', '无锡', '100', '0');
INSERT INTO `t_mobile` VALUES ('18423489389', 'GSM', '无锡', '200', '0');
INSERT INTO `t_mobile` VALUES ('13793821232', '3G', '无锡', '300', '0');
INSERT INTO `t_mobile` VALUES ('15983213122', '3G', '无锡', '400', '0');
INSERT INTO `t_mobile` VALUES ('18675463242', '3G', '无锡', '500', '0');
INSERT INTO `t_mobile` VALUES ('18234232131', '4G', '无锡', '600', '0');
INSERT INTO `t_mobile` VALUES ('15895643532', '4G', '无锡', '800', '0');
INSERT INTO `t_mobile` VALUES ('13543523443', '4G', '无锡', '200', '0');
INSERT INTO `t_mobile` VALUES ('13321321561', 'GSM', '苏州', '100', '0');
INSERT INTO `t_mobile` VALUES ('15783242365', 'GSM', '苏州', '800', '0');
INSERT INTO `t_mobile` VALUES ('18435435323', 'GSM', '苏州', '600', '0');
INSERT INTO `t_mobile` VALUES ('18532478234', '3G', '苏州', '500', '0');
INSERT INTO `t_mobile` VALUES ('15732232334', '3G', '苏州', '400', '0');
INSERT INTO `t_mobile` VALUES ('13546543121', '3G', '苏州', '300', '0');
INSERT INTO `t_mobile` VALUES ('13787623432', '4G', '苏州', '200', '0');
INSERT INTO `t_mobile` VALUES ('18324324454', '4G', '苏州', '100', '0');
INSERT INTO `t_mobile` VALUES ('15312321354', '4G', '苏州', '50', '0');
INSERT INTO `t_mobile` VALUES ('13872132378', 'GSM', '南通', '50', '0');
INSERT INTO `t_mobile` VALUES ('15879435433', 'GSM', '南通', '800', '0');
INSERT INTO `t_mobile` VALUES ('18342312453', 'GSM', '南通', '100', '0');
INSERT INTO `t_mobile` VALUES ('13856548964', '3G', '南通', '200', '0');
INSERT INTO `t_mobile` VALUES ('15767435765', '3G', '南通', '400', '0');
INSERT INTO `t_mobile` VALUES ('18543567689', '3G', '南通', '300', '0');
INSERT INTO `t_mobile` VALUES ('13456544356', '4G', '南通', '500', '0');
INSERT INTO `t_mobile` VALUES ('15765765767', '4G', '南通', '600', '0');
INSERT INTO `t_mobile` VALUES ('18234342343', '4G', '南通', '300', '0');
INSERT INTO `t_mobile` VALUES ('13789732131', 'GSM', '泰州', '500', '0');
INSERT INTO `t_mobile` VALUES ('18532489322', 'GSM', '泰州', '400', '0');
INSERT INTO `t_mobile` VALUES ('15423657657', 'GSM', '泰州', '300', '0');
INSERT INTO `t_mobile` VALUES ('13678674343', '3G', '泰州', '800', '0');
INSERT INTO `t_mobile` VALUES ('15898795454', '3G', '泰州', '600', '0');
INSERT INTO `t_mobile` VALUES ('18543543523', '3G', '泰州', '200', '0');
INSERT INTO `t_mobile` VALUES ('13778745432', '4G', '泰州', '100', '0');
INSERT INTO `t_mobile` VALUES ('15835437837', '4G', '泰州', '50', '0');
INSERT INTO `t_mobile` VALUES ('18435438733', '4G', '泰州', '400', '0');
INSERT INTO `t_mobile` VALUES ('13987534343', 'GSM', '扬州', '800', '0');
INSERT INTO `t_mobile` VALUES ('13678676876', '4G', '扬州', '50', '0');
INSERT INTO `t_mobile` VALUES ('15768435443', '4G', '扬州', '100', '0');
INSERT INTO `t_mobile` VALUES ('18434324123', '4G', '扬州', '400', '0');
INSERT INTO `t_mobile` VALUES ('13786748323', 'GSM', '宿迁', '50', '0');
INSERT INTO `t_mobile` VALUES ('15654675462', 'GSM', '宿迁', '100', '0');
INSERT INTO `t_mobile` VALUES ('18796435343', 'GSM', '宿迁', '200', '0');
INSERT INTO `t_mobile` VALUES ('13783797843', '3G', '宿迁', '300', '0');
INSERT INTO `t_mobile` VALUES ('15732481231', '3G', '宿迁', '400', '0');
INSERT INTO `t_mobile` VALUES ('18454353243', '3G', '宿迁', '600', '0');
INSERT INTO `t_mobile` VALUES ('15678678443', '4G', '宿迁', '500', '0');
INSERT INTO `t_mobile` VALUES ('13546546547', '4G', '宿迁', '800', '0');
INSERT INTO `t_mobile` VALUES ('18905654654', '4G', '宿迁', '600', '0');
INSERT INTO `t_mobile` VALUES ('13867835434', 'GSM', '淮安', '800', '0');
INSERT INTO `t_mobile` VALUES ('15676754234', 'GSM', '淮安', '50', '0');
INSERT INTO `t_mobile` VALUES ('18434324657', 'GSM', '淮安', '500', '0');
INSERT INTO `t_mobile` VALUES ('13754654342', '3G', '淮安', '400', '0');
INSERT INTO `t_mobile` VALUES ('15678678343', '3G', '淮安', '300', '0');
INSERT INTO `t_mobile` VALUES ('18433543543', '3G', '淮安', '200', '0');
INSERT INTO `t_mobile` VALUES ('13768768211', '4G', '淮安', '100', '0');
INSERT INTO `t_mobile` VALUES ('15789768657', '4G', '淮安', '600', '0');
INSERT INTO `t_mobile` VALUES ('18435435431', '4G', '淮安', '800', '0');
INSERT INTO `t_mobile` VALUES ('13435465461', 'GSM', '徐州', '800', '0');
INSERT INTO `t_mobile` VALUES ('15768657653', 'GSM', '徐州', '600', '0');
INSERT INTO `t_mobile` VALUES ('18454352456', 'GSM', '徐州', '400', '0');
INSERT INTO `t_mobile` VALUES ('13879877645', '3G', '徐州', '500', '0');
INSERT INTO `t_mobile` VALUES ('15657657234', '3G', '徐州', '300', '0');
INSERT INTO `t_mobile` VALUES ('18435435467', '3G', '徐州', '200', '0');
INSERT INTO `t_mobile` VALUES ('13676572342', '4G', '徐州', '100', '0');
INSERT INTO `t_mobile` VALUES ('18546456542', '4G', '徐州', '50', '0');
INSERT INTO `t_mobile` VALUES ('15387467324', '4G', '徐州', '100', '0');
INSERT INTO `t_mobile` VALUES ('15234324667', 'GSM', '连云港', '100', '0');
INSERT INTO `t_mobile` VALUES ('18565464231', 'GSM', '连云港', '200', '0');
INSERT INTO `t_mobile` VALUES ('13546546232', '3G', '连云港', '300', '0');
INSERT INTO `t_mobile` VALUES ('15765765723', '3G', '连云港', '400', '0');
INSERT INTO `t_mobile` VALUES ('18423423233', '3G', '连云港', '500', '0');
INSERT INTO `t_mobile` VALUES ('13546576575', '4G', '连云港', '600', '0');
INSERT INTO `t_mobile` VALUES ('15654654512', '4G', '连云港', '800', '0');
INSERT INTO `t_mobile` VALUES ('18432423564', '4G', '连云港', '400', '0');
INSERT INTO `t_mobile` VALUES ('13023565305', '3G', '盐城', '100', '1');
INSERT INTO `t_mobile` VALUES ('13775357881', '3G', '南通', '100', '1');
INSERT INTO `t_mobile` VALUES ('18851317743', '4G', '南京', '100', '1');
INSERT INTO `t_mobile` VALUES ('15678678323', 'GSM', '盐城', '400', '0');
INSERT INTO `t_mobile` VALUES ('13775357811', '3G', '南京', '50', '1');
INSERT INTO `t_mobile` VALUES ('15815317743', 'GSM', '南京', '200', '1');
INSERT INTO `t_mobile` VALUES ('18543543543', 'GSM', '盐城', '50', '0');
INSERT INTO `t_mobile` VALUES ('13786576543', 'GSM', '盐城', '600', '0');
INSERT INTO `t_mobile` VALUES ('15764358768', '3G', '盐城', '800', '0');
INSERT INTO `t_mobile` VALUES ('18656442342', '3G', '盐城', '400', '0');
INSERT INTO `t_mobile` VALUES ('13452217743', '3G', '苏州', '300', '1');
INSERT INTO `t_mobile` VALUES ('15329138121', '3G', '苏州', '100', '1');
INSERT INTO `t_mobile` VALUES ('15765765435', '3G', '盐城', '300', '0');
INSERT INTO `t_mobile` VALUES ('13456375432', '3G', '无锡', '100', '1');
INSERT INTO `t_mobile` VALUES ('13546457657', '4G', '盐城', '200', '0');
INSERT INTO `t_mobile` VALUES ('18345435234', '4G', '盐城', '50', '0');
INSERT INTO `t_mobile` VALUES ('15324324232', '4G', '盐城', '50', '0');
INSERT INTO `t_mobile` VALUES ('13435435213', 'GSM', '盐城', '100', '0');

-- ----------------------------
-- Table structure for t_mobile_package
-- ----------------------------
DROP TABLE IF EXISTS `t_mobile_package`;
CREATE TABLE `t_mobile_package` (
  `TEL_PACKAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEL_NUMB` varchar(11) DEFAULT NULL,
  `BUSINESS_ID` int(11) DEFAULT NULL,
  `PP_ID` int(11) DEFAULT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`TEL_PACKAGE_ID`),
  KEY `fk_t_mp_t_m` (`TEL_NUMB`),
  KEY `fk_t_mp_t_pp` (`PP_ID`),
  CONSTRAINT `fk_t_mp_t_m` FOREIGN KEY (`TEL_NUMB`) REFERENCES `t_mobile` (`TEL_NUMB`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_mp_t_pp` FOREIGN KEY (`PP_ID`) REFERENCES `t_phone_package` (`PP_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mobile_package
-- ----------------------------
INSERT INTO `t_mobile_package` VALUES ('1001', '13456375432', null, '1003', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1020', '13775357811', null, '1001', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1040', '13775357881', null, '1003', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1062', '13023565305', '1016', '1004', '2015-09-06', '2015-10-06', null);
INSERT INTO `t_mobile_package` VALUES ('1101', '13023565305', null, '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1105', '13023565305', null, '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1106', '13023565305', '1027', '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1107', '13452217743', null, '1002', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1108', '15329138121', null, '1005', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1109', '18851317743', null, '1002', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1110', '13023565305', null, '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1111', '15815317743', null, '1003', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1120', '13023565305', null, '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1140', '13023565305', null, '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1141', '13023565305', null, '1004', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1160', '13456375432', '1024', '1003', '2015-09-08', '2015-10-08', null);
INSERT INTO `t_mobile_package` VALUES ('1180', '13213213211', null, '1002', null, null, null);
INSERT INTO `t_mobile_package` VALUES ('1181', '13023565305', '1025', '1004', '2015-09-09', '2015-10-09', null);

-- ----------------------------
-- Table structure for t_package_business
-- ----------------------------
DROP TABLE IF EXISTS `t_package_business`;
CREATE TABLE `t_package_business` (
  `PB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PP_ID` int(11) DEFAULT NULL,
  `BUSINESS_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PB_ID`),
  KEY `fk_t_pb_t_pp` (`PP_ID`),
  KEY `fk_t_pb_t_bf` (`BUSINESS_ID`),
  CONSTRAINT `fk_t_pb_t_bf` FOREIGN KEY (`BUSINESS_ID`) REFERENCES `t_business_fee` (`BUSINESS_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_pb_t_pp` FOREIGN KEY (`PP_ID`) REFERENCES `t_phone_package` (`PP_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_package_business
-- ----------------------------
INSERT INTO `t_package_business` VALUES ('1000', '1001', '1000');
INSERT INTO `t_package_business` VALUES ('1001', '1001', '1009');
INSERT INTO `t_package_business` VALUES ('1002', '1002', '1001');
INSERT INTO `t_package_business` VALUES ('1003', '1002', '1008');
INSERT INTO `t_package_business` VALUES ('1004', '1003', '1002');
INSERT INTO `t_package_business` VALUES ('1005', '1003', '1010');
INSERT INTO `t_package_business` VALUES ('1006', '1004', '1003');
INSERT INTO `t_package_business` VALUES ('1007', '1004', '1011');
INSERT INTO `t_package_business` VALUES ('1008', '1005', '1004');
INSERT INTO `t_package_business` VALUES ('1009', '1005', '1013');
INSERT INTO `t_package_business` VALUES ('1010', '1006', '1005');
INSERT INTO `t_package_business` VALUES ('1011', '1006', '1012');
INSERT INTO `t_package_business` VALUES ('1012', '1007', '1006');
INSERT INTO `t_package_business` VALUES ('1013', '1007', '1015');
INSERT INTO `t_package_business` VALUES ('1014', '1008', '1007');
INSERT INTO `t_package_business` VALUES ('1015', '1008', '1014');

-- ----------------------------
-- Table structure for t_phone_package
-- ----------------------------
DROP TABLE IF EXISTS `t_phone_package`;
CREATE TABLE `t_phone_package` (
  `PP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PP_NAME` varchar(20) DEFAULT NULL,
  `PP_FEE` int(11) DEFAULT NULL,
  `IS_AVALIABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`PP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_phone_package
-- ----------------------------
INSERT INTO `t_phone_package` VALUES ('1001', '18元套餐A', '18', '1');
INSERT INTO `t_phone_package` VALUES ('1002', '18元套餐B', '18', '1');
INSERT INTO `t_phone_package` VALUES ('1003', '28元套餐A', '28', '1');
INSERT INTO `t_phone_package` VALUES ('1004', '58元套餐A', '58', '1');
INSERT INTO `t_phone_package` VALUES ('1005', '88元套餐A', '88', '1');
INSERT INTO `t_phone_package` VALUES ('1006', '88元套餐B', '88', '1');
INSERT INTO `t_phone_package` VALUES ('1007', '128元套餐A', '128', '1');
INSERT INTO `t_phone_package` VALUES ('1008', '128元套餐B', '128', '1');

-- ----------------------------
-- Table structure for t_preferential_infor
-- ----------------------------
DROP TABLE IF EXISTS `t_preferential_infor`;
CREATE TABLE `t_preferential_infor` (
  `PREFERENTIAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PREFERENTIAL_NAME` varchar(20) DEFAULT NULL,
  `TEL_CHARGE` int(11) DEFAULT NULL,
  `DISCOUNT_AMOUNT` int(11) DEFAULT NULL,
  `START_TIME` date DEFAULT NULL,
  `ENDTIME` date DEFAULT NULL,
  `IS_AVAILABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`PREFERENTIAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_preferential_infor
-- ----------------------------
INSERT INTO `t_preferential_infor` VALUES ('1001', '充50送2', '50', '2', '2013-01-01', '2014-07-01', '1');
INSERT INTO `t_preferential_infor` VALUES ('1002', '充100送8', '100', '8', '2013-01-01', '2014-07-01', '1');
INSERT INTO `t_preferential_infor` VALUES ('1003', '充200送15', '200', '15', '2013-01-01', '2014-07-01', '1');
INSERT INTO `t_preferential_infor` VALUES ('1004', '充500送30', '500', '30', '2013-01-01', '2014-07-01', '1');
INSERT INTO `t_preferential_infor` VALUES ('1005', '充1000送80', '1000', '80', '2013-01-01', '2014-07-01', '1');
INSERT INTO `t_preferential_infor` VALUES ('1006', '充20送1', '20', '1', '2012-01-01', '2013-01-01', '0');

-- ----------------------------
-- Table structure for t_recharge_card
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge_card`;
CREATE TABLE `t_recharge_card` (
  `CARD_ID` int(11) NOT NULL,
  `CARD_PWD` varchar(20) DEFAULT NULL,
  `CARD_CHARGE` int(3) DEFAULT NULL,
  `IS_AVAILABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recharge_card
-- ----------------------------
INSERT INTO `t_recharge_card` VALUES ('2015018801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015018821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028802', '123', '20', '0');
INSERT INTO `t_recharge_card` VALUES ('2015028803', '123', '50', '0');
INSERT INTO `t_recharge_card` VALUES ('2015028804', '123', '100', '0');
INSERT INTO `t_recharge_card` VALUES ('2015028805', '123', '150', '0');
INSERT INTO `t_recharge_card` VALUES ('2015028806', '123', '200', '0');
INSERT INTO `t_recharge_card` VALUES ('2015028807', '123', '250', '0');
INSERT INTO `t_recharge_card` VALUES ('2015028808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015028821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015038821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015048821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015058821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015068821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015078821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015088821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015098821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015108821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015118821', '123', '950', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128801', '123', '10', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128802', '123', '20', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128803', '123', '50', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128804', '123', '100', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128805', '123', '150', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128806', '123', '200', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128807', '123', '250', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128808', '123', '300', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128809', '123', '350', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128810', '123', '400', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128811', '123', '450', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128812', '123', '500', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128813', '123', '550', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128814', '123', '600', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128815', '123', '650', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128816', '123', '700', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128817', '123', '750', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128818', '123', '800', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128819', '123', '850', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128820', '123', '900', '1');
INSERT INTO `t_recharge_card` VALUES ('2015128821', '123', '950', '1');

-- ----------------------------
-- Table structure for t_recharge_infor
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge_infor`;
CREATE TABLE `t_recharge_infor` (
  `RECHARGE_INFOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEL_NUMB` varchar(11) DEFAULT NULL,
  `RECHARGE_TIME` date DEFAULT NULL,
  `RECHARGE_TYPE_ID` int(11) DEFAULT NULL,
  `CARD_ID` int(11) DEFAULT NULL,
  `BANK_CARD_NUMB` int(11) DEFAULT NULL,
  `PREFERENTIAL_ID` int(11) DEFAULT NULL,
  `DISCOUNT_AMOUNT` int(11) DEFAULT NULL,
  `RECHARGE_MONEY` int(11) DEFAULT NULL,
  PRIMARY KEY (`RECHARGE_INFOR_ID`),
  KEY `fk_t_rf_t_m` (`TEL_NUMB`),
  KEY `fk_t_rf_t_rt` (`RECHARGE_TYPE_ID`),
  KEY `fk_t_rf_t_rc` (`CARD_ID`),
  KEY `fk_t_rf_t_pi` (`PREFERENTIAL_ID`),
  CONSTRAINT `fk_t_rf_t_m` FOREIGN KEY (`TEL_NUMB`) REFERENCES `t_mobile` (`TEL_NUMB`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_rf_t_pi` FOREIGN KEY (`PREFERENTIAL_ID`) REFERENCES `t_preferential_infor` (`PREFERENTIAL_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_rf_t_rc` FOREIGN KEY (`CARD_ID`) REFERENCES `t_recharge_card` (`CARD_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_rf_t_rt` FOREIGN KEY (`RECHARGE_TYPE_ID`) REFERENCES `t_recharge_type` (`RECHARGE_TYPE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recharge_infor
-- ----------------------------
INSERT INTO `t_recharge_infor` VALUES ('1160', '13456375432', '2015-09-09', '1001', null, '123456', null, '8', '100');
INSERT INTO `t_recharge_infor` VALUES ('1161', '13456375432', '2015-09-09', '1001', null, '123456', null, '15', '200');
INSERT INTO `t_recharge_infor` VALUES ('1162', '13456375432', '2015-09-09', '1002', '2015028802', null, null, '0', '20');
INSERT INTO `t_recharge_infor` VALUES ('1163', '13456375432', '2015-09-09', '1002', '2015028803', null, null, '0', '50');
INSERT INTO `t_recharge_infor` VALUES ('1164', '13456375432', '2015-09-09', '1002', '2015028804', null, null, '0', '100');
INSERT INTO `t_recharge_infor` VALUES ('1165', '13456375432', '2015-09-09', '1002', '2015028805', null, null, '0', '150');
INSERT INTO `t_recharge_infor` VALUES ('1166', '13023565305', '2015-09-09', '1001', null, '123456', null, '30', '500');
INSERT INTO `t_recharge_infor` VALUES ('1167', '13023565305', '2015-09-09', '1002', '2015028806', null, null, '0', '200');
INSERT INTO `t_recharge_infor` VALUES ('1168', '13023565305', '2015-09-09', '1002', '2015028807', null, null, '0', '250');

-- ----------------------------
-- Table structure for t_recharge_type
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge_type`;
CREATE TABLE `t_recharge_type` (
  `RECHARGE_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECHARGE_TYPE_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RECHARGE_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recharge_type
-- ----------------------------
INSERT INTO `t_recharge_type` VALUES ('1001', '在线充值');
INSERT INTO `t_recharge_type` VALUES ('1002', '充值卡充值');
INSERT INTO `t_recharge_type` VALUES ('1003', '营业厅充值');
