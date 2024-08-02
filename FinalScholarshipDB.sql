/*
SQLyog Ultimate v8.55 
MySQL - 5.1.36-community : Database - scholarship
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scholarship` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scholarship`;

/*Table structure for table `applicationmanager` */

DROP TABLE IF EXISTS `applicationmanager`;

CREATE TABLE `applicationmanager` (
  `AppId` int(11) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `applicationmanager` */

insert  into `applicationmanager`(`AppId`,`Password`) values (7543,'123');

/*Table structure for table `applyscholarship` */

DROP TABLE IF EXISTS `applyscholarship`;

CREATE TABLE `applyscholarship` (
  `ASId` int(11) NOT NULL AUTO_INCREMENT,
  `SHId` int(11) DEFAULT NULL,
  `RId` int(11) DEFAULT NULL,
  `ApplyDate` varchar(80) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ASId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `applyscholarship` */

insert  into `applyscholarship`(`ASId`,`SHId`,`RId`,`ApplyDate`,`Status`) values (1,1,777458,'05/06/2024 18:21:07 PM','Approve');

/*Table structure for table `donormaster` */

DROP TABLE IF EXISTS `donormaster`;

CREATE TABLE `donormaster` (
  `DonorId` int(11) NOT NULL,
  `DonorType` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` varchar(800) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`DonorId`),
  KEY `FK_policestationmaster` (`DonorType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `donormaster` */

insert  into `donormaster`(`DonorId`,`DonorType`,`Name`,`Password`,`MobileNo`,`EmailId`,`Address`,`Balance`) values (384088,'Individual','Ramesh','123','7829104196','srinivaskarthik.v@gmail.com','JP Nagar,Mysuru',0),(935838,'Individual','Kruthan','6964','8548998248','srinivaskarthik.v@gmail.com','TK Layout,Mysuru',0);

/*Table structure for table `donorpayngo` */

DROP TABLE IF EXISTS `donorpayngo`;

CREATE TABLE `donorpayngo` (
  `DWNGOId` int(11) NOT NULL AUTO_INCREMENT,
  `DonorId` int(11) DEFAULT NULL,
  `NGOId` int(11) DEFAULT NULL,
  `PayDate` varchar(30) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`DWNGOId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `donorpayngo` */

insert  into `donorpayngo`(`DWNGOId`,`DonorId`,`NGOId`,`PayDate`,`Amount`) values (1,384088,881979,'05/05/2024',5000),(2,384088,881979,'06/05/2024',4000);

/*Table structure for table `donorwallet` */

DROP TABLE IF EXISTS `donorwallet`;

CREATE TABLE `donorwallet` (
  `DWId` int(11) NOT NULL AUTO_INCREMENT,
  `DonorId` int(11) DEFAULT NULL,
  `LogDate` varchar(100) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`DWId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `donorwallet` */

insert  into `donorwallet`(`DWId`,`DonorId`,`LogDate`,`Amount`) values (1,384088,'01/05/2024',5000),(2,384088,'01/05/2024',2000),(3,384088,'06/05/2024',2000);

/*Table structure for table `feedbacklog` */

DROP TABLE IF EXISTS `feedbacklog`;

CREATE TABLE `feedbacklog` (
  `PFBId` int(11) NOT NULL AUTO_INCREMENT,
  `ASId` int(11) DEFAULT NULL,
  `PostDate` varchar(30) DEFAULT NULL,
  `FeedBack` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PFBId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `feedbacklog` */

insert  into `feedbacklog`(`PFBId`,`ASId`,`PostDate`,`FeedBack`) values (1,1,'06/05/2024','Sapna Rao NGO scholarship very helpful for my education');

/*Table structure for table `govtfundngo` */

DROP TABLE IF EXISTS `govtfundngo`;

CREATE TABLE `govtfundngo` (
  `GFNGOId` int(11) NOT NULL AUTO_INCREMENT,
  `NGOId` int(11) DEFAULT NULL,
  `PayDate` varchar(30) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`GFNGOId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `govtfundngo` */

insert  into `govtfundngo`(`GFNGOId`,`NGOId`,`PayDate`,`Amount`) values (1,881979,'05/05/2024',10000),(2,881979,'06/05/2024',5000);

/*Table structure for table `ngomaster` */

DROP TABLE IF EXISTS `ngomaster`;

CREATE TABLE `ngomaster` (
  `NGOId` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `MobileNo` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Balance` int(11) DEFAULT '0',
  PRIMARY KEY (`NGOId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ngomaster` */

insert  into `ngomaster`(`NGOId`,`Name`,`Password`,`MobileNo`,`EmailId`,`Address`,`Status`,`Balance`) values (881979,'Sapna Rao','123','7829104196','srinivaskarthik.v@gmail.com','#67,7nd main,1th cross,TK Layout,Mysuru','Approve',18000);

/*Table structure for table `recipienteducation` */

DROP TABLE IF EXISTS `recipienteducation`;

CREATE TABLE `recipienteducation` (
  `REId` int(11) NOT NULL AUTO_INCREMENT,
  `RId` int(11) DEFAULT NULL,
  `IName` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `YearPass` varchar(100) DEFAULT NULL,
  `Percentage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REId`),
  KEY `FK_candidateeducation` (`RId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `recipienteducation` */

insert  into `recipienteducation`(`REId`,`RId`,`IName`,`Education`,`YearPass`,`Percentage`) values (1,777458,'HHS','SSLC','2024','82.43%');

/*Table structure for table `recipientmaster` */

DROP TABLE IF EXISTS `recipientmaster`;

CREATE TABLE `recipientmaster` (
  `RecipientId` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `MobileNo` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `PhotoPath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RecipientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recipientmaster` */

insert  into `recipientmaster`(`RecipientId`,`Name`,`Password`,`MobileNo`,`EmailId`,`Address`,`PhotoPath`) values (777458,'Ganesh','123','9148180913','srinivaskarthik.v@gmail.com','#71,2nd main,5th cross,TK Layout,Mysuru','~/PhotoFiles/Ganesh_1227.png');

/*Table structure for table `recipientwallet` */

DROP TABLE IF EXISTS `recipientwallet`;

CREATE TABLE `recipientwallet` (
  `RWId` int(11) NOT NULL AUTO_INCREMENT,
  `NGOId` int(11) DEFAULT NULL,
  `RId` int(11) DEFAULT NULL,
  `PayDate` varchar(30) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`RWId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `recipientwallet` */

insert  into `recipientwallet`(`RWId`,`NGOId`,`RId`,`PayDate`,`Amount`) values (1,881979,777458,'06/05/2024',6000);

/*Table structure for table `rejectlog` */

DROP TABLE IF EXISTS `rejectlog`;

CREATE TABLE `rejectlog` (
  `RFRId` int(11) NOT NULL AUTO_INCREMENT,
  `SHId` int(11) DEFAULT NULL,
  `RId` int(11) DEFAULT NULL,
  `Reason` varchar(300) DEFAULT NULL,
  `LogDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`RFRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `rejectlog` */

insert  into `rejectlog`(`RFRId`,`SHId`,`RId`,`Reason`,`LogDate`) values (1,1,777458,'SSLC Marks Card not proper','05/06/2024 18:30:30 PM');

/*Table structure for table `scholarshipamount` */

DROP TABLE IF EXISTS `scholarshipamount`;

CREATE TABLE `scholarshipamount` (
  `SAId` int(11) NOT NULL AUTO_INCREMENT,
  `NGOId` int(11) DEFAULT NULL,
  `SType` varchar(100) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`SAId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `scholarshipamount` */

insert  into `scholarshipamount`(`SAId`,`NGOId`,`SType`,`Description`,`Amount`) values (1,881979,'SSLC','SSLC Scholarship Document,income limit 4,00,000',6000),(2,881979,'Diploma','Diploma Scholarship Document,income limit 3,00,000',5500);

/*Table structure for table `scholarshipmaster` */

DROP TABLE IF EXISTS `scholarshipmaster`;

CREATE TABLE `scholarshipmaster` (
  `SHId` int(11) NOT NULL AUTO_INCREMENT,
  `SAId` int(11) DEFAULT NULL,
  `SSD` varchar(80) DEFAULT NULL,
  `SCD` varchar(80) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SHId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `scholarshipmaster` */

insert  into `scholarshipmaster`(`SHId`,`SAId`,`SSD`,`SCD`,`Status`) values (1,1,'05/01/2024','05/15/2024','Pending');

/*Table structure for table `uploadfile` */

DROP TABLE IF EXISTS `uploadfile`;

CREATE TABLE `uploadfile` (
  `UFId` int(11) NOT NULL AUTO_INCREMENT,
  `RId` int(11) DEFAULT NULL,
  `FileName` varchar(100) DEFAULT NULL,
  `FilePath` varchar(100) DEFAULT NULL,
  `UploadDate` varchar(100) DEFAULT NULL,
  `FKey1` varchar(100) DEFAULT NULL,
  `FKey2` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UFId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `uploadfile` */

insert  into `uploadfile`(`UFId`,`RId`,`FileName`,`FilePath`,`UploadDate`,`FKey1`,`FKey2`,`Status`) values (1,777458,'Aadhar File','scholarship2024/777458_9274.png','01/05/2024','System.Byte[]','System.Byte[]','Active'),(2,777458,'SSLC Marks Card','scholarship2024/777458_3641.jpg','01/05/2024','System.Byte[]','System.Byte[]','Deactive'),(3,777458,'SSLC Marks Card','scholarship2024/777458_4213.jpg','01/05/2024','System.Byte[]','System.Byte[]','Deactive'),(4,777458,'SSLC Marks Card','scholarship2024/777458_9423.png','06/05/2024','System.Byte[]','System.Byte[]','Active');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
