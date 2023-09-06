# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_globalcare
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    08-05-2022 15:36:10
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
) AUTO_INCREMENT=29;



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
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('19','Description 1','138','7','2022-03-19','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('20','Description 2','180','13','2022-03-19','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('21','
deshsdbjkwed','164','13','2022-03-19','Confirmed','1');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('22','Description','161','13','2022-03-19','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('23','snndkasjdnkadj','140','13','2022-03-19','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('24','msnkasjoaqsj','159','13','2022-03-19','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('25','hvjjhjkjghygy7t','149','13','2022-03-19','Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('26','mvkbgmlxdgk','146','12','2022-04-12','Confirmed','1');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('27','xfcdf','144','13','2022-04-12','Confirmend','1');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('28','sdd','205','13','2022-04-12','Confirmed','1');
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
  "user_id" int(10) unsigned default '0',
  "consultancy_id" int(10) unsigned default '0',
  "complaint_content" varchar(50) default NULL,
  "complainttype_id" int(10) unsigned default NULL,
  "hospital_id" int(3) unsigned default NULL,
  "doctor_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "consultancy_id", "complaint_content", "complainttype_id", "hospital_id", "doctor_id") VALUES
	('1','Complaint A','2022-03-05','sas','0','0','2','axsDas','1',NULL,NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "consultancy_id", "complaint_content", "complainttype_id", "hospital_id", "doctor_id") VALUES
	('2','Cpmlaint','2022-05-07',NULL,'0','0','0','aaaa','1','1',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "consultancy_id", "complaint_content", "complainttype_id", "hospital_id", "doctor_id") VALUES
	('3','Cpmlaint','2022-05-07',NULL,'0','0','0','aaaa','1','1',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "consultancy_id", "complaint_content", "complainttype_id", "hospital_id", "doctor_id") VALUES
	('4','Cpmlaints','2022-05-07','bbbb','0','12','0','bbbbbb','1',NULL,NULL);
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
) AUTO_INCREMENT=21;



#
# Dumping data for table 'tbl_davailability'
#

LOCK TABLES "tbl_davailability" WRITE;
/*!40000 ALTER TABLE "tbl_davailability" DISABLE KEYS;*/
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('13','4','10:55:00','11:55:00','2022-03-20','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('14','5','14:55:00','15:55:00','2022-03-20','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('15','1','13:00:00','16:00:00','2022-03-21','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('16','7','09:30:00','13:30:00','2022-03-22','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('17','8','16:30:00','21:00:00','2022-03-23','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('18','8','09:05:00','12:05:00','2022-04-14','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('19','4','10:30:00','13:30:00','2022-04-15','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('20','9','10:36:00','11:36:00','2022-04-15','1');
/*!40000 ALTER TABLE "tbl_davailability" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_department'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_department" (
  "dept_id" int(10) unsigned NOT NULL auto_increment,
  "dept_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("dept_id")
) AUTO_INCREMENT=11;



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
	('7','bb');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('8','cC');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('10','d1');
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
  "hospital_id" int(10) unsigned default NULL,
  "doctor_id" int(10) unsigned default NULL,
  "consultancy_id" tinyint(3) unsigned default NULL,
  PRIMARY KEY  ("feedback_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_feedback'
#

LOCK TABLES "tbl_feedback" WRITE;
/*!40000 ALTER TABLE "tbl_feedback" DISABLE KEYS;*/
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(1,'null','2022-05-07',NULL,NULL,NULL,1);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(2,'aaaaaaaa','2022-05-07',NULL,NULL,NULL,1);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(3,'aaaaaaaa','2022-05-07',NULL,NULL,NULL,1);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(4,'asadadd','2022-05-07','12',NULL,NULL,NULL);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(5,'Good','2022-05-07',NULL,'1',NULL,NULL);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(6,'ccccc','2022-05-07',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE "tbl_feedback" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_generatetoken'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_generatetoken" (
  "gtoken_id" int(10) unsigned NOT NULL auto_increment,
  "token_no" varchar(50) default NULL,
  "da_id" varchar(50) default NULL,
  "token_bookstatus" int(11) default '0',
  PRIMARY KEY  ("gtoken_id")
) AUTO_INCREMENT=207;



#
# Dumping data for table 'tbl_generatetoken'
#

LOCK TABLES "tbl_generatetoken" WRITE;
/*!40000 ALTER TABLE "tbl_generatetoken" DISABLE KEYS;*/
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('138','TID1038','13',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('139','TID1387','13',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('140','TID1699','13',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('141','TID1167','13',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('142','TID1923','13',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('143','TID1970','13',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('144','TID2071','13',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('145','TID1444','13',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('146','TID1009','13',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('147','TID1800','13',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('148','TID1413','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('149','TID2043','14',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('150','TID1119','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('151','TID1872','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('152','TID1267','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('153','TID1619','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('154','TID1910','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('155','TID1892','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('156','TID1931','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('157','TID1550','14',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('158','TID2034','15',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('159','TID1048','15',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('160','TID1176','15',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('161','TID1944','15',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('162','TID1915','15',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('163','TID1845','16',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('164','TID1115','16',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('165','TID1549','16',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('166','TID1315','16',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('167','TID1305','16',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('168','TID1894','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('169','TID1563','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('170','TID1103','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('171','TID1901','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('172','TID1952','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('173','TID1669','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('174','TID1839','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('175','TID2089','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('176','TID1975','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('177','TID1133','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('178','TID1114','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('179','TID1452','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('180','TID1966','17',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('181','TID1597','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('182','TID1168','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('183','TID1875','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('184','TID1748','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('185','TID1373','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('186','TID1955','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('187','TID1671','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('188','TID1767','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('189','TID1662','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('190','TID1796','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('191','TID1759','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('192','TID1494','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('193','TID1123','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('194','TID1893','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('195','TID1244','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('196','TID1492','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('197','TID1870','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('198','TID1817','18',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('199','TID1516','18',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('200','TID1687','18',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('201','TID1101','18',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('202','TID1599','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('203','TID1298','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('204','TID1065','17',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('205','TID1415','20',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('206','TID1540','20',0);
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
	('3','Mariya Hospital','9544239154','mariyahospital@gmail.com','wewedwew','6','uset_1911.png','uset_1256.png','4','1234qwerA',0,'2022-03-15','2');
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
  "mr_majordetails" varchar(100) NOT NULL,
  "mr_report" varchar(100) NOT NULL,
  PRIMARY KEY  ("mr_id")
) AUTO_INCREMENT=24;



#
# Dumping data for table 'tbl_medicalreport'
#

LOCK TABLES "tbl_medicalreport" WRITE;
/*!40000 ALTER TABLE "tbl_medicalreport" DISABLE KEYS;*/
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('18','19','Title !','Remark 1','Paracetamol','No','','uset_1139.pdf');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('19','20','Title2','Remark2','Dolo,Acenesia,Tahipoleia','yes','','uset_1943.pdf');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('20','23','Title3','
Remark 3','asolaline,ashthipore','yes','','uset_1429.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('21','22','Title 4','Remarlk 4','shdbjsd','yes','','uset_1961.png');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('22','24','Title 5','remark 5','dsfjashf','No','','uset_1719.pdf');
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('23','25','Title6','jsdwakjdow','jekwjekw','No','wwjsedkwj','uset_1700.pdf');
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
) AUTO_INCREMENT=9;



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
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('8','Aluva','2');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
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
) AUTO_INCREMENT=15;



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
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('13','Pretty Binoy','pretty@gmail.com','9876543211','hsdujwahduqwjqah','female','uset_1499.png','Zxcvbnm1','6','PID1634','2022-03-19');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('14','Beyon Babu','beyon@gmail.com','9876545211','uwhduwhdwhdwishw','male','uset_1218.png','poiuytT1','5','PID1075','2022-03-19');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
