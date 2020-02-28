/*
 Navicat Premium Data Transfer

 Source Server         : Al
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : mypetstore

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 14/10/2019 19:02:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `addr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr2` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `account` VALUES ('123', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `account` VALUES ('25', '3', '3', '3', NULL, '3', '3', '3', '3', '3', '3', '3');
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', NULL, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'jj', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('lqlq', 'q', 'q', 'q', NULL, 'q', 'q', 'q', 'q', 'q', 'q', 'q');

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata`  (
  `favcategory` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bannername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`favcategory`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"../images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"../images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"../images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"../images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for cartitem
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `itemId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cartitem
-- ----------------------------
INSERT INTO `cartitem` VALUES (4, 'a', 'EST-12', 2);
INSERT INTO `cartitem` VALUES (5, 'a', 'EST-14', 2);
INSERT INTO `cartitem` VALUES (8, 'a', 'EST-27', 1);
INSERT INTO `cartitem` VALUES (9, 'a', 'EST-17', 1);
INSERT INTO `cartitem` VALUES (23, 'a', 'EST-18', 1);
INSERT INTO `cartitem` VALUES (28, '123', 'EST-18', 2);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `catid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`catid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', 10000);
INSERT INTO `inventory` VALUES ('EST-10', 9997);
INSERT INTO `inventory` VALUES ('EST-11', 9999);
INSERT INTO `inventory` VALUES ('EST-12', 10000);
INSERT INTO `inventory` VALUES ('EST-13', 9997);
INSERT INTO `inventory` VALUES ('EST-14', 10000);
INSERT INTO `inventory` VALUES ('EST-15', 10000);
INSERT INTO `inventory` VALUES ('EST-16', 9998);
INSERT INTO `inventory` VALUES ('EST-17', 9990);
INSERT INTO `inventory` VALUES ('EST-18', 9927);
INSERT INTO `inventory` VALUES ('EST-19', 9995);
INSERT INTO `inventory` VALUES ('EST-2', 10000);
INSERT INTO `inventory` VALUES ('EST-20', 9998);
INSERT INTO `inventory` VALUES ('EST-21', 10000);
INSERT INTO `inventory` VALUES ('EST-22', 10000);
INSERT INTO `inventory` VALUES ('EST-23', 10000);
INSERT INTO `inventory` VALUES ('EST-24', 10000);
INSERT INTO `inventory` VALUES ('EST-25', 10000);
INSERT INTO `inventory` VALUES ('EST-26', 10000);
INSERT INTO `inventory` VALUES ('EST-27', 10000);
INSERT INTO `inventory` VALUES ('EST-28', 10000);
INSERT INTO `inventory` VALUES ('EST-3', 10000);
INSERT INTO `inventory` VALUES ('EST-4', 9996);
INSERT INTO `inventory` VALUES ('EST-5', 9998);
INSERT INTO `inventory` VALUES ('EST-6', 9993);
INSERT INTO `inventory` VALUES ('EST-7', 10000);
INSERT INTO `inventory` VALUES ('EST-8', 10000);
INSERT INTO `inventory` VALUES ('EST-9', 9999);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listprice` decimal(10, 2) DEFAULT NULL,
  `unitcost` decimal(10, 2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attr3` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attr4` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attr5` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `fk_item_2`(`supplier`) USING BTREE,
  INDEX `itemProd`(`productid`) USING BTREE,
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Large', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Venomless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', 18.50, 12.00, 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', 58.50, 12.00, 1, 'P', 'Tailless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', 23.50, 12.00, 1, 'P', 'With tail', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', 193.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', 15.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Small', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', 5.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', 5.29, 1.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', 135.50, 100.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', 145.49, 100.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', 255.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', 325.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', 125.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', 18.50, 12.00, 1, 'P', 'Toothless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotted', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', 18.50, 12.00, 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem`  (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`, `itemid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lineitem
-- ----------------------------
INSERT INTO `lineitem` VALUES (0, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (0, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (0, 1, 'EST-6', 1, 18.50);
INSERT INTO `lineitem` VALUES (0, 2, 'EST-11', 1, 18.50);
INSERT INTO `lineitem` VALUES (0, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (0, 2, 'EST-4', 2, 18.50);
INSERT INTO `lineitem` VALUES (0, 3, 'EST-9', 1, 18.50);
INSERT INTO `lineitem` VALUES (4, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (5, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (6, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (7, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (8, 2, 'EST-18', 2, 193.50);
INSERT INTO `lineitem` VALUES (8, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (9, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (10, 1, 'EST-20', 1, 5.50);
INSERT INTO `lineitem` VALUES (11, 1, 'EST-6', 1, 18.50);
INSERT INTO `lineitem` VALUES (12, 1, 'EST-4', 2, 18.50);
INSERT INTO `lineitem` VALUES (13, 3, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (13, 3, 'EST-18', 50, 193.50);
INSERT INTO `lineitem` VALUES (13, 3, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (14, 1, 'EST-17', 10, 93.50);
INSERT INTO `lineitem` VALUES (15, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (16, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (17, 1, 'EST-5', 1, 18.50);
INSERT INTO `lineitem` VALUES (18, 2, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (18, 2, 'EST-5', 1, 18.50);
INSERT INTO `lineitem` VALUES (19, 1, 'EST-18', 10, 193.50);
INSERT INTO `lineitem` VALUES (20, 2, 'EST-18', 2, 193.50);
INSERT INTO `lineitem` VALUES (20, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (21, 2, 'EST-10', 3, 18.50);
INSERT INTO `lineitem` VALUES (21, 2, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (22, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (23, 1, 'EST-6', 5, 18.50);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipaddr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipaddr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shipcity` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipstate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipzip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipcountry` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billaddr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billaddr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `billcity` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billstate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billzip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billcountry` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courier` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `totalprice` decimal(10, 2) NOT NULL,
  `billtofirstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billtolastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shiptofirstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shiptolastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditcard` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exprdate` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cardtype` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `locale` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (0, 'j2ee', '2019/10/09 05:10:28', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (2, 'j2ee', '2019/10/09 17:22:52', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 209.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (3, 'j2ee', '2019/10/09 17:26:05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (4, 'j2ee', '2019/10/09 17:32:18', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (5, 'j2ee', '2019/10/09 17:33:13', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (6, 'j2ee', '2019/10/09 17:43:51', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (7, 'j2ee', '2019/10/09 17:51:41', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (8, 'j2ee', '2019/10/09 17:56:19', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 402.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (9, 'j2ee', '2019/10/09 17:57:17', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (10, 'j2ee', '2019/10/09 22:20:03', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 5.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (11, 'j2ee', '2019/10/09 22:20:53', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (12, 'j2ee', '2019/10/09 22:21:21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 37.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (13, 'j2ee', '2019/10/10 00:14:28', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 9784.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (14, 'j2ee', '2019/10/10 17:58:23', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 935.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (15, 'j2ee', '2019/10/10 22:50:55', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (16, 'j2ee', '2019/10/11 00:17:38', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (17, 'j2ee', '2019/10/11 12:49:02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (18, 'j2ee', '2019/10/11 23:27:03', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 112.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (19, 'j2ee', '2019/10/11 23:36:13', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 1935.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (20, 'j2ee', '2019/10/12 00:24:31', 'zndx', 'zndxtdxq', 'css', 'hns', '000000', 'China', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 402.50, 'ABC', 'XYX', 'Liang', 'Fuzhu', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (21, '123', '2019/10/13 01:08:28', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'UPS', 249.00, '1', '1', '1', '1', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (22, '123', '2019/10/14 12:36:42', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'UPS', 193.50, '1', '1', '1', '1', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (23, '123', '2019/10/14 13:41:29', '', '', '', '', '', '', '1', '1', '1', '1', '1', '1', 'UPS', 92.50, '1', '1', '', '', '999 9999 9999 9999', '12/03', 'Visa', 'CA');

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus`  (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES (0, 2, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (2, 2, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (3, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (4, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (5, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (6, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (7, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (8, 2, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (9, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (10, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (11, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (12, 1, '2019-10-09', 'P');
INSERT INTO `orderstatus` VALUES (13, 3, '2019-10-10', 'P');
INSERT INTO `orderstatus` VALUES (14, 1, '2019-10-10', 'P');
INSERT INTO `orderstatus` VALUES (15, 1, '2019-10-10', 'P');
INSERT INTO `orderstatus` VALUES (16, 1, '2019-10-11', 'P');
INSERT INTO `orderstatus` VALUES (17, 1, '2019-10-11', 'P');
INSERT INTO `orderstatus` VALUES (18, 2, '2019-10-11', 'P');
INSERT INTO `orderstatus` VALUES (19, 1, '2019-10-11', 'P');
INSERT INTO `orderstatus` VALUES (20, 2, '2019-10-12', 'P');
INSERT INTO `orderstatus` VALUES (21, 2, '2019-10-13', 'P');
INSERT INTO `orderstatus` VALUES (22, 1, '2019-10-14', 'P');
INSERT INTO `orderstatus` VALUES (23, 1, '2019-10-14', 'P');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`productid`) USING BTREE,
  INDEX `productCat`(`category`) USING BTREE,
  INDEX `productName`(`name`) USING BTREE,
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard2.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/lizard3.gif\">Doubles as a watch dog');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `langpref` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `favcategory` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'japanese', 'BIRDS', NULL, NULL);
INSERT INTO `profile` VALUES ('123', 'japanese', 'BIRDS', NULL, NULL);
INSERT INTO `profile` VALUES ('25', 'japanese', 'BIRDS', NULL, NULL);
INSERT INTO `profile` VALUES ('a', 'japanese', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', 1, 1);
INSERT INTO `profile` VALUES ('j2ee', 'japanese', 'FISH', 1, 1);
INSERT INTO `profile` VALUES ('lqlq', 'english', 'FISH', 1, 0);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', 1000);
INSERT INTO `sequence` VALUES ('ordernum', 1000);

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon`  (
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('123', '1');
INSERT INTO `signon` VALUES ('25', '25');
INSERT INTO `signon` VALUES ('a', '123');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('j2ee', '123');
INSERT INTO `signon` VALUES ('lqlq', 'lq');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `addr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`suppid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES (2, 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlog
-- ----------------------------
INSERT INTO `userlog` VALUES ('1E19B584DB07BB50D49B9D3A420E05DD', '123');
INSERT INTO `userlog` VALUES ('ED3D7A182C3DEACC9630F829FC368F66', '123');

SET FOREIGN_KEY_CHECKS = 1;
