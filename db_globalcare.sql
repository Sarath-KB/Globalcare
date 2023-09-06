# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_globalcare
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2022-05-13 09:02:35
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
  "cd_description" varchar(100) default NULL,
  "gtoken_id" int(10) unsigned default NULL,
  "user_id" int(10) unsigned default NULL,
  "cd_bookingdate" date default NULL,
  "cd_reply" varchar(100) default 'No Reply',
  "cd_status" varchar(50) NOT NULL default '0',
  PRIMARY KEY  ("cd_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_cdetails'
#

LOCK TABLES "tbl_cdetails" WRITE;
/*!40000 ALTER TABLE "tbl_cdetails" DISABLE KEYS;*/
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('1','
Swelling in the hands with pain','208','1','2022-05-11','Booking Confirmed','2');
REPLACE INTO "tbl_cdetails" ("cd_id", "cd_description", "gtoken_id", "user_id", "cd_bookingdate", "cd_reply", "cd_status") VALUES
	('2','Lightheadedness and/or dizziness.','212','1','2022-05-11','Booking Confirmed','1');
/*!40000 ALTER TABLE "tbl_cdetails" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_cmptype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_cmptype" (
  "cmptype_id" int(10) unsigned NOT NULL auto_increment,
  "cmp_type" varchar(50) NOT NULL,
  PRIMARY KEY  ("cmptype_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_cmptype'
#

LOCK TABLES "tbl_cmptype" WRITE;
/*!40000 ALTER TABLE "tbl_cmptype" DISABLE KEYS;*/
REPLACE INTO "tbl_cmptype" ("cmptype_id", "cmp_type") VALUES
	('1','Service Related');
REPLACE INTO "tbl_cmptype" ("cmptype_id", "cmp_type") VALUES
	('2','Attitudinal');
REPLACE INTO "tbl_cmptype" ("cmptype_id", "cmp_type") VALUES
	('3','Service Related');
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
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "consultancy_id", "complaint_content", "complainttype_id", "hospital_id", "doctor_id") VALUES
	('5','Service Related Complaint ','2022-05-11',NULL,'0','1','0','Poor Attention for patients','3',NULL,NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_date", "complaint_reply", "complaint_status", "user_id", "consultancy_id", "complaint_content", "complainttype_id", "hospital_id", "doctor_id") VALUES
	('6','Service Related Complaint ','2022-05-11',NULL,'0','1','0','Poor Attention for patients','3',NULL,NULL);
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
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_consultancy'
#

LOCK TABLES "tbl_consultancy" WRITE;
/*!40000 ALTER TABLE "tbl_consultancy" DISABLE KEYS;*/
REPLACE INTO "tbl_consultancy" ("consultancy_id", "consultancy_name", "hospital_id", "consultancy_head", "consultancy_logo", "consultancy_password") VALUES
	('1','Patientcare','1','A R Mahima','uset_1056.png','123');
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
) AUTO_INCREMENT=23;



#
# Dumping data for table 'tbl_davailability'
#

LOCK TABLES "tbl_davailability" WRITE;
/*!40000 ALTER TABLE "tbl_davailability" DISABLE KEYS;*/
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('21','2','00:00:00','04:00:00','2022-05-16','1');
REPLACE INTO "tbl_davailability" ("da_id", "doctor_id", "da_fromtime", "da_totime", "da_date", "consultancy_id") VALUES
	('22','4','10:20:00','11:30:00','2022-05-19','1');
/*!40000 ALTER TABLE "tbl_davailability" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_department'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_department" (
  "dept_id" int(10) unsigned NOT NULL auto_increment,
  "dept_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("dept_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_department'
#

LOCK TABLES "tbl_department" WRITE;
/*!40000 ALTER TABLE "tbl_department" DISABLE KEYS;*/
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('1','Ortho');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('2','Pediatrics');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('3','Gynaecology');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('4','Cardiology');
REPLACE INTO "tbl_department" ("dept_id", "dept_name") VALUES
	('5','Neurology');
/*!40000 ALTER TABLE "tbl_department" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('1','Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('2','Ernakulam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('3','Alappuzha');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('4','Thrissur');
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
  "doctors_qualification" varchar(500) NOT NULL,
  "doctors_pswrd" varchar(50) default NULL,
  "doctors_doj" date default NULL,
  "doctors_isactive" int(10) unsigned default '0',
  "department_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("doctors_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_doctors'
#

LOCK TABLES "tbl_doctors" WRITE;
/*!40000 ALTER TABLE "tbl_doctors" DISABLE KEYS;*/
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(2,'Dr Arunima R','9876543210','aruniam@gmail.com','female','Palackal (H)
Pathura','1','1','uset_2006.jpg','M.B.B.S','123456','2022-05-10','0','1');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(3,'Dr Sahri Hari','9876543212','sahri@gmail.com','male','Hake(H)
Kunnapuram','4','1','uset_1227.png','M.B.B.S 
MD','123098','2022-05-11','0','4');
REPLACE INTO "tbl_doctors" ("doctors_id", "doctors_name", "doctors_contact", "doctors_email", "doctors_gender", "doctors_address", "place_id", "hospital_id", "doctors_photo", "doctors_qualification", "doctors_pswrd", "doctors_doj", "doctors_isactive", "department_id") VALUES
	(4,'Dr Kaathrine Rose','9876545211','kaathrine@gmail.com','female','Pariyaram P.O
Pariyaram','1','1','uset_1791.png','M.B.B.S
M.D','mnbvcxza','2022-05-11','0','5');
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
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_feedback'
#

LOCK TABLES "tbl_feedback" WRITE;
/*!40000 ALTER TABLE "tbl_feedback" DISABLE KEYS;*/
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date", "user_id", "hospital_id", "doctor_id", "consultancy_id") VALUES
	(1,'This site seems to be very Usefull','2022-05-11',NULL,NULL,NULL,1);
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
) AUTO_INCREMENT=217;



#
# Dumping data for table 'tbl_generatetoken'
#

LOCK TABLES "tbl_generatetoken" WRITE;
/*!40000 ALTER TABLE "tbl_generatetoken" DISABLE KEYS;*/
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('207','TID1167','21',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('208','TID1529','21',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('209','TID1450','21',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('210','TID1269','21',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('211','TID1376','21',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('212','TID1070','22',1);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('213','TID1397','22',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('214','TID1631','22',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('215','TID1686','22',0);
REPLACE INTO "tbl_generatetoken" ("gtoken_id", "token_no", "da_id", "token_bookstatus") VALUES
	('216','TID1678','22',0);
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
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_hospital'
#

LOCK TABLES "tbl_hospital" WRITE;
/*!40000 ALTER TABLE "tbl_hospital" DISABLE KEYS;*/
REPLACE INTO "tbl_hospital" ("hospital_id", "hospital_name", "hospital_contact", "hospital_email", "hospital_address", "place_id", "hospital_logo", "hospital_proof", "hospitaltype_id", "hospital_pswrd", "hospital_isactive", "hospital_doj", "hospital_vstatus") VALUES
	('1','Holly Family Hospital','9876543211','hollyfamily@gmail.com','Muthalakkudam P.O
Thodupuzha','2','uset_1484.png','uset_1019.png','1','12345Abc',0,'2022-05-10','1');
REPLACE INTO "tbl_hospital" ("hospital_id", "hospital_name", "hospital_contact", "hospital_email", "hospital_address", "place_id", "hospital_logo", "hospital_proof", "hospitaltype_id", "hospital_pswrd", "hospital_isactive", "hospital_doj", "hospital_vstatus") VALUES
	('2','District Government Hospital','8976543211','disgov@gmail.com','Chattikulam P.O
Chalakkudy','5','uset_1255.png','uset_1844.png','2','zxcvbnM1',0,'2022-05-11','1');
/*!40000 ALTER TABLE "tbl_hospital" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_hospitaltype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_hospitaltype" (
  "hospitaltype_id" int(10) unsigned NOT NULL auto_increment,
  "hospitaltype_name" varchar(50) default NULL,
  PRIMARY KEY  ("hospitaltype_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_hospitaltype'
#

LOCK TABLES "tbl_hospitaltype" WRITE;
/*!40000 ALTER TABLE "tbl_hospitaltype" DISABLE KEYS;*/
REPLACE INTO "tbl_hospitaltype" ("hospitaltype_id", "hospitaltype_name") VALUES
	('1','Private');
REPLACE INTO "tbl_hospitaltype" ("hospitaltype_id", "hospitaltype_name") VALUES
	('2','Government');
/*!40000 ALTER TABLE "tbl_hospitaltype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_medicalreport'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_medicalreport" (
  "mr_id" int(10) unsigned NOT NULL auto_increment,
  "cd_id" int(10) unsigned NOT NULL,
  "mr_title" varchar(100) NOT NULL,
  "mr_remark" varchar(100) NOT NULL,
  "mr_medicine" varchar(100) NOT NULL,
  "mr_ismajor" varchar(50) NOT NULL,
  "mr_majordetails" varchar(500) NOT NULL,
  "mr_report" varchar(100) NOT NULL,
  PRIMARY KEY  ("mr_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_medicalreport'
#

LOCK TABLES "tbl_medicalreport" WRITE;
/*!40000 ALTER TABLE "tbl_medicalreport" DISABLE KEYS;*/
REPLACE INTO "tbl_medicalreport" ("mr_id", "cd_id", "mr_title", "mr_remark", "mr_medicine", "mr_ismajor", "mr_majordetails", "mr_report") VALUES
	('1','1','Medical Report of Heena','Osteoarthritis. Rheumatoid Arthritis. Treatment for Arthritis.','Acetaminophen. Acetaminophen','yes','Orthopedic conditions are injuries and diseases that affect the musculoskeletal system. This body system includes the muscles, bones, nerves, joints, ligaments, tendons, and other connective tissues. Damage to any of these tissues or structures can come from chronic orthopedic diseases or from an injury.','uset_1031.png');
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
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('1','Muvattupuzha','2');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('2','Muthalakkudam','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('3','Angamaly','2');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('4','Moolamattom','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('5','Chalakkudy','4');
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
  "user_address" varchar(500) NOT NULL,
  "user_gender" varchar(50) NOT NULL,
  "user_photo" varchar(50) NOT NULL,
  "user_pswrd" varchar(10) default NULL,
  "place_id" int(10) unsigned default NULL,
  "user_pid" varchar(50) default NULL,
  "user_doj" date default NULL,
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('1','Heena S','heena@gmail.com','9876543211','Puthanpural  (H)
Pariyaram','female','uset_1915.png','12345678Aa','11','PID1162','2022-05-10');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('2','Sarah Joseph','sara@gmail.com','9876545211','Delarim (H)
KUttipuzha','female','uset_1239.png','09876543Mm','5','PID1513','2022-05-11');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_contact", "user_address", "user_gender", "user_photo", "user_pswrd", "place_id", "user_pid", "user_doj") VALUES
	('3','Hannah Benn','hanna@gmail.com','9544239156','Aalathu (H) Kaathor P.O
Thrissur','female','uset_2069.png','poiuytreE1','5','PID1079','2022-05-12');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
