# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_globalcare
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2022-03-18 16:27:11
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_globalcare'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_globalcare" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_globalcare";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_username" varchar(50) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_username", "admin_password") VALUES
	('1','rinu','rinu');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_cdetails'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_cdetails" (
  "cd_id" int(10) unsigned NOT NULL auto_increment,
  "cd_description" varchar(50) default NULL,
  "gtoken_id" int(10) unsigned default NULL,
  "user_id" int(10) unsigned default NULL,
  "cd_bookingdate" date default NULL,
  "cd_reply" varchar(100) default 'No Reply',
  "cd_status" varchar(50) NOT NULL default '0',
  PRIMARY KEY  ("cd_id")
) AUTO_INCREMENT=19;



#
# Dumping data for table 'tbl_cdetails'
#

LOCK TABLES "tbl_cdetails" WRITE;
/*!40000 ALTER TABLE "tbl_cdetails" DISABLE KEYS;*/
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('1','wjdwidjwlkdm','21','7','2022-03-05','Hiii','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('2','gvbhbvh','23','7','2022-03-12','jsndwswkdkad','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('3','jjcksks','23','7','2022-03-12','Hello','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('4','kajskakqksoqaks','21','7','2022-03-12','jsdhnwajdeqijwsiqjsaks','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('5','kjdowkjk','23','7','2022-03-12','No Reply','0');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('6','hbjhujhu','29','10','2022-03-15','Confirmed your appointment','1');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('7','cgchygjuhijjikj','27','9','2022-03-15','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('8','gfuhujkhi','60','7','2022-03-15','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('9','hkijljkolkknjh','43','7','2022-03-15','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('10','jndwjnd','75','7','2022-03-15','Booking Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('11','msandkmwsdnw','85','7','2022-03-15','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('12','kwdkwdejwk','99','7','2022-03-15','No Reply','0');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('13','msmnkqJSQKSSKWSKW','76','12','2022-03-18','Booking Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('14','MWMNKQJSQOKJS','97','12','2022-03-18','Booking Confirmed
','1');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('15','Adnciewjfoe','78','12','2022-03-18','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('16',',mlklaksa','30','12','2022-03-18','your booking has confirmed','1');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('17','wdiwjeiqejo','21','12','2022-03-18','No Reply','0');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('18','assddffgyhh','24','12','2022-03-18','No Reply','0');
/*!40000 ALTER TABLE "tbl_cdetails" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_cmptype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_cmptype" (
  "cmptype_id" int(10) unsigned NOT NULL auto_increment,
  "cmp_type" varchar(50) NOT NULL,
  PRIMARY KEY  ("cmptype_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_cmptype'
#

LOCK TABLES "tbl_cmptype" WRITE;
/*!40000 ALTER TABLE "tbl_cmptype" DISABLE KEYS;*/
REPLACE INTO "tbl_cmptype" ("cmptype_id", "cmp_type") VALUES
	('1','Type A');
/*!40000 ALTER TABLE "tbl_cmptype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(10) unsigned NOT NULL auto_increment,
  "complaint_title" varchar(50) NOT NULL,
  "complaint_date" date default NULL,
  "complaint_reply" varchar(50) default NULL,
  "complaint_status" int(10) unsigned default '0',
  "user_id" int(10) unsigned NOT NULL,
  "complaint_content" varchar(50) default NULL,
  "complainttype_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "complaint_content", "complainttype_id") VALUES
	('1','Complaint A','2022-03-05',NULL,'0','7','axsDas','1');
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_consultancy'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_consultancy" (
  "consultancy_id" int(10) unsigned NOT NULL auto_increment,
  "consultancy_name" varchar(50) NOT NULL,
  "hospital_id" int(10) unsigned NOT NULL,
  "consultancy_head" varchar(50) NOT NULL,
  "consultancy_logo" varchar(50) NOT NULL,
  "consultancy_password" varchar(50) default NULL,
  PRIMARY KEY  ("consultancy_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_consultancy'
#

LOCK TABLES "tbl_consultancy" WRITE;
/*!40000 ALTER TABLE "tbl_consultancy" DISABLE KEYS;*/
REPLACE INTO "tbl_consultancy" ("consultancy_id", "consultancy_name", "hospital_id", "consultancy_head", "consultancy_logo", "consultancy_password") VALUES
	('1','Consultancy A','1','Aravind Raj','uset_1659.png','098');
REPLACE INTO "tbl_consultancy" ("consultancy_id", "consultancy_name", "hospital_id", "consultancy_head", "consultancy_logo", "consultancy_password") VALUES
	('2','Consultancy B','2','A R Mahima','uset_1043.png','789');
/*!40000 ALTER TABLE "tbl_consultancy" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_davailability'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_davailability" (
  "da_id" int(10) unsigned NOT NULL auto_increment,
  "doctor_id" int(10) unsigned NOT NULL,
  "da_fromtime" time NOT NULL,
  "da_totime" time default NULL,
  "da_date" date NOT NULL,
  "consultancy_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("da_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_davailability'
#

LOCK TABLES "tbl_davailability" WRITE;
/*!40000 ALTER TABLE "tbl_davailability" DISABLE KEYS;*/
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('1','1','09:45:00','16:40:00','2022-02-14','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('2','2','04:36:00','12:35:00','2022-02-01','2');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('3','2','15:39:00','19:39:00','2022-02-09','2');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('4','3','15:39:00','18:39:00','2022-02-01','2');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('5','1','16:27:00','16:30:00','2022-02-10','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('6','4','00:00:00','20:00:00','2022-03-18','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('7','5','15:02:00','19:00:00','2022-03-16','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('8','8','16:31:00','18:31:00','2022-03-17','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('9','9','21:32:00','03:32:00','2022-03-16','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('10','7','18:38:00','15:43:00','2022-03-18','1');
/*!40000 ALTER TABLE "tbl_davailability" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_department'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_department" (
  "dept_id" int(10) unsigned NOT NULL auto_increment,
  "dept_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("dept_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_department'
#

LOCK TABLES "tbl_department" WRITE;
/*!40000 ALTER TABLE "tbl_department" DISABLE KEYS;*/
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('2','Pediatris');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('3','Cardiology');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('5','Ortho');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('6','a');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('7','b');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('8','c');
/*!40000 ALTER TABLE "tbl_department" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('1','Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('2','Ernakulam');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_doctors'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_doctors" (
  "doctors_id" int(50) NOT NULL auto_increment,
  "doctors_name" varchar(50) NOT NULL,
  "doctors_contact" varchar(50) NOT NULL,
  "doctors_email" varchar(50) NOT NULL,
  "doctors_gender" varchar(50) NOT NULL,
  "doctors_address" varchar(50) NOT NULL,
  "place_id" int(10) unsigned default NULL,
  "hospital_id" int(10) unsigned NOT NULL,
  "doctors_photo" varchar(50) default NULL,
  "doctors_qualification" varchar(50) NOT NULL,
  "doctors_pswrd" varchar(50) default NULL,
  "doctors_doj" date default NULL,
  "doctors_isactive" int(10) unsigned default '0',
  "department_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("doctors_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_doctors'
#

LOCK TABLES "tbl_doctors" WRITE;
/*!40000 ALTER TABLE "tbl_doctors" DISABLE KEYS;*/
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(1,'Arun S','9876543210','arun1@gmail.com','male','jwdwjdikqjsioqows','3','1','uset_1425.png','jsdnkwijsoqksoaksq','1234560','2022-02-18','0','3');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(2,'Dr Arunima JH ','9876543210','arunima@gmail.com','female','edjedqwj3diw
djewndj3wjdkiwj','4','2','uset_1243.png','bvjhlkijloihhft','123','2022-02-18','0','2');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(3,'Hani S','9876545211','hani@gmail.com','male','sajdnjwsqkaslk
ksdksd','5','2','uset_1686.png','nsqASIQAJSIKA','678','2022-02-18','0','3');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(4,'Gopika K','9876543210','gopika@gmail.com','female','fafwsadwsdw','6','1','uset_1574.png','sfwsfwsdsw','0987','2022-03-15','0','2');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(5,'Sarath R','9876543216','sarath@gmail.com','male','sdfff','2','1','uset_1962.png',' nnkmkll','mnb','2022-03-15','0','2');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(6,'AniMol','9544239154','ani@gmail.com','female','wsdawdwsd','6','2','uset_2073.png','sdwadwd','qwe','2022-03-15','0','5');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(7,'Leela M','9876543211','leela@gmail.com','female','sewwr','2','1','uset_1380.png','wnbdwjhendkqe','zxc','2022-03-15','0','5');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(8,'Manu Mohan','9876543210','manu@gmail.com','male','nsadjwasdn','4','1','uset_1659.png','nwbejw','zxc','2022-03-15','0','6');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(9,'Ziyara V','9876543212','ziyara@gmail.com','female','jwawdjkwqjwj','6','1','uset_1681.png','msfnkwamkw','vbn','2022-03-15','0','8');
/*!40000 ALTER TABLE "tbl_doctors" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(50) NOT NULL auto_increment,
  "feedback_description" varchar(50) default NULL,
  "feedback_date" date default NULL,
  "user_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("feedback_id")
);



#
# Dumping data for table 'tbl_feedback'
#

# No data found.



#
# Table structure for table 'tbl_generatetoken'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_generatetoken" (
  "gtoken_id" int(10) unsigned NOT NULL auto_increment,
  "token_no" varchar(50) default NULL,
  "da_id" varchar(50) default NULL,
  "token_bookstatus" int(11) default '0',
  PRIMARY KEY  ("gtoken_id")
) AUTO_INCREMENT=103;



#
# Dumping data for table 'tbl_generatetoken'
#

LOCK TABLES "tbl_generatetoken" WRITE;
/*!40000 ALTER TABLE "tbl_generatetoken" DISABLE KEYS;*/
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('21','TID1617','1',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('22','TID1333','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('23','TID1997','1',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('24','TID2070','1',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('25','TID1036','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('26','TID1581','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('27','TID2031','1',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('28','TID1332','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('29','TID1826','1',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('30','TID1355','1',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('31','TID1305','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('32','TID1604','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('33','TID1650','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('34','TID1643','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('35','TID1999','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('36','TID2016','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('37','TID2025','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('38','TID1600','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('39','TID1923','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('40','TID1708','1',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('41','TID2107','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('42','TID1092','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('43','TID1217','6',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('44','TID1876','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('45','TID1984','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('46','TID1598','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('47','TID1759','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('48','TID1723','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('49','TID1244','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('50','TID1341','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('51','TID1218','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('52','TID1940','6',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('53','TID1300','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('54','TID1504','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('55','TID1998','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('56','TID1186','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('57','TID1923','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('58','TID1326','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('59','TID1722','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('60','TID1431','7',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('61','TID2083','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('62','TID1376','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('63','TID1269','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('64','TID1397','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('65','TID1380','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('66','TID1621','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('67','TID1408','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('68','TID1872','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('69','TID1043','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('70','TID2076','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('71','TID1116','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('72','TID1258','7',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('73','TID1579','8',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('74','TID1420','8',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('75','TID1691','8',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('76','TID1653','8',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('77','TID1054','8',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('78','TID1052','9',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('79','TID1863','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('80','TID2017','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('81','TID2012','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('82','TID1327','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('83','TID1645','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('84','TID1277','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('85','TID1580','9',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('86','TID1251','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('87','TID1943','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('88','TID1248','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('89','TID1202','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('90','TID1331','9',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('91','TID1090','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('92','TID2053','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('93','TID1452','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('94','TID1748','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('95','TID1387','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('96','TID1750','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('97','TID1599','10',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('98','TID1192','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('99','TID1965','10',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('100','TID1046','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('101','TID1852','10',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('102','TID1201','10',0);
/*!40000 ALTER TABLE "tbl_generatetoken" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_hospital'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_hospital" (
  "hospital_id" int(10) unsigned NOT NULL auto_increment,
  "hospital_name" varchar(50) NOT NULL,
  "hospital_contact" varchar(50) NOT NULL,
  "hospital_email" varchar(50) NOT NULL,
  "hospital_address" varchar(50) NOT NULL,
  "place_id" int(10) unsigned NOT NULL,
  "hospital_logo" varchar(50) default NULL,
  "hospital_proof" varchar(50) default NULL,
  "hospitaltype_id" int(10) unsigned NOT NULL,
  "hospital_pswrd" varchar(50) NOT NULL,
  "hospital_isactive" int(11) NOT NULL default '0',
  "hospital_doj" date NOT NULL,
  "hospital_vstatus" varchar(50) default '0',
  PRIMARY KEY  ("hospital_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_hospital'
#

LOCK TABLES "tbl_hospital" WRITE;
/*!40000 ALTER TABLE "tbl_hospital" DISABLE KEYS;*/
REPLACE INTO "tbl_hospital" ("hospital_id", "hospital_name", "hospital_contact", "hospital_email", "hospital_address", "place_id", "hospital_logo", "hospital_proof", "hospitaltype_id", "hospital_pswrd", "hospital_isactive", "hospital_doj", "hospital_vstatus") VALUES
	('1','Smitha Memorial Hospital','9876545211','smithamemorialhospital@gmail.com','Chakkikavu P.O
Vazhakkulam','4','uset_1793.png','uset_1467.png','3','12345',0,'2022-02-09','1');
REPLACE INTO "tbl_hospital" ("hospital_id", "hospital_name", "hospital_contact", "hospital_email", "hospital_address", "place_id", "hospital_logo", "hospital_proof", "hospitaltype_id", "hospital_pswrd", "hospital_isactive", "hospital_doj", "hospital_vstatus") VALUES
	('2','HollyFamily Hospital','9876543212','holyfamily@gmail.com','Muthalakkudam P.O
Thodupuzha','5','uset_1964.png','uset_1251.png','3','0987654321Az',0,'2022-02-10','1');
REPLACE INTO "tbl_hospital" ("hospital_id", "hospital_name", "hospital_contact", "hospital_email", "hospital_address", "place_id", "hospital_logo", "hospital_proof", "hospitaltype_id", "hospital_pswrd", "hospital_isactive", "hospital_doj", "hospital_vstatus") VALUES
	('3','Mariya Hospital','9544239154','mariyahospital@gmail.com','wewedwew','6','uset_1911.png','uset_1256.png','4','1234qwerA',0,'2022-03-15','1');
/*!40000 ALTER TABLE "tbl_hospital" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_hospitaltype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_hospitaltype" (
  "hospitaltype_id" int(10) unsigned NOT NULL auto_increment,
  "hospitaltype_name" varchar(50) default NULL,
  PRIMARY KEY  ("hospitaltype_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_hospitaltype'
#

LOCK TABLES "tbl_hospitaltype" WRITE;
/*!40000 ALTER TABLE "tbl_hospitaltype" DISABLE KEYS;*/
REPLACE INTO "tbl_hospitaltype" ("hospitaltype_id", "hospitaltype_name") VALUES
	('3','Private');
REPLACE INTO "tbl_hospitaltype" ("hospitaltype_id", "hospitaltype_name") VALUES
	('4','Government');
/*!40000 ALTER TABLE "tbl_hospitaltype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_medicalreport'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_medicalreport" (
  "mr_id" int(10) unsigned NOT NULL auto_increment,
  "cd_id" int(10) unsigned NOT NULL,
  "mr_title" varchar(50) NOT NULL,
  "mr_remark" varchar(50) NOT NULL,
  "mr_medicine" varchar(50) NOT NULL,
  "mr_ismajor" varchar(50) NOT NULL,
  "mr_report" varchar(100) NOT NULL,
  PRIMARY KEY  ("mr_id")
) AUTO_INCREMENT=18;



#
# Dumping data for table 'tbl_medicalreport'
#

LOCK TABLES "tbl_medicalreport" WRITE;
/*!40000 ALTER TABLE "tbl_medicalreport" DISABLE KEYS;*/
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('1','1','wewe','wewewe','wewe','No','uset_1133.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('2','1','sdsd','sffs','sdsf','yes','uset_1772.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('3','1','deff','sdsdd','dssd','yes','uset_1300.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('4','1','ere','wewee','wewewe','yes','uset_1003.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('5','1','sfsf','ssf','ssf','No','uset_1914.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('6','1','sfsf','ssf','ssf','No','uset_1516.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('7','1','sds','sdd','sdsf','No','uset_1435.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('8','2','dfsdsf','adadca','aa','yes','uset_1290.jpg');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('9','3','hbjh nhbb','hyguhu','jhuh','yes','uset_1229.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('10','4','sfsf','sdsd','sfsf','yes','uset_1173.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('11','8','defrererer','wsewrr','ewrr','yes','uset_1389.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('12','9','hbjjk','gvjhkuhj','vhjuuh','No','uset_1909.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('13','11','a','abcd','sdsdwew','yes','uset_1471.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('14','7','dfsdfs','sdsd','sdsds','yes','uset_1174.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('15','10','Title 1','Remark 1','medicine 1','No','uset_1780.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('16','13','Title 1','Remarks 1','medicin1','No','uset_1541.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_report") VALUES
	('17','15','title2','remark 2','medicine 2','yes','uset_1302.png');
/*!40000 ALTER TABLE "tbl_medicalreport" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(10) unsigned NOT NULL auto_increment,
  "place_name" varchar(50) NOT NULL,
  "district_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('2','Arakulam','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('3','Muvattupuzha','2');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('4','Vazhakkulam','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('5','Muthalakkudam','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('6','Ernakulam','2');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_tokens'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_tokens" (
  "token_id" int(10) unsigned NOT NULL auto_increment,
  "token_count" int(10) unsigned NOT NULL,
  "token_stime" time NOT NULL,
  "token_etime" time default NULL,
  "token_date" date default NULL,
  "da_id" int(10) unsigned default NULL,
  "consultancy_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("token_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_tokens'
#

LOCK TABLES "tbl_tokens" WRITE;
/*!40000 ALTER TABLE "tbl_tokens" DISABLE KEYS;*/
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('1','10','14:55:00','17:55:00','2022-02-10','5','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('2','10','14:55:00','17:55:00','2022-02-10','5','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('3','10','14:55:00','17:55:00','2022-02-10','5','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('4','10','14:55:00','17:55:00','2022-02-10','5','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('5','10','14:55:00','17:55:00','2022-02-10','5','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('6','10','14:55:00','17:55:00','2022-02-10','5','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('7','12','14:02:00','18:03:00','2022-02-14','1','1');
REPLACE INTO "tbl_tokens" ("token_id", "token_count", "token_stime", "token_etime", "token_date", "da_id", "consultancy_id") VALUES
	('8','10','15:04:00','18:04:00','2022-02-14','1','1');
/*!40000 ALTER TABLE "tbl_tokens" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(10) unsigned NOT NULL auto_increment,
  "user_name" varchar(50) NOT NULL,
  "user_email" varchar(50) NOT NULL,
  "user_contact" varchar(50) NOT NULL,
  "user_address" varchar(50) NOT NULL,
  "user_gender" varchar(50) NOT NULL,
  "user_photo" varchar(50) NOT NULL,
  "user_pswrd" varchar(10) default NULL,
  "place_id" int(10) unsigned default NULL,
  "user_pid" varchar(50) default NULL,
  "user_doj" date default NULL,
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('7','Rose M','rose1@gmail.com','9876543210','Kalarikkal(H) Pariyaram','female','uset_1478.jpg','12345678A','3',NULL,'2022-02-09');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('8','Anu Mol','anu@gmail.com','9876543211','wsjdnkwdekw','female','uset_1513.png','12345678Aq','6',NULL,'2022-03-15');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('9','Karthik Sanan','karthik@gmaill.com','9876543210','jdwdekwejdnke','male','uset_1691.png','09876ccC','2',NULL,'2022-03-15');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('10','Sasi P','sasi@gmail.com','9544239154','adwskdmkwsdm','male','uset_1801.png','mnbvc12C','5',NULL,'2022-03-15');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('12','Dawn J','dawn@gmail.com','9876545211','bdjwsdnkwdjn','male','uset_1022.png','mnbvcxzZ1','2','PID1824','2022-03-18');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
