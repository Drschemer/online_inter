-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: nara_online
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `nara_online`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nara_online` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nara_online`;

--
-- Table structure for table `tbl_area_manager`
--

DROP TABLE IF EXISTS `tbl_area_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_area_manager` (
  `f_area_id` int NOT NULL AUTO_INCREMENT,
  `f_area_code_country` int NOT NULL,
  `f_area_code` varchar(10) NOT NULL,
  `f_user_name_th` varchar(255) NOT NULL,
  `f_user_name_en` varchar(255) DEFAULT NULL,
  `f_branch_code` int NOT NULL,
  `f_branch_name_th` varchar(255) NOT NULL,
  `f_branch_name_en` varchar(255) DEFAULT NULL,
  `f_area_status` bit(1) NOT NULL,
  PRIMARY KEY (`f_area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_area_manager`
--

LOCK TABLES `tbl_area_manager` WRITE;
/*!40000 ALTER TABLE `tbl_area_manager` DISABLE KEYS */;
INSERT INTO `tbl_area_manager` VALUES (1,888,'100808028','นิคม ตาลหอม','nikom Tanhom',101,'นารา เอราวัณ','Nara Erawan',_binary ''),(2,888,'100808028','นิคม ตาลหอม','nikom Tanhom',103,'นารา เซ็นทรัลเวิลด์','NARA Central World',_binary ''),(3,888,'100208002','วสันต์ นฤหายะ','Wasan Naritaya',105,'นารา เซ็นทรัลแอมบาสซี','NARA Embassy',_binary ''),(4,888,'100808028','นิคม ตาลหอม','nikom Tanhom',106,'นารา เอ็มควอเทียร์','NARA EmQuartier',_binary ''),(5,888,'100808028','นิคม ตาลหอม','nikom Tanhom',107,'นารา สยามพารากอน','NARA Siam Paragon',_binary ''),(6,888,'100208002','วสันต์ นฤหายะ','Wasan Naritaya',111,'นารา เทอมินอล 21 พัทยา','NARA T21 Pattaya',_binary ''),(7,888,'100208002','วสันต์ นฤหายะ','Wasan Naritaya',112,'ไอคอนสยาม','Icon Siam',_binary ''),(8,888,'101808522','ศศิธร  เจียรสกุล','sasithorn Jierasakul',116,'นารา วันนิมมาน','NARA One Nimman',_binary ''),(9,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',119,'อั้งม้อ-ทองหล่อ','Angmorr-Thonglor',_binary ''),(10,888,'101808522','ศศิธร  เจียรสกุล','sasithorn Jierasakul',123,'บ้านนอก-หลังสวน','Baan Nok-Langsuan',_binary ''),(11,888,'100208002','วสันต์ นฤหายะ','Wasan Naritaya',124,'สุขสยาม','Sook siam',_binary ''),(12,888,'100808028','นิคม ตาลหอม','nikom Tanhom',125,'ดิ เอ็มสเฟียร์','The Emsphere',_binary ''),(13,888,'100208002','วสันต์ นฤหายะ','Wasan Naritaya',126,'นารา เทอมินอล 21 อโศก','NARA T21 Asoke',_binary ''),(14,777,'102301161','ภาคภูมิ โฉมฉาย','Pakpoom Chomchay',777,'สนง','HQ',_binary ''),(15,888,'102301161','สุวัฒน์ กุลไพจิตร','Suvat Kulpaichit',777,'สนง','HQ',_binary '\0'),(16,888,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin',201,'Co Ltd เวลาสินธรวิลเลจหลังสวน','Co Ltd Velaa',_binary ''),(17,888,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin',202,'Co Ltd สยามพารากอน','Co Ltd Siam Paragon',_binary '\0'),(18,888,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin',203,'Co Ltd เซ็นทรัลเวิลด์','Co Ltd Central wOrld',_binary ''),(19,888,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin',204,'Co Ltd เอ็มสเฟียร์','Co Ltd Emsphere',_binary ''),(20,666,'101601089','มานา  แก้วแท้','Manar Kaewtae',301,'Central Kitchen','ครัวคาว กลาง',_binary ''),(21,666,'101601089','มานา  แก้วแท้','Manar Kaewtae',302,'Central Dessert Kitchen','ครัวหวาน กลาง',_binary ''),(22,666,'101601089','มานา  แก้วแท้','Manar Kaewtae',116,'นารา วันนิมมาน-ครัว','NARA One Nimman Kitchen',_binary ''),(23,666,'101601089','มานา  แก้วแท้','Manar Kaewtae',111,'นารา เทอมินอล 21 พัทยา-ครัว','NARA T21 Pattaya Kitchen',_binary ''),(35,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',101,'นารา เอราวัณ','Nara Erawan',_binary ''),(36,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',103,'นารา เซ็นทรัลเวิลด์','NARA Central World',_binary ''),(37,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',105,'นารา เซ็นทรัลแอมบาสซี','NARA Embassy',_binary ''),(38,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',106,'นารา เอ็มควอเทียร์','NARA EmQuartier',_binary ''),(39,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',107,'นารา สยามพารากอน','NARA Siam Paragon',_binary ''),(40,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',111,'นารา เทอมินอล 21 พัทยา','NARA T21 Pattaya',_binary ''),(41,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',112,'ไอคอนสยาม','Icon Siam',_binary ''),(42,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',116,'นารา วันนิมมาน','NARA One Nimman',_binary ''),(43,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',119,'อั้งม้อ-ทองหล่อ','Angmorr-Thonglor',_binary ''),(44,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',123,'บ้านนอก-หลังสวน','Baan Nok-Langsuan',_binary ''),(45,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',124,'สุขสยาม','Sook siam',_binary ''),(46,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',125,'ดิ เอ็มสเฟียร์','The Emsphere',_binary ''),(47,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',126,'นารา เทอมินอล 21 อโศก','NARA T21 Asoke',_binary ''),(48,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',201,'Co Ltd เวลาสินธรวิลเลจหลังสวน','Co Ltd Velaa',_binary ''),(49,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',202,'Co Ltd สยามพารากอน','Co Ltd Siam Paragon',_binary '\0'),(50,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',203,'Co Ltd เซ็นทรัลเวิลด์','Co Ltd Central wOrld',_binary ''),(51,900,'101412039','Dessert and Bar Checklist','Dessert and Bar Checklist',204,'Co Ltd เอ็มสเฟียร์','Co Ltd Emsphere',_binary ''),(52,999,'123456789','John Doe','John Doe',900,'International','International',_binary ''),(53,666,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton',105,'นารา เซ็นทรัลแอมบาสซี','NARA Embassy',_binary ''),(54,666,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton',101,'นารา เอราวัณ','Nara Erawan',_binary ''),(55,666,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton',123,'บ้านนอก-หลังสวน','Baan Nok-Langsuan',_binary ''),(56,666,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam',103,'นารา เซ็นทรัลเวิลด์','NARA Central World',_binary ''),(57,666,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam',106,'นารา เอ็มควอเทียร์','NARA EmQuartier',_binary ''),(58,666,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam',125,'ดิ เอ็มสเฟียร์','The Emsphere',_binary ''),(59,666,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam',107,'นารา สยามพารากอน','NARA Siam Paragon',_binary ''),(60,666,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul',201,'Co Ltd เวลาสินธรวิลเลจหลังสวน','Co Ltd Velaa',_binary ''),(61,12,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul',202,'Co Ltd สยามพารากอน','Co Ltd Siam Paragon',_binary '\0'),(62,666,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul',203,'Co Ltd เซ็นทรัลเวิลด์','Co Ltd Central wOrld',_binary ''),(63,666,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul',204,'Co Ltd เอ็มสเฟียร์','Co Ltd Emsphere',_binary ''),(64,666,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha',119,'อั้งม้อ-ทองหล่อ','Angmorr-Thonglor',_binary ''),(65,666,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha',112,'ไอคอนสยาม','Icon Siam',_binary ''),(66,666,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha',124,'สุขสยาม','Sook siam',_binary ''),(67,666,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha',126,'นารา เทอมินอล 21 อโศก','NARA T21 Asoke',_binary ''),(68,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',250,'แอนคั่วไก่ เอ็มควอเทียร์','AKG EMQ',_binary ''),(69,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',251,'แอนคั่วไก่ ฮักไทย','AKG Hugthai',_binary ''),(70,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',252,'แอนคั่วไก่ เดอะมอลล์ท่าพระ','AKG Thapra',_binary ''),(71,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',253,'แอนคั่วไก่ เดอะกลาส บางนา','AKG The Glass',_binary ''),(72,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',254,'แอนคั่วไก่ เดอะมอลล์งามวงวาน','AKG Ngamwongwan',_binary ''),(73,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',255,'แอนคั่วไก่ เซ็นทรัลดุสิต','AKG Central Dusit',_binary ''),(74,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',256,'แอนคั่วไก่ สยามพารากอน','AKG Siam Paragon',_binary ''),(75,888,'101808522','ศศิธร  เจียรสกุล','sasithorn Jierasakul',401,'หมี่บ้านเอง เซ็นทรัลดุสิต','MBE Central Dusit',_binary ''),(76,888,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon',257,'แอนคั่วไก่ เซ็นทรัลปิ่นเกล้า','AKG Central Pinkao',_binary '');
/*!40000 ALTER TABLE `tbl_area_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bcl1_checklist`
--

DROP TABLE IF EXISTS `tbl_bcl1_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bcl1_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_36` int NOT NULL,
  `f_comment_36` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_37` int NOT NULL,
  `f_comment_37` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_38` int NOT NULL,
  `f_comment_38` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_39` int NOT NULL,
  `f_comment_39` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_40` int NOT NULL,
  `f_comment_40` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_41` int NOT NULL,
  `f_comment_41` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_42` int NOT NULL,
  `f_comment_42` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_43` int NOT NULL,
  `f_comment_43` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_44` int NOT NULL,
  `f_comment_44` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_45` int NOT NULL,
  `f_comment_45` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bcl1_checklist`
--

LOCK TABLES `tbl_bcl1_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_bcl1_checklist` DISABLE KEYS */;
INSERT INTO `tbl_bcl1_checklist` VALUES (3,'111910006','116','101808522','2025-08-30','BCL01',1,'','BCL02',1,'','BCL03',1,'','BCL04',1,'','BCL05',1,'','BCL06',2,'สายไฟไม่ได้รัดสายให้เรียบร้อยครับ','BCL07',1,'','BCL08',1,'','BCL09',1,'','BCL10',1,'','BCL11',1,'','BCL12',1,'','BCL13',1,'','BCL14',1,'','BCL15',1,'','BCL16',1,'','BCL17',1,'','BCL18',1,'','BCL19',1,'','BCL20',1,'','BCL21',1,'','BCL22',1,'','BCL23',1,'','BCL24',1,'','BCL25',1,'','BCL26',1,'','BCL27',2,'กระเบื้องพื้นบาร์แตกยาแนวขอบรางคัตเตอร์​ชำรุด','BCL28',1,'','BCL29',1,'','BCL30',1,'','BCL31',1,'','BCL32',1,'','BCL33',1,'','BCL34',1,'','BCL35',1,'','BCL36',1,'','BCL37',1,'','BCL38',1,'','BCL39',1,'','BCL40',1,'','BCL41',1,'','BCL42',1,'','BCL43',1,'','BCL44',1,'','BCL45',0,'ไม่ได้ใช้งานแล้ว แต่มีการสื่อสารผ่านไลน์​กลุ่ม สาขาแทนครับ'),(4,'111910006','116','101808522','2025-09-07','BCL01',1,'','BCL02',1,'','BCL03',1,'','BCL04',1,'','BCL05',1,'','BCL06',1,'','BCL07',1,'','BCL08',1,'','BCL09',2,'ไม่มีผ้าสำหรับเช็ดเขียงโดยเฉพาะครับ  กำชับให้แก้ไขเรียบร้อย​ครับ​','BCL10',1,'','BCL11',1,'','BCL12',1,'','BCL13',1,'','BCL14',1,'','BCL15',1,'','BCL16',1,'','BCL17',1,'','BCL18',1,'','BCL19',1,'','BCL20',1,'','BCL21',1,'','BCL22',1,'','BCL23',1,'','BCL24',1,'','BCL25',1,'','BCL26',1,'','BCL27',2,'พื้นกระเบื้องแตกและขอบยาแนวรางคัตเตอร์​มีน้ำขัง แจ้ง​ซ่อมไปแล้วครับ ','BCL28',1,'','BCL29',1,'','BCL30',1,'','BCL31',1,'','BCL32',1,'','BCL33',1,'','BCL34',1,'','BCL35',1,'','BCL36',1,'','BCL37',1,'','BCL38',1,'','BCL39',1,'','BCL40',1,'','BCL41',1,'','BCL42',1,'','BCL43',1,'','BCL44',1,'','BCL45',1,''),(5,'111910006','116','101808522','2025-09-14','BCL01',1,'','BCL02',1,'','BCL03',1,'','BCL04',1,'','BCL05',1,'','BCL06',1,'','BCL07',1,'','BCL08',1,'','BCL09',2,'ไม่มีการแบ่งสีผ้าสำหรับเช็ดเขียง','BCL10',1,'','BCL11',1,'','BCL12',1,'','BCL13',1,'','BCL14',1,'','BCL15',1,'','BCL16',1,'','BCL17',1,'','BCL18',1,'','BCL19',1,'','BCL20',1,'','BCL21',1,'','BCL22',1,'','BCL23',1,'','BCL24',1,'','BCL25',1,'','BCL26',1,'','BCL27',2,'พื้นบาร์ชำรุดอยู่ในระหว่างแจ้งซ่อมแซมครับ','BCL28',1,'','BCL29',1,'','BCL30',1,'','BCL31',1,'','BCL32',1,'','BCL33',1,'','BCL34',1,'','BCL35',1,'','BCL36',1,'','BCL37',1,'','BCL38',1,'','BCL39',1,'','BCL40',1,'','BCL41',1,'','BCL42',1,'','BCL43',1,'','BCL44',1,'','BCL45',1,''),(7,'111910006','116','101808522','2025-09-20','BCL01',1,'','BCL02',1,'','BCL03',1,'','BCL04',1,'','BCL05',1,'','BCL06',1,'','BCL07',1,'','BCL08',1,'','BCL09',1,'','BCL10',1,'','BCL11',1,'','BCL12',1,'','BCL13',1,'','BCL14',1,'','BCL15',1,'','BCL16',1,'','BCL17',1,'','BCL18',1,'','BCL19',1,'','BCL20',1,'','BCL21',1,'','BCL22',1,'','BCL23',1,'','BCL24',1,'','BCL25',1,'','BCL26',1,'','BCL27',2,'พื้นบาร์ชำรุดอยู่ระหว่างดำเนินการแจ้งซ่อมครับ','BCL28',1,'','BCL29',1,'','BCL30',1,'','BCL31',1,'','BCL32',1,'','BCL33',1,'','BCL34',1,'','BCL35',1,'','BCL36',1,'','BCL37',1,'','BCL38',1,'','BCL39',1,'','BCL40',1,'','BCL41',1,'','BCL42',1,'','BCL43',1,'','BCL44',1,'','BCL45',1,''),(8,'111910006','116','101808522','2025-09-27','BCL01',1,'','BCL02',1,'','BCL03',1,'','BCL04',1,'','BCL05',1,'','BCL06',1,'','BCL07',1,'','BCL08',1,'','BCL09',2,'ไม่มีผ้าสำหรับเช็ดเขียงโดยเฉพาะ​','BCL10',1,'','BCL11',1,'','BCL12',1,'','BCL13',1,'','BCL14',1,'','BCL15',1,'','BCL16',1,'','BCL17',1,'','BCL18',1,'','BCL19',1,'','BCL20',1,'','BCL21',1,'','BCL22',1,'','BCL23',1,'','BCL24',1,'','BCL25',1,'','BCL26',1,'','BCL27',2,'พื้นบาร์​ชำรุด​รอแก้ไขจากทาง PM','BCL28',1,'','BCL29',1,'','BCL30',1,'','BCL31',1,'','BCL32',1,'','BCL33',1,'','BCL34',1,'','BCL35',1,'','BCL36',1,'','BCL37',1,'','BCL38',1,'','BCL39',1,'','BCL40',1,'','BCL41',1,'','BCL42',1,'','BCL43',1,'','BCL44',1,'','BCL45',1,'');
/*!40000 ALTER TABLE `tbl_bcl1_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bcl1_image`
--

DROP TABLE IF EXISTS `tbl_bcl1_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bcl1_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_36` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_37` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_38` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_39` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_40` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_41` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_42` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_43` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_44` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_45` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bcl1_image`
--

LOCK TABLES `tbl_bcl1_image` WRITE;
/*!40000 ALTER TABLE `tbl_bcl1_image` DISABLE KEYS */;
INSERT INTO `tbl_bcl1_image` VALUES (1,1,'102201018',101,'2025-08-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL05','17555860495.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'102201018',103,'2025-08-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL08','17555869008.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'111910006',116,'2025-08-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL06','17565364536.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL27','175653645327.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'111910006',116,'2025-09-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL09','17572255359.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL27','175722553527.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,'111910006',116,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL09','17578371469.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL27','175783714627.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,'111910006',116,'2025-09-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL27','175835304727.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,'111910006',116,'2025-09-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL09','17589694229.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCL27','175896942227.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_bcl1_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bcl1_topic_detail`
--

DROP TABLE IF EXISTS `tbl_bcl1_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bcl1_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `f_topic_detail_th` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_topic_detail_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_topic_status` int NOT NULL,
  PRIMARY KEY (`f_topic_id`),
  UNIQUE KEY `tbl_dca1_topic_detail` (`f_topic_code`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bcl1_topic_detail`
--

LOCK TABLES `tbl_bcl1_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_bcl1_topic_detail` DISABLE KEYS */;
INSERT INTO `tbl_bcl1_topic_detail` VALUES (1,1,'BCL01','มีการเช็คความพร้อมก่อนขาย โดยมีการประชุมกะแจ้งทุกฝ่ายว่ามีวัตถุดิบใดเหลือเท่าไหร่ หรือ จะขายตัวไหนเป็นพิเศษ','มีการเช็คความพร้อมก่อนขาย โดยมีการประชุมกะแจ้งทุกฝ่ายว่ามีวัตถุดิบใดเหลือเท่าไหร่ หรือ จะขายตัวไหนเป็นพิเศษ',1),(2,2,'BCL02','อุปกรณ์ในบาร์ทุกชิ้นต้องเป็นอุปกรณ์มาตรฐานซึ่งส่วนกลางเป็นผู้จัดให้ทุกร้านเหมือนกันหมด','อุปกรณ์ในบาร์ทุกชิ้นต้องเป็นอุปกรณ์มาตรฐานซึ่งส่วนกลางเป็นผู้จัดให้ทุกร้านเหมือนกันหมด',1),(3,2,'BCL03','อุปกรณ์ในบาร์สะอาดและพร้อมใช้งานไม่ชำรุดหรือแตกหัก ไม่มีวัตถุแปลกปลอมบนอุปกรณ์','อุปกรณ์ในบาร์สะอาดและพร้อมใช้งานไม่ชำรุดหรือแตกหัก ไม่มีวัตถุแปลกปลอมบนอุปกรณ์',1),(4,2,'BCL04','เช็คและจัดเก็บอุปกรณ์บาร์ต่างๆ / ขวดซอสต่างๆได้อย่างเรียบร้อย','เช็คและจัดเก็บอุปกรณ์บาร์ต่างๆ / ขวดซอสต่างๆได้อย่างเรียบร้อย',1),(5,2,'BCL05','ไม่มีหนังสติ๊กในบาร์','ไม่มีหนังสติ๊กในบาร์',1),(6,2,'BCL06','สายไฟมีการมัดด้วยเข็มขัดรัดสายไฟเป็นระเบียบเรียบร้อย','สายไฟมีการมัดด้วยเข็มขัดรัดสายไฟเป็นระเบียบเรียบร้อย',1),(7,2,'BCL07','ภาชนะใส่ Garnish อยู่ในสภาพดี','ภาชนะใส่ Garnish อยู่ในสภาพดี',1),(8,2,'BCL08','พนักงานไม่นำภาชนะที่ใช้สำหรับเสิร์ฟอาหารลูกค้ามาใช้ส่วนตัว และเตรียมอาหาร','พนักงานไม่นำภาชนะที่ใช้สำหรับเสิร์ฟอาหารลูกค้ามาใช้ส่วนตัว และเตรียมอาหาร',1),(9,2,'BCL09','มีการแบ่งประเภทผ้าสำหรับเช็ดอุปกรณ์ และเช็ด counter อย่างชัดเจน','มีการแบ่งประเภทผ้าสำหรับเช็ดอุปกรณ์ และเช็ด counter อย่างชัดเจน',1),(10,2,'BCL10','ใช้ผลิตภัณฑ์ที่กำหนดในการทำความสะอาดอุปกรณ์ ทุกชนิด ก่อนและหลังการใช้งาน และ ปิดการขาย','ใช้ผลิตภัณฑ์ที่กำหนดในการทำความสะอาดอุปกรณ์ ทุกชนิด ก่อนและหลังการใช้งาน และ ปิดการขาย',1),(11,3,'BCL11','ใส่วัตถุดิบต่างๆ และส่วนผสมครบถ้วนตามสูตรมาตรฐาน','ใส่วัตถุดิบต่างๆ และส่วนผสมครบถ้วนตามสูตรมาตรฐาน',1),(12,3,'BCL12','มาตรฐานการใช้เครื่องมือ \"ชั่ง / ตวง / วัด\" ต้องทำทุกจานที่ผสมออกไปให้ลูกค้า','มาตรฐานการใช้เครื่องมือ \"ชั่ง / ตวง / วัด\" ต้องทำทุกจานที่ผสมออกไปให้ลูกค้า',1),(13,3,'BCL13','ขั้นตอนการผสมถูกต้องตามสูตรมาตรฐาน และไม่มีสิ่งปนเปื้อนในอาหาร','ขั้นตอนการผสมถูกต้องตามสูตรมาตรฐาน และไม่มีสิ่งปนเปื้อนในอาหาร',1),(14,3,'BCL14','รูปร่าง หน้าตา และสีสัน กลิ่นและรสชาติ ของเครื่องดื่มและของหวานเป็นไปตามสูตรมาตรฐาน','รูปร่าง หน้าตา และสีสัน กลิ่นและรสชาติ ของเครื่องดื่มและของหวานเป็นไปตามสูตรมาตรฐาน',1),(15,3,'BCL15','การอุ่นของหวาน เป็นไปตามตามมาตรฐานที่กำหนด','การอุ่นของหวาน เป็นไปตามตามมาตรฐานที่กำหนด',1),(16,3,'BCL16','ใช้ภาชนะที่ถูกต้องตามมาตรฐานของบริษัทในการใส่เครื่องดื่ม และของหวานให้ลูกค้า','ใช้ภาชนะที่ถูกต้องตามมาตรฐานของบริษัทในการใส่เครื่องดื่ม และของหวานให้ลูกค้า',1),(17,3,'BCL17','ขณะเสิร์ฟ  อุณหภูมิของเครื่องดื่ม และของหวาน ต้องตรงตามมาตรฐานของบริษัท','ขณะเสิร์ฟ  อุณหภูมิของเครื่องดื่ม และของหวาน ต้องตรงตามมาตรฐานของบริษัท',1),(18,3,'BCL18','การจัดแต่งเครื่องดื่ม และของหวาน มีปริมาณที่เหมาะสม รูปลักษณ์เป็นไปตามมาตรฐาน','การจัดแต่งเครื่องดื่ม และของหวาน มีปริมาณที่เหมาะสม รูปลักษณ์เป็นไปตามมาตรฐาน',1),(19,4,'BCL19','อุณหภูมิบริเวณในบาร์อยู่ที่ 25 องศา +/- 2 องศา','อุณหภูมิบริเวณในบาร์อยู่ที่ 25 องศา +/- 2 องศา',1),(20,4,'BCL20','ไม่มีการทิ้งเศษอาหาร ถุงพลาสติก บนพื้นในบาร์','ไม่มีการทิ้งเศษอาหาร ถุงพลาสติก บนพื้นในบาร์',1),(21,4,'BCL21','ถังขยะทุกจุดเป็นแบบเหยียบ (ยกเว้นถังขยะใต้หลุมทิ้งอาหาร)','ถังขยะทุกจุดเป็นแบบเหยียบ (ยกเว้นถังขยะใต้หลุมทิ้งอาหาร)',1),(22,4,'BCL22','เครื่องปรับอากาศ และช่องระบายอากาศสะอาดอยู่ในสภาพดี ไม่มีหยากไย่','เครื่องปรับอากาศ และช่องระบายอากาศสะอาดอยู่ในสภาพดี ไม่มีหยากไย่',1),(23,4,'BCL23','ไม่พบแมลงวัน,หนู,แมลงสาบ และพาหะนำโรคอื่นๆ','ไม่พบแมลงวัน,หนู,แมลงสาบ และพาหะนำโรคอื่นๆ',1),(24,4,'BCL24','ไม่มีกลิ่นหนู,แมลงสาบ และกลิ่นไม่พึงประสงค์','ไม่มีกลิ่นหนู,แมลงสาบ และกลิ่นไม่พึงประสงค์',1),(25,4,'BCL25','มีการล้างทำความสะอาด เครื่องปั่น / เครื่องกาแฟ / ตู้แช่ และอื่นๆเรียบร้อยดี ','มีการล้างทำความสะอาด เครื่องปั่น / เครื่องกาแฟ / ตู้แช่ และอื่นๆเรียบร้อยดี ',1),(26,4,'BCL26','สีผนังสะอาดไม่มีรอยเปรอะเปื้อนถลอก และอยู่ในสภาพดี ','สีผนังสะอาดไม่มีรอยเปรอะเปื้อนถลอก และอยู่ในสภาพดี ',1),(27,4,'BCL27','พื้นบาร์ไม่ชำรุด หรือได้ซ่อมแซมให้เรียบร้อยแล้ว','พื้นบาร์ไม่ชำรุด หรือได้ซ่อมแซมให้เรียบร้อยแล้ว',1),(28,4,'BCL28','ทำความสะอาดอ่างล้างและบ่อดักไม่ให้มีเศษขยะตกค้าง / ทิ้งขยะและซักผ้า','ทำความสะอาดอ่างล้างและบ่อดักไม่ให้มีเศษขยะตกค้าง / ทิ้งขยะและซักผ้า',1),(29,4,'BCL29','มีสะดืออ่างชำระล้าง สามารถดักเศษอาหารได้ดี ไม่ชำรุด','มีสะดืออ่างชำระล้าง สามารถดักเศษอาหารได้ดี ไม่ชำรุด',1),(30,4,'BCL30','ก็อกน้ำสะอาดอยู่ในสภาพดี ไม่รั่วซึม  ไม่มีน้ำหยด  หัวฉีดล้างภาชนะสะอาดไม่มีคราบสกปรก','ก็อกน้ำสะอาดอยู่ในสภาพดี ไม่รั่วซึม  ไม่มีน้ำหยด  หัวฉีดล้างภาชนะสะอาดไม่มีคราบสกปรก',1),(31,4,'BCL31','ท่อระบายน้ำสะอาด และมีฝาปิด ตะแกรงท่อน้ำทิ้ง อยู่ในสภาพดี','ท่อระบายน้ำสะอาด และมีฝาปิด ตะแกรงท่อน้ำทิ้ง อยู่ในสภาพดี',1),(32,4,'BCL32','บ่อดักไขมันสะอาด และมีฝาปิดที่มิดชิด','บ่อดักไขมันสะอาด และมีฝาปิดที่มิดชิด',1),(33,4,'BCL33','ถังขยะอยู่ในสภาพดี ไม่ใส่ขยะจนล้น เมื่อเต็มควรมัดปากถุงให้เรียบร้อยก่อนนำไปทิ้งตามเวลาที่กำหนด','ถังขยะอยู่ในสภาพดี ไม่ใส่ขยะจนล้น เมื่อเต็มควรมัดปากถุงให้เรียบร้อยก่อนนำไปทิ้งตามเวลาที่กำหนด',1),(34,4,'BCL34','มีตารางทำความสะอาดอุปกรณ์แต่ละชนิดในรอบสัปดาห์','มีตารางทำความสะอาดอุปกรณ์แต่ละชนิดในรอบสัปดาห์',1),(35,4,'BCL35','ถังน้ำแข็งต้องไม่รั่วสะอาดอยู่ในสภาพดี ไม่มีคราบตะไคร่ ระหว่างวันควรปิดฝาไว้เพื่อป้องกันสิ่งแปลกปลอมตก','ถังน้ำแข็งต้องไม่รั่วสะอาดอยู่ในสภาพดี ไม่มีคราบตะไคร่ ระหว่างวันควรปิดฝาไว้เพื่อป้องกันสิ่งแปลกปลอมตก',1),(36,4,'BCL36','ภาชนะในการเสิร์ฟทุกชนิดสะอาด อยู่ในสภาพดี ใช้ภาชนะให้ถูกต้องตามมาตรฐานที่กำหนด','ภาชนะในการเสิร์ฟทุกชนิดสะอาด อยู่ในสภาพดี ใช้ภาชนะให้ถูกต้องตามมาตรฐานที่กำหนด',1),(37,5,'BCL37','มีแผนการฝึกพนักงานทุกคนในร้านที่ชัดเจน มีลงบันทึกการอบรมของพนักงานแต่ละคน(Training Record)','มีแผนการฝึกพนักงานทุกคนในร้านที่ชัดเจน มีลงบันทึกการอบรมของพนักงานแต่ละคน(Training Record)',1),(38,5,'BCL38','มีแผนการเข้างาน (Roster) ล่วงหน้าอย่างน้อย 2 สัปดาห์','มีแผนการเข้างาน (Roster) ล่วงหน้าอย่างน้อย 2 สัปดาห์',1),(39,5,'BCL39','มีการจัด Job Station ให้พนักงานอย่างถูกต้อง ','มีการจัด Job Station ให้พนักงานอย่างถูกต้อง ',1),(40,5,'BCL40','มีการลงบันทึก OE Book ในส่วนบาร์ อย่างถูกต้องและมีการเซ็นตรวจสอบ','มีการลงบันทึก OE Book ในส่วนบาร์ อย่างถูกต้องและมีการเซ็นตรวจสอบ',1),(41,5,'BCL41','มีการบันทึกของเน่าเสีย และของที่ทำผิด ระหว่างวัน','มีการบันทึกของเน่าเสีย และของที่ทำผิด ระหว่างวัน',1),(42,5,'BCL42','มีการลงบันทึกประจำวันของที่ถูกตีคืนจากลูกค้า','มีการลงบันทึกประจำวันของที่ถูกตีคืนจากลูกค้า',1),(43,5,'BCL43','มีการลงบันทึกประจำวันของที่ไม่มีจำหน่ายให้ลูกค้า','มีการลงบันทึกประจำวันของที่ไม่มีจำหน่ายให้ลูกค้า',1),(44,5,'BCL44','มีการลงบันทึกประจำวันวัตถุดิบที่หมดอายุ ','มีการลงบันทึกประจำวันวัตถุดิบที่หมดอายุ ',1),(45,5,'BCL45','มี Log Book ใช้งานทุกวัน  และมีการเซ็นรับทราบ','มี Log Book ใช้งานทุกวัน  และมีการเซ็นรับทราบ',1);
/*!40000 ALTER TABLE `tbl_bcl1_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_branch`
--

DROP TABLE IF EXISTS `tbl_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_branch` (
  `f_branch_id` int NOT NULL AUTO_INCREMENT,
  `f_branch_code` int NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_country` varchar(100) NOT NULL,
  `f_status` int NOT NULL,
  PRIMARY KEY (`f_branch_id`,`f_branch_code`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_branch`
--

LOCK TABLES `tbl_branch` WRITE;
/*!40000 ALTER TABLE `tbl_branch` DISABLE KEYS */;
INSERT INTO `tbl_branch` VALUES (1,101,'Nara Erawan','นารา เอราวัณ','Thailand',1),(2,103,'NARA Central World','นารา เซ็นทรัลเวิลด์','Thailand',1),(3,105,'NARA Embassy','นารา เซ็นทรัลแอมบาสซี','Thailand',1),(4,106,'NARA EmQuartier','นารา เอ็มควอเทียร์','Thailand',1),(5,107,'NARA Siam Paragon','นารา สยามพารากอน','Thailand',1),(6,111,'NARA T21 Pattaya','นารา เทอมินอล 21 พัทยา','Thailand',1),(7,112,'Icon Siam','ไอคอนสยาม','Thailand',1),(8,116,'NARA One Nimman','นารา วันนิมมาน','Thailand',1),(9,119,'Angmorr-Thonglor','อั้งม้อทองหล่อ','Thailand',1),(10,123,'Baan Nok-Langsuan','บ้านนอก-หลังสวน','Thailand',1),(11,124,'Sook siam','สุขสยาม','Thailand',1),(12,125,'The Emsphere','ดิ เอ็มสเฟียร์','Thailand',1),(13,126,'NARA T21 Asoke','นารา เทอมินอล 21 อโศก','Thailand',1),(14,127,'CTKF','CTKF','Thailand',1),(15,888,'Thai Area','ไทย แอรเรีย','Thailand',1),(16,999,'Reginal Area','ต่างประเทศ แอรเรีย','Country',1),(17,777,'HQ','สนง','Thailand',1),(18,201,'	Co Ltd Velaa','Co Ltd เวลาสินธรวิลเลจหลังสวน','Thailand',1),(19,202,'Co Ltd Siam Paragon','	Co Ltd สยามพารากอน','Thailand',0),(20,203,'Co Ltd Central wOrld','	Co Ltd เซ็นทรัลเวิลด์','Thailand',1),(21,204,'Co Ltd Emsphere','Co Ltd เอ็มสเฟียร์','Thailand',1),(22,301,'Central Kitchen','ครัวคาว กลาง','Thailand',1),(23,302,'Central Dessert Kitchen','ครัวหวาน กลาง','Thailand',1),(24,900,'International','International','Taiwan',1),(25,311,'NARA T21 Pattaya Kitchen','นารา เทอมินอล 21 พัทยา-ครัว','Thailand',1),(26,555,'Bar','Bar','Thailand',1),(27,666,'Kitchen','Kitchen','Thailand',1),(28,250,'AKG EMQ','แอนคั่วไก่ เอ็มควอเทียร์','Thailand',1),(29,251,'AKG Hugthai','แอนคั่วไก่ ฮักไทย','Thailand',1),(30,252,'AKG Thapra','แอนคั่วไก่ เดอะมอลล์ท่าพระ','Thailand',1),(31,253,'AKG The Glass','แอนคั่วไก่ เดอะกลาส บางนา','Thailand',1),(32,254,'AKG Ngamwongwan','แอนคั่วไก่ เดอะมอลล์งามวงวาน','Thailand',1),(33,255,'AKG Central Dusit','แอนคั่วไก่ เซ็นทรัลดุสิต','Thailand',1),(34,256,'AKG Siam Paragon','แอนคั่วไก่ สยามพารากอน','Thailand',1),(35,401,'MBE Central Dusit','หมี่บ้านเอง เซ็นทรัลดุสิต','Thailand',1),(36,257,'AKG Central Pinkao','แอนคั่วไก่ เซ็นทรัลปิ่นเกล้า','Thailand',1);
/*!40000 ALTER TABLE `tbl_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `f_category_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`f_category_id`,`f_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,1,'Ambience'),(2,2,'In mall media'),(3,3,'KPI performance'),(4,4,'Number of staff'),(5,5,'Online review'),(6,6,'Sale performance'),(7,7,'Service standard'),(8,8,'Shift management'),(9,9,'Staff grooming'),(10,10,'Staff training'),(11,11,'ความสะอาดโซน Dine-in');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_bcl1`
--

DROP TABLE IF EXISTS `tbl_category_bcl1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_bcl1` (
  `f_category_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`f_category_id`),
  UNIQUE KEY `tbl_category_dca1` (`f_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_bcl1`
--

LOCK TABLES `tbl_category_bcl1` WRITE;
/*!40000 ALTER TABLE `tbl_category_bcl1` DISABLE KEYS */;
INSERT INTO `tbl_category_bcl1` VALUES (1,1,'ประชุม'),(2,2,'อุปกรณ์ในบาร์ '),(3,3,'สูตรการทำเครื่องดื่ม ขั้นตอนการทำเครื่องดื่ม การอุ่นและจัดจานก่อนออกเสิร์ฟ'),(4,4,'อุปกรณ์และความสะอาดภายในบาร์'),(5,5,'การรับพนักงานและการควบคุมดูแล');
/*!40000 ALTER TABLE `tbl_category_bcl1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_dca1`
--

DROP TABLE IF EXISTS `tbl_category_dca1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_dca1` (
  `f_category_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`f_category_id`),
  UNIQUE KEY `tbl_category_dca1` (`f_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_dca1`
--

LOCK TABLES `tbl_category_dca1` WRITE;
/*!40000 ALTER TABLE `tbl_category_dca1` DISABLE KEYS */;
INSERT INTO `tbl_category_dca1` VALUES (1,1,'Material Care'),(2,2,'Personal care');
/*!40000 ALTER TABLE `tbl_category_dca1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_qscakg1`
--

DROP TABLE IF EXISTS `tbl_category_qscakg1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_qscakg1` (
  `f_category_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`f_category_id`),
  UNIQUE KEY `tbl_category_dca1` (`f_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_qscakg1`
--

LOCK TABLES `tbl_category_qscakg1` WRITE;
/*!40000 ALTER TABLE `tbl_category_qscakg1` DISABLE KEYS */;
INSERT INTO `tbl_category_qscakg1` VALUES (1,1,'Receiving / รับสินค้า - Storage / จัดเก็บ'),(2,2,'Preparation / เตรียมวัตถุดิบ'),(3,3,'Cooking / การปรุง'),(4,4,'Checking / จัดเสิร์ฟ'),(5,5,'Grooming / การแต่งกาย'),(6,6,'Front of House / หน้าร้านและบริเวณรอบร้าน'),(7,7,'Front of House / หน้าร้านและบริเวณรอบร้าน'),(8,8,'Safety ความปลอดภัย');
/*!40000 ALTER TABLE `tbl_category_qscakg1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_qsce1`
--

DROP TABLE IF EXISTS `tbl_category_qsce1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_qsce1` (
  `f_category_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`f_category_id`),
  UNIQUE KEY `tbl_category_dca1` (`f_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_qsce1`
--

LOCK TABLES `tbl_category_qsce1` WRITE;
/*!40000 ALTER TABLE `tbl_category_qsce1` DISABLE KEYS */;
INSERT INTO `tbl_category_qsce1` VALUES (1,1000,'Quality'),(2,2000,'Service'),(3,3000,'Cleanliness');
/*!40000 ALTER TABLE `tbl_category_qsce1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_qsce2`
--

DROP TABLE IF EXISTS `tbl_category_qsce2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_qsce2` (
  `f_category_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`f_category_id`),
  UNIQUE KEY `tbl_category_dca1` (`f_category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_qsce2`
--

LOCK TABLES `tbl_category_qsce2` WRITE;
/*!40000 ALTER TABLE `tbl_category_qsce2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_category_qsce2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dca1_checklist`
--

DROP TABLE IF EXISTS `tbl_dca1_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dca1_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_36` int NOT NULL,
  `f_comment_36` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_37` int NOT NULL,
  `f_comment_37` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_38` int NOT NULL,
  `f_comment_38` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_39` int NOT NULL,
  `f_comment_39` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_40` int NOT NULL,
  `f_comment_40` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_41` int NOT NULL,
  `f_comment_41` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_42` int NOT NULL,
  `f_comment_42` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_43` int NOT NULL,
  `f_comment_43` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_44` int NOT NULL,
  `f_comment_44` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_45` int NOT NULL,
  `f_comment_45` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_46` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_46` int NOT NULL,
  `f_comment_46` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_47` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_47` int NOT NULL,
  `f_comment_47` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_48` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_48` int NOT NULL,
  `f_comment_48` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_49` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_49` int NOT NULL,
  `f_comment_49` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_50` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_50` int NOT NULL,
  `f_comment_50` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_51` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_51` int NOT NULL,
  `f_comment_51` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_52` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_52` int NOT NULL,
  `f_comment_52` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_53` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_53` int NOT NULL,
  `f_comment_53` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_54` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_54` int NOT NULL,
  `f_comment_54` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_55` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_55` int NOT NULL,
  `f_comment_55` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_56` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_56` int NOT NULL,
  `f_comment_56` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_57` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_57` int NOT NULL,
  `f_comment_57` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_58` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_58` int NOT NULL,
  `f_comment_58` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_59` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_59` int NOT NULL,
  `f_comment_59` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_60` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_60` int NOT NULL,
  `f_comment_60` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_61` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_61` int NOT NULL,
  `f_comment_61` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_62` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_62` int NOT NULL,
  `f_comment_62` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_63` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_63` int NOT NULL,
  `f_comment_63` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_64` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_64` int NOT NULL,
  `f_comment_64` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_65` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_65` int NOT NULL,
  `f_comment_65` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_66` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_66` int NOT NULL,
  `f_comment_66` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dca1_checklist`
--

LOCK TABLES `tbl_dca1_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_dca1_checklist` DISABLE KEYS */;
INSERT INTO `tbl_dca1_checklist` VALUES (5,'102301138','112','102301138','2025-08-20','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางตู้เย็นมีเศษอาหารสกปรก','DCA04',1,'','DCA05',2,'มีคราบเลือดและเศษอาหาร','DCA06',1,'','DCA07',2,'บางรายการไม่มีติดวันหมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ประตู้เย็นมีคราบสกปรกคราบมือ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',2,'มีไม่เพียงพอต่อการใช้งานเนื่องจากกระทะล่อน','DCA48',2,'มีไม่เพียงพอต่อการใช้งาน','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(6,'102301138','126','102301138','2025-08-21','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางตู้เย็นสกปรก มีเชื้อรา บางตู้ฉีกขาด','DCA04',1,'','DCA05',2,'พบบางตู้เศษอาหาร','DCA06',2,'ขอบตู้แช่ มีคราบสกปรก','DCA07',2,'พบบางรายการไม่ติดวันหมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'บางรายการไม่ติด daydot','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'ไม่มีน้ำแข็งกลบให้ทั่วเนื้อสัตว์','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'ถับขยะมีคราบสกปรก','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'พบพนักงานหนวดเครายาว'),(7,'202501013','203','202501013','2025-08-21','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังเป็นคราบอยุ่ในขอบตู้เย็น','DCA04',2,'ประตูไม่สามารถปิดเองได้','DCA05',2,'มีคราบเลือด','DCA06',2,'มีคราบเลือด','DCA07',2,'ไม่มี lebel','DCA08',1,'','DCA09',2,'วางของไม่เป็นระเบียบ','DCA10',2,'วางของไม่เป็นระเบียบ','DCA11',2,'มีคราบสกปรก','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',2,'ยังไม่บางอย่างผิดพลาด','DCA17',2,'เขียงยังมีไม่ครบทุกสี','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'ไม่มีนาฬิกาในส่วนครัวทอดย่าง','DCA22',1,'','DCA23',0,'ไม่มีไฟอุ่นอาหาร','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',2,'ถั่วมีกลิ่นหืน','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',2,'ไม่มีน้ำแข็งกลบ','DCA44',1,'','DCA45',2,'มีเศษอาหารตาม sink','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'บางถังไม่มีฝาปิด','DCA51',2,'มีแค่จุดเดียวตรง steward','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'มีคราบด้านบน','DCA59',1,'','DCA60',2,'เศษอาหารตกค้างระหว่างวัน','DCA61',1,'','DCA62',2,'พบแมลงวันโซนด้านนอก','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(8,'102301138','119','102301138','2025-08-21','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบตู้เย็นมีคราบสกปรกและเชื้อรา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'พบตู้เย็นมีคราบไขมัน ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',2,'พบเจอวัตถุดิบหมดอายุและไม่เปลี่ยนวันอายุ','DCA17',0,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',0,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',0,'','DCA48',0,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',0,'พบสิ่งสกปรกในพื้นครัว','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(9,'102301138','112','102301138','2025-08-23','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'มีคราบสกปรก มีน้ำจัง','DCA06',2,'มีคราบเลือดคราบสกปรก','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบมือ คราบไขมัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',2,'พบวัตถุดิบหมดอายุ','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',2,'กระทะเทปล่อน หลุดล่อน','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'มีคราบไขมันฝังแน่นสกปรก ','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(10,'101405020','125','101405020','2025-08-23','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',2,'พบน้ำแข็งเกาะหนา','DCA07',2,'ไม่มี สติกเกอร์วันหมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'มีแค่1อันทั้งครัว','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',0,'','DCA35',1,'','DCA36',1,'','DCA37',0,'','DCA38',0,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(11,'101405020','107','101405020','2025-08-23','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',2,'ประตู้เย็นตู้f1ประตูชำรุด','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'ไม่ตรงตามมาตราฐาน','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',2,'ยังไม่กรอบ','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'ให้แก้ไขทันที','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',0,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',2,'พบหนูมากินของแห้งในสโตร์ตอนปิดร้าน ','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(12,'101405020','103','101405020','2025-08-24','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบอยู้','DCA04',0,'R2,F2,R1 R3,','DCA05',2,'ยังพบอยู่ ตู้ชิว','DCA06',1,'','DCA07',2,'จุดเช็ค ยังติดไม่ครบ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ยังพบจุดครัวทอดและย่างยัง มีคราบสกปรกอยู่บ้าง','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ถูกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'มียังไม่ครบ แจ้งดำเนินการใ้ห้แก้ไขทันที','DCA22',0,'อยู่ในขั้นตอนสั่งซื้อ','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',2,'มีของผิดประเภท','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',2,'มีเศษอาหารค้างจุดครัวทอด','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(13,'101405020','103','101405020','2025-08-24','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบอยู้','DCA04',0,'R2,F2,R1 R3,','DCA05',2,'ยังพบอยู่ ตู้ชิว','DCA06',1,'','DCA07',2,'จุดเช็ค ยังติดไม่ครบ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ยังพบจุดครัวทอดและย่างยัง มีคราบสกปรกอยู่บ้าง','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ถูกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'มียังไม่ครบ แจ้งดำเนินการใ้ห้แก้ไขทันที','DCA22',0,'อยู่ในขั้นตอนสั่งซื้อ','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',2,'มีของผิดประเภท','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',2,'มีเศษอาหารค้างจุดครัวทอด','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(14,'202501013','201','202501013','2025-08-25','DCA01',1,'','DCA02',1,'','DCA03',2,'มีเชื้อราขาว','DCA04',2,'ประตูตู้เย็นส่วนใหญ่ไม่สามารถปิดเองได้','DCA05',2,'มีคราบเลือด','DCA06',2,'มีครายเลือด','DCA07',2,'วันหมดอายุของทุกอย่าง คือ สิ้นเดือน','DCA08',1,'','DCA09',2,'เก็บไม่เป็นระเบียบอัดแน่นเกินไป','DCA10',2,'เก็บไม่เป็นระเบียบอัดแน่นเกินไป','DCA11',2,'ตู้เย็นมีคราบบ้างนิดหน่อย','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',2,'เขียงยังมีไม่ครบทุกสี','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'นาฬิกาจับเวลามีอันเดียว','DCA22',2,'ยังไม่มีใครใช้','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',2,'ถั่วมีกลิ่น','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',2,'น้ำจิ้มซีฟู้ดเก่าสีไม่สวย','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',2,'ไม่ค่อยใช้ที่วัดอุณหภูมิ','DCA45',2,'ยังมีเศษอาหารบ้างเล็กน้อย','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',2,'ไม่มีน้ำยาล้างมือ','DCA52',2,'ผ้ามีไม่ครบทุกสี','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'มีคราบไขมันบริเวณช่วงบน','DCA59',2,'ผ้ามีไม่ครบทุกสี','DCA60',1,'','DCA61',1,'','DCA62',2,'พบแมลงวันบ้าง เพราะเป็นพื้นที่เปิดโล่ง','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'มีบางคนที่ยังมีหนวดและเครา'),(15,'100806024','101','100806024','2025-08-25','DCA01',1,'','DCA02',1,'','DCA03',2,'จุดครัวยำขอบยางเก่า','DCA04',1,'','DCA05',2,'พบเศษอาหารตู้ R15','DCA06',2,'ตู้เย็นหน้าเขียงR14 พบคราบเลือด','DCA07',2,'ถั่วงอกไม่ติดวันหมดอายุ','DCA08',1,'','DCA09',2,'ตู้ผัก R15ค่อนข้างแน่น','DCA10',2,'ตู้ F2จัดไม่เป็นระเบียบ','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิ้งน้ำตรงเช็คเกอร์ มีเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',2,'พนักงานครัวทอด ไม่ใส่ผ้ากันเปื้อน','DCA66',1,''),(16,'101405020','106','101405020','2025-08-25','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',2,'พื้นครัวกำลังปรับปรุงจากผรม','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(17,'101807511','116','101601089','2025-08-26','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',2,'ไม่มีการใช้ผงล้างผัก','DCA13',2,'เอากุ้งแช่น้ำโดยตรง','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(18,'100806024','123','100806024','2025-08-26','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',2,'มีน้ำแข็งเกาะหน้าตู้ครัวแกง','DCA07',1,'','DCA08',1,'','DCA09',2,'ตู้เย็นแน่นเพราะตู้ไม่เพียงพอ','DCA10',2,'ตู้ F1ค่อนข้างแน่นและไม่เป็นระเบียบ','DCA11',2,'มีคราบระหว่างวันการทำงาน','DCA12',2,'อยู่ระหว่างดำเนินการสั่งมาใช้','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',0,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',2,'อยู่ระหว่างดำเนินการสั่งซื้อ','DCA48',1,'','DCA49',1,'','DCA50',2,'อยู่ระหว่างสั่งซื้อ','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,'พนักงานครัวผัด มีหนวดยาว'),(20,'100806024','105','100806024','2025-08-27','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้ครัวทอดพบเชื้อราเนื่องจากเก่าและชำรุด','DCA04',1,'','DCA05',1,'','DCA06',2,'ตู้F3 มีน้ำแข็งเกาะและหนา','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',2,'ตู้ F1 ไม่ค่อยเป็นระเบียบและหนาแน่น','DCA11',2,'ตู้ F3 มีคราบสกปรก','DCA12',2,'อยู่ระหว่างดำเนินการสั่งน้ำยาล้างผัก','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'มีนิดหน่อยระหว่างเตรียมงานครับ','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(21,'102301138','124','102301138','2025-08-30','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',0,'เนื่องจากเมนูมีน้อยเลยไม่ได้มีครบ','DCA21',0,'เนื่องจากเมนูมีน้อยเลยไม่ได้มีครบ','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',0,'ไม่มีขายในเมนู','DCA31',1,'','DCA32',0,'ไม่มีขายในเมนู','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',1,'','DCA42',1,'','DCA43',2,'น้ำแข็งกลบไม่ทั่วเนื้อสัตว์ ','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(22,'102301138','126','102301138','2025-08-31','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางตู้เย็นมีเชื้อรา สิ่งสกปรก','DCA04',2,'ขอบยางตู้เย็นขาด','DCA05',2,'ตู้เย็นมีคราบสกปรก ','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ตู้เย็นมีคราบมือ สกปรก','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'เนื้อสัตว์ไม่มีน้ำแข็งกลบ','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(23,'100806024','123','100806024','2025-08-31','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'ตู้R3 มีเศษอาหาร','DCA06',2,'ตู้แช่แข็งจุดหลังเช็คเกอร์มีน้ำแข็งเกาะ','DCA07',1,'','DCA08',1,'','DCA09',2,'ตู้ R3 ไม่เป็นระเบียบ','DCA10',1,'','DCA11',2,'มีคราบสกปรก จุดครัวแกง','DCA12',2,'อยู่ระหว่างดำเนินการสั่งน้ำยามาล้างผัก','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(24,'101405020','125','101405020','2025-09-01','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ไม่ถูกต้อง บางรายการ','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'อยู่ในขั้นตอนจัดซื้อ','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',0,'','DCA35',1,'','DCA36',1,'','DCA37',0,'','DCA38',0,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',2,'ไม่พบน้ำแข็งครับ','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(25,'100806024','101','100806024','2025-09-01','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้R10 มีคราบเนื่องจากขอบชำรุด','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'ตู้ 15 ไม่เป็นระเบียบ','DCA10',2,'ตู้ F2 ไม่เป็นระเบียบ','DCA11',2,'ตู้ F2 มีคราบสกปรก','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ใบกระเพราไม่ติดDaydot','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิ้งค์น้ำหน้าเขียงมีขยะ','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'พนักงานครัวผัดเล็บยาว','DCA65',1,'','DCA66',1,'พนักงานหน้าเขียง หนวดเริ่มยาว'),(26,'102301138','119','102301138','2025-09-02','DCA01',1,'','DCA02',1,'','DCA03',2,'มีคราบสกปรก','DCA04',1,'','DCA05',1,'','DCA06',2,'มีน้ำแข็งเกาะหนาแน่น','DCA07',2,'พบบางรายการวันที่หมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'เขียนได้ถูกต้องแต่พบวัตถุดิบหมดอายุ','DCA16',1,'','DCA17',0,'ใช้เขียงไม้','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'ไม่ได้ใช้','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',0,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(32,'102301138','126','102301138','2025-09-02','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'หั่นสับปะรดชิ้นเล็กเกินไปและมีชิ้นที่เละ ','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'เนื้อสัตว์มีน้ำแข็งกลบไม่ทั่ว น้ำแข็งละลายทำให้แช่น้ำอยู่ตลอดเวลา','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',2,'เตาสกปรก คาบเหมือกไขมันเกาะฝังแน่น ','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(33,'100806024','105','100806024','2025-09-02','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้R2 มีคราบเชื้อราเนื่องจากขอบยางชำรุด','DCA04',2,'ตู้R 3ไม่เด้งกลับเนื่องจากเก่าจากการใช้งาน','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',2,'ตู้ R1 ไม่ค่อยเป็นระเบียบเนื่องจากตู้แช่แข็งค่อนข้างน้อย','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'พบพนักงานครัวแกง เล็บยาว','DCA65',1,'','DCA66',2,'พบพนักงานSteward หนวดเริ่มยาว'),(35,'101807511','116','101601089','2025-09-03','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',2,'มีคราบสกปรก','DCA07',2,'ไม่ระบุวัดหทดอายุที่ชะดเจน','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ระบุวันหมดอ่ยุไม่ถุกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'สีไม่ออกน้ำน้ำทองค่ะ','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',2,'ถั่วลิสงมีกลิ่นหื่น','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',2,'ละเอียดเล็กน้อย','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'บางจุดไท่มีจุดเหยียบ','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'ไม่แยกผ้าชัดเจน','DCA60',1,'','DCA61',2,'มีนเำตรงครัวผัด','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(36,'102301138','112','102301138','2025-09-03','DCA01',1,'','DCA02',1,'','DCA03',2,'มีคราบและสิ่งสกปรก','DCA04',1,'','DCA05',2,'มีคราบน้ำขัง ','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบสกปรกคราบไขมัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'มีน้ำกลบไม่ทั่ว ','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'มีคราบไขมันเการะฝังแน่น','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(37,'100806024','101','100806024','2025-09-03','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'ตู้R15 ค่อนข้างแน่นและไม่เป็นระเบียบ','DCA10',2,'F2 ไม่ค่อยเป็นระเบียบ','DCA11',2,'ตู้R5 มีคราบมือ คราบอาหาร','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิ้งค์น้ำตรง Steward มีเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'พบพนักงานSteward เล็บยาว','DCA65',1,'','DCA66',1,''),(40,'101405020','103','101405020','2025-09-03','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบว่ามีครับ','DCA04',2,'มีตู้เก่าที่ฝาชำรุด','DCA05',1,'','DCA06',2,'ยังพบว่ามี','DCA07',2,'ระบุไม่ชัดเจน','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'มีบางรายการไม่ถูกต้อง','DCA16',2,'มีของหมดอายุในตู้','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',2,'ยังพบหนูวิ่งจากเพดานลงมาหลังเลิ่กงาน','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(45,'101405020','106','101405020','2025-09-03','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบว่ามี','DCA04',2,'มีตู้รุ่นเก่าที่ไม่สามารถเด้งกับเองได้','DCA05',1,'','DCA06',1,'','DCA07',2,'มีสิ้นค้าที่ไม่ระบุวันหมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังพบว่ายังเขียนผิดอยู่','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',2,'กลิ่นสมุนไพรยังอ่อนไป','DCA27',2,'ยังเปรี้ยวและสียังไม่ได้','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ยังพบว่ามีคราบน้ำมัน','DCA59',2,'จุดเช็คเกอร์ยังใช้ปนกัน','DCA60',1,'','DCA61',1,'','DCA62',2,'ยังรูหนูภายในครัว','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(46,'101405020','107','101405020','2025-09-04','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',2,'ยังพบว่าตู้เย็นยังเป็นรุ้นเก่าไม่สามารถเด้งกลับได้เอง','DCA05',1,'','DCA06',2,'ยังพบคราบน้ำแข็งอยู่','DCA07',2,'มีบางรายการยังไม่ชัดเจน','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ถูกต้อง','DCA16',1,'','DCA17',2,'ขาดเขียงหั่นเนื้อ','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'ยังมีไม่ครบ','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'รสชาติยังไม่ได้','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'ยังกลบไม่ทั่วถึง','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',0,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',0,'','DCA62',2,'ยังพบแมลงสาบเดินเป็นบางจุดภายในครัว','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(47,'202501013','201','202501013','2025-08-25','DCA01',1,'','DCA02',1,'','DCA03',2,'มีเชื้อราขาว','DCA04',2,'ประตูตู้เย็นส่วนใหญ่ไม่สามารถปิดเองได้','DCA05',2,'มีคราบเลือด','DCA06',2,'มีครายเลือด','DCA07',2,'วันหมดอายุของทุกอย่าง คือ สิ้นเดือน','DCA08',1,'','DCA09',2,'เก็บไม่เป็นระเบียบอัดแน่นเกินไป','DCA10',2,'เก็บไม่เป็นระเบียบอัดแน่นเกินไป','DCA11',2,'ตู้เย็นมีคราบบ้างนิดหน่อย','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',2,'เขียงยังมีไม่ครบทุกสี','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'นาฬิกาจับเวลามีอันเดียว','DCA22',2,'ยังไม่มีใครใช้','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',2,'ถั่วมีกลิ่น','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',2,'น้ำจิ้มซีฟู้ดเก่าสีไม่สวย','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',2,'ไม่ค่อยใช้ที่วัดอุณหภูมิ','DCA45',2,'ยังมีเศษอาหารบ้างเล็กน้อย','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',2,'ไม่มีน้ำยาล้างมือ','DCA52',2,'ผ้ามีไม่ครบทุกสี','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'มีคราบไขมันบริเวณช่วงบน','DCA59',2,'ผ้ามีไม่ครบทุกสี','DCA60',1,'','DCA61',1,'','DCA62',2,'พบแมลงวันบ้าง เพราะเป็นพื้นที่เปิดโล่ง','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'มีบางคนที่ยังมีหนวดและเครา'),(48,'202501013','201','202501013','2025-09-04','DCA01',2,'R5','DCA02',1,'','DCA03',2,'มีคราบเชื้อรา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',2,'ผิด','DCA08',2,'ผิด','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบสกปรก','DCA12',1,'','DCA13',2,'ละลายผิดวิธี','DCA14',1,'','DCA15',2,'ไม่มีdaydot','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'มีอันเดียว','DCA22',2,'ใช้ยังไม่เป็น','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',2,'กระเทียมไม่สุก','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',2,'มีคราบสกปรก','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าสกปรก','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'คราบน้ำมันฝั่งแน่น','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',0,'','DCA66',1,''),(49,'102301138','112','102301138','2025-09-05','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบมือ คราบไขมัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'พบเจอไม่ติดวันหมดอายุ','DCA16',2,'พบเจอวัตถุดิบหมดอายุ','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(50,'202501013','201','202501013','2025-09-04','DCA01',2,'R5','DCA02',1,'','DCA03',2,'มีคราบเชื้อรา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',2,'ผิด','DCA08',2,'ผิด','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบสกปรก','DCA12',1,'','DCA13',2,'ละลายผิดวิธี','DCA14',1,'','DCA15',2,'ไม่มีdaydot','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'มีอันเดียว','DCA22',2,'ใช้ยังไม่เป็น','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',2,'กระเทียมไม่สุก','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',2,'มีคราบสกปรก','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าสกปรก','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'คราบน้ำมันฝั่งแน่น','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',0,'','DCA66',1,''),(51,'202501013','203','202501013','2025-09-05','DCA01',1,'','DCA02',1,'','DCA03',2,'มีเชื้อรา','DCA04',1,'','DCA05',2,'มีคราบน้ำขัง','DCA06',2,'มีคราบเลือด','DCA07',2,'Rebelไม่ครบ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบบ้าง','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',0,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ระหว่างวันมีเศษบ้าง','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'ถังขยะไม่มีฝา','DCA51',1,'','DCA52',2,'ผ้าไม่ครบสีชมพู','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'ผ้าไม่ครบ','DCA60',2,'มีบ้งระหว่างวัน','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'โบ้ท บิ๊ก บอม เล็บยาว','DCA65',1,'','DCA66',2,'บิ๊ก หนวด'),(52,'100806024','123','100806024','2025-09-06','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้ R4 มีคราบเชื้อรา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'ตู้ R3 ไม่เป็นระเบียบ','DCA10',2,'ตู้ F1 ไม่เป็นระเบียบ แน่นจนล้น','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',2,'มีช้อนลูกค้า ปะปน','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',2,'เนื้อปูไม่ได้กลบ น้ำแข็ง','DCA44',1,'','DCA45',2,'มีเศษอาหารที่ ซิ้งครัวยำ','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าเช็ดครัวแกง สกปรกและเหม็น','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'ครัวแงไม่ได้แยกชนิด','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(53,'102301138','119','102301138','2025-09-06','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางตู้เย็นมีเชื้อรา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',2,'พบเจอวัตถุดิบหมดอายุ','DCA17',0,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',0,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',0,'','DCA48',0,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(54,'100806024','101','100806024','2025-09-08','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'ตู้ 15 ยังไม่ค่อยเป็นระเบียบ','DCA10',2,'ตู้ F2 ยังไม่ค่อยเป็นระเบียบ','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิ้งน้ำตรงเขียง มีเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ระบบดูดควันยังเบาอยู่ ยังไม่ได้รับการแก้ไข','DCA59',1,'','DCA60',1,'','DCA61',2,'หลังครัวทอด มีน้ำซึม','DCA62',1,'','DCA63',2,'พนักงานญิงใส่ตุ้มหู','DCA64',1,'','DCA65',1,'','DCA66',1,''),(55,'102301138','126','102301138','2025-09-08','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',2,'ตู้เย็นมีคราบน้ำขัง น้ำแข็งเกาะ','DCA07',2,'เขียนวันหมดอายุไม่ถูกต้อง เขียนเกินจริง','DCA08',2,'ใช้ปะปนกัน ไม่รู้อันไหนมาก่อนมาหลัง','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'วัตถุดิบบางตัวติด daydot แต่ไม่บอกวันหมดอายุ','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'ไม่สีน้ำแข็งกลบ ถึงแม้จะอยู่ในตู้เย็น','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',2,'ตู้เย็นชำรุด','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(56,'102301138','124','102301138','2025-09-08','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',0,'','DCA21',0,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ฮูดน้ำมันหยด ','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(57,'202501013','204','202501013','2025-09-08','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางมีคราบ','DCA04',2,'ประตูปิดเองไม่ได้','DCA05',2,'มีคราบเลือด','DCA06',2,'มีคราบเลือด','DCA07',1,'','DCA08',2,'พบวัตถุดิบเสีย','DCA09',2,'ตู้เย็นไม่พอ','DCA10',2,'ตู้ไม่พอ','DCA11',2,'คราบสกปรก','DCA12',2,'ไม่ล้างวัตถุดิบ','DCA13',2,'เนื่องจากไม่มีพื้นที่ละลาย','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',2,'ไม่ได้ใช้','DCA21',2,'มีไม่ครบ','DCA22',2,'ไม่ได้ใช้','DCA23',0,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',2,'ไม่มีน้ำแข็งกลบแซลมอน','DCA44',1,'','DCA45',2,'มีเศษอาหารตามซิงค์','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'ถังขยะเต็ม','DCA51',2,'ไม่มีน้ำยาล้างมือ','DCA52',2,'ผ้าสกปรก','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ฮู้ดมีคราบน้ำมัน','DCA59',2,'ผ้าเช็ดครัวสกปรก','DCA60',2,'มีเศษบ้างระหว่างวัน','DCA61',2,'พื้นมีรอยน้ำ','DCA62',1,'','DCA63',2,'มีบางคนแต่งกายไม่ถูกต้อง','DCA64',2,'บางคนเล็บยาว','DCA65',0,'','DCA66',2,'หนวดยาว'),(58,'101405020','125','101405020','2025-09-09','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบตู้F2มีคราบเชื้อรา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',2,'ยังพบปลาหมึกวงไม่fifo','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',2,'กะลังขึ้นของยังพบว่าไม่สะอาด','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',0,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',2,'เครื่องปั่นไม่สะอาด','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(59,'100806024','105','100806024','2025-09-09','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้R2 มีคราบเชื้อราเนื่องจากขอบยางชำรุด','DCA04',2,'ตู้R 3ไม่เด้งกลับเนื่องจากเก่าจากการใช้งาน','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',2,'ตู้ R1 ไม่ค่อยเป็นระเบียบเนื่องจากตู้แช่แข็งค่อนข้างน้อย','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'พบพนักงานครัวแกง เล็บยาว','DCA65',1,'','DCA66',2,'พบพนักงานSteward หนวดเริ่มยาว'),(62,'102301138','126','102301138','2025-09-09','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',2,'ไม่มีการเขียนชื่อวัตถุดิบ และติดวันหมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'น้ำมันไหลออกจากบนเพดานที่เป็นฮูดดูดคัวญ','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(63,'102301138','124','102301138','2025-09-10','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',0,'','DCA21',0,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'น้ำเยอะและไม่เป็นคาราเมล','DCA28',1,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',2,'กระเทียมไม่กรอบ เหนียวมาก ','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(64,'101807511','116','101601089','2025-09-10','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'มีน้ำเลือดในบล๊อคครัวแกง','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',2,'ครัวแกงมีถั่วป่นเหม็นหืน','DCA34',1,'','DCA35',1,'','DCA36',2,'ทอดไหม้ใช้ไม่ได้','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'ตรงสจ๊วตและเขียงไม่ใช่ถังขยะแบบเหยียบค่ะ','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(65,'102301227','111','100208002','2025-09-10','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้r1','DCA04',2,'ตู้r1ซ้ายล่างไม่เด้ง','DCA05',2,'พบตู้มีคราบf1','DCA06',1,'','DCA07',2,'พบที่ไม่เขียนเดดอต','DCA08',2,'พริก ผักเก็บมั่ว','DCA09',1,'','DCA10',1,'','DCA11',2,'ยังพบหลายตู้ที่เลอะเทอะ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ครบ','DCA16',2,'พริกขี้หนูเก่าใหม่ปนกัน','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',2,'การจัดเก็บยังไม่ถูก','DCA43',1,'','DCA44',1,'','DCA45',2,'พบเศษอาหารครัวยำ','DCA46',1,'','DCA47',2,'กะทะไม่พอ','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าครัวเขียงเหม็น','DCA53',1,'','DCA54',2,'ไฟล่อบ้านแกง ทอดเสีย','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ไม่ค่อยดูด','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(66,'102301227','111','100208002','2025-09-10','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้r1','DCA04',2,'ตู้r1ซ้ายล่างไม่เด้ง','DCA05',2,'พบตู้มีคราบf1','DCA06',1,'','DCA07',2,'พบที่ไม่เขียนเดดอต','DCA08',2,'พริก ผักเก็บมั่ว','DCA09',1,'','DCA10',1,'','DCA11',2,'ยังพบหลายตู้ที่เลอะเทอะ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ครบ','DCA16',2,'พริกขี้หนูเก่าใหม่ปนกัน','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',2,'การจัดเก็บยังไม่ถูก','DCA43',1,'','DCA44',1,'','DCA45',2,'พบเศษอาหารครัวยำ','DCA46',1,'','DCA47',2,'กะทะไม่พอ','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าครัวเขียงเหม็น','DCA53',1,'','DCA54',2,'ไฟล่อบ้านแกง ทอดเสีย','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ไม่ค่อยดูด','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(67,'102301227','111','100208002','2025-09-10','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้r1','DCA04',2,'ตู้r1ซ้ายล่างไม่เด้ง','DCA05',2,'พบตู้มีคราบf1','DCA06',1,'','DCA07',2,'พบที่ไม่เขียนเดดอต','DCA08',2,'พริก ผักเก็บมั่ว','DCA09',1,'','DCA10',1,'','DCA11',2,'ยังพบหลายตู้ที่เลอะเทอะ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ครบ','DCA16',2,'พริกขี้หนูเก่าใหม่ปนกัน','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',2,'การจัดเก็บยังไม่ถูก','DCA43',1,'','DCA44',1,'','DCA45',2,'พบเศษอาหารครัวยำ','DCA46',1,'','DCA47',2,'กะทะไม่พอ','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าครัวเขียงเหม็น','DCA53',1,'','DCA54',2,'ไฟล่อบ้านแกง ทอดเสีย','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ไม่ค่อยดูด','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(68,'102301138','112','102301138','2025-09-10','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'หัวเชื้อสัปปะรดีมีแต่น้ำไม่เป็นคาราเมล','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',2,'ทอดมันปลามีรสชาติเค็มกว่าปกติ','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิงค์น้ำใช้แล้วไม่ล้างทำความสะอาด','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(69,'100806024','101','100806024','2025-09-11','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางตู้เย็นชำรุด','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R15 ไม่ค่อยเป็นระเบียบ','DCA10',2,'F1 ค่อนข้างแน่นไม่เป็นระเบียบ','DCA11',2,'มีคราบมือระหว่างการใช้งาน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'ครัวยำใช้ผิดประเภท','DCA60',1,'','DCA61',2,'ครัวทอดยังมีน้ำรั่วซึมจากรางน้ำ','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(70,'101405020','107','101405020','2025-09-11','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังเห็นคราบเชื้อลา','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'เขียนยังไม่ถูกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',2,'ยังเหนียว','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',2,'ยังพบแมลงสาบ และหนูวิ่งมาจากร้านอิ่น','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(71,'102301138','119','102301138','2025-09-11','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',2,'พบวัตถุดิบหมดอายุ','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',0,'','DCA21',1,'','DCA22',0,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',0,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(72,'102301138','126','102301138','2025-09-12','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',2,'เขียนวันวันหมดอายุเกินจริง ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ประตูตู้เย็นมีคราบไขมันคราบมือ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',2,'เนื้อสัตว์ไม่มีน้ำแข็งกลบให้ท้่ว','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(73,'100806024','123','100806024','2025-09-12','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R3 จัดตู้ไม่ค่อยเป็นระเบียบ','DCA10',2,'F1ค่อนข้างเเน่น','DCA11',2,'F1 มีคราบสกปรก','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ครัวผัดมีเศษ อาหารตรงซิ้งค์น้ำ','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'พนักงานครัวผัด หนวดคราวยาว'),(74,'101807511','116','101601089','2025-09-12','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'หน้าประตูครัวทอดมีคราบแป้ง','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'Daydot หายระหว่างวัน','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',2,'ช้อนตวงใส่ไม่ครบ','DCA20',2,'เทอร์โมมิเตอร์ใช้งานไม่ได้ 1อัน','DCA21',2,'นาฬิกาจับเวลาใช้งานไม่ได้2อัน','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ทำอาหาร​เสร็จ​แล้วไม่เคลียร์​อ่าง และระหว่างพักเบรกไม่เคลียร์​หน้างานให้เรียบร้อย','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'มีคราบบนฝาถังขยะ','DCA51',1,'','DCA52',2,'ระหว่างพักเบรกไม่ได้ทีการซักผ้า หรือ พึ่งผ้าตาก','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',2,'เครื่องล้างจานเสีย','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'มีหนวดเครา'),(75,'202501013','203','202501013','2025-09-13','DCA01',1,'','DCA02',1,'','DCA03',2,'บ้างตู้มีคราบเชื้อรา','DCA04',0,'','DCA05',2,'มีคราบเลือดบ้าง','DCA06',2,'มีคราบเลือดบ้าง','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบบ้างนิดหน่อย','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',0,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'เดียร์ ซอ','DCA65',0,'ผ้ากันเปื้อนไม่มีทุกคน','DCA66',1,''),(76,'100806024','123','100806024','2025-09-13','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',2,'re input data by it','DCA05',2,'re input data by it','DCA06',2,'re input data by it','DCA07',2,'re input data by it','DCA08',2,'re input data by it','DCA09',2,'re input data by it','DCA10',2,'re input data by it','DCA11',2,'re input data by it','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(77,'202501013','203','202501013','2025-09-13','DCA01',1,'','DCA02',1,'','DCA03',2,'บ้างตู้มีคราบเชื้อรา','DCA04',0,'','DCA05',2,'มีคราบเลือดบ้าง','DCA06',2,'มีคราบเลือดบ้าง','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบบ้างนิดหน่อย','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',0,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'เดียร์ ซอ','DCA65',0,'ผ้ากันเปื้อนไม่มีทุกคน','DCA66',1,''),(78,'202501013','201','202501013','2025-09-14','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',0,'','DCA05',1,'','DCA06',2,'มีคราบเลือด','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบราขาว','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',0,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',2,'ไม่มีน้ำยาล้างมือ','DCA52',2,'ผ้าครัวทอดยังสกปรก','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'สจ้วตเด็กใหม่','DCA65',0,'','DCA66',1,''),(79,'101405020','103','101405020','2025-09-14','DCA01',2,'พบตู้r8 อุณหภูมิไม่ตรง','DCA02',2,'พบตู้ชำรุด','DCA03',2,'ยังพบจุดตรงเขียง','DCA04',1,'เนื่องด้วยเป็นตู้เก่าไม่สามารถเด้งกับเองได้','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',2,'พบน้ำแกงส้ม ไม่fifo','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'บางรายการยังไม่ถูกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',2,'ขนาดสับปะรดไม่ได้ มาตรฐาน','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'จุดครัวทอดและย่างยังไม่สะอาด','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ยังพบคราบน้ำมัน','DCA59',2,'ยังไม่ชัดเจน','DCA60',1,'','DCA61',1,'','DCA62',2,'ยังพบอยู่บาง','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(81,'102301138','126','102301138','2025-09-15','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'มีเศษอาหารและคราบไขมัน','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',2,'เห็ดเน่าและไม่นำไปสปอย ไม่มีการตรวจเช็ค','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'ยังเจอน้ำมันหยดเหมือนเดิม','DCA59',1,'','DCA60',2,'มีเศษอาหารอยู่ตรงรางน้ำ','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(82,'100806024','123','100806024','2025-09-15','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R3ค่อนข้างแน่น','DCA10',2,'F1ค่อนข้างแน่น','DCA11',2,'มีคราบใช้งานระหว่างวัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',0,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',0,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ครัวยำพบเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'ครัวทอดใช้ผิดประเภท','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'พบพนักงานหนวดยาว'),(83,'102301227','111','100208002','2025-09-16','DCA01',1,'','DCA02',1,'','DCA03',2,'ตู้F2ยังพบกับเชื้อราในตู้ค่ะ','DCA04',2,'ตู้F2 เปิดตู้เย็นแล้วประตูไม่เด้งกลับค่ะ','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',2,'ไปล่อเตาครัวทอดไม่ติดค่ะและเตา 4 หัวของถั่วต้มด้วยค่ะ','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'เครื่องดูดควันดูดไม่แรงค่ะ','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(84,'100806024','101','100806024','2025-09-16','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'F2 มีคราบอาหาร','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R15 ไม่ค่อยเป็นระเบียบ','DCA10',2,'F2 ไม่ค่อยเป็นระเบียบ','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิ้งน้ำครัวแกง มีเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',2,'จุดหลังครัวทอดมีรั่วซึม','DCA62',2,'พบแมลงสาบบ้าง ตามจุดตู้เย็น ณ จุดครัวเขียง','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(85,'102301138','112','102301138','2025-09-17','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'มีคราบน้ำและคาวเลือด ','DCA06',2,'มีน้ำแข็งและคราบน้ำคาวเลือด','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ไม่มีการเช็ดหลังใช้งาน คราบมือ คราบไขมัน ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ไม่มีการติด day dot','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'มีเศษอาหารตกเต็มไม่ทำความสะอาดหลังการใช้งาน','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',2,'จุดล้างจานสกปรก','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(86,'102301138','112','102301138','2025-09-17','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',0,'','DCA31',0,'','DCA32',0,'','DCA33',1,'','DCA34',2,'เม็ดมะม่วงไม่กรอบ','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',2,'มีน้ำแข็งกลบไม่ทั่ว','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(87,'101405020','125','101405020','2025-09-18','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ยังไม่ถูกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',0,'','DCA35',0,'','DCA36',2,'ยังกรอบไม่ทั่วหมด','DCA37',0,'','DCA38',0,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(88,'100806024','101','100806024','2025-09-19','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R15ค่อนข้างแน่นไม่เป็นระเบียบ','DCA10',2,'F2 ไม่ค่อยเป็นระเบียบ','DCA11',2,'F2 มีคราบสกปรก','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ครัวแกงมีเศษอาหาร ที่ซิงค์น้ำ','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าหน้าเขียงเหม็น','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'หน้าเขียงใช้ผิดประเภท','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(89,'100806024','123','100806024','2025-09-20','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',2,'F1 ค่อนข้างแน่น','DCA11',2,'R3 มีคราบสกปรก','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',2,'ครัวทอดมีชิ้นเดียว','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',0,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'พบพนักงาน ชายมีหนวด'),(90,'101405020','107','101405020','2025-09-21','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบอยู่ครับ','DCA04',1,'','DCA05',2,'ยังพบอยู่','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'จุดครัวทอดยังเขียนไม่ถูก','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',2,'ยังพบมีแมลงสาบอยู่','DCA63',1,'','DCA64',2,'ยังพบเล็บยาว','DCA65',1,'','DCA66',1,''),(91,'101405020','107','101405020','2025-09-21','DCA01',1,'','DCA02',1,'','DCA03',2,'ยังพบอยู่ครับ','DCA04',1,'','DCA05',2,'ยังพบอยู่','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'จุดครัวทอดยังเขียนไม่ถูก','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',2,'ยังพบมีแมลงสาบอยู่','DCA63',1,'','DCA64',2,'ยังพบเล็บยาว','DCA65',1,'','DCA66',1,''),(92,'100806024','123','100806024','2025-09-21','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R3 ไม่ค่อยเป็นระเบียบ','DCA10',2,'F1 แน่นเนื่องจากตู้เย็นมีค่อนข้างน้อยครับ','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',0,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',0,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิ้งค์ครัวแกง มีเศษ อาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าเช็ดเขียงมีกลิ่น','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'ครัวผัดหนวดเริ่มยาว'),(93,'100806024','105','100806024','2025-09-22','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R1 ค่อนข้างแน่น','DCA10',2,'F1 ค่อนข้างแน่น','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ครัวยำ มีเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ครัวยำ ผ้ามีกลิ่น','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',2,'ครัวทอดใช้ผ้า สีผิดประเภท','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(94,'102301138','119','102301138','2025-09-23','DCA01',1,'','DCA02',2,'ตู้แช่คอมแอร์เสีย','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ไม่ติด day dot ให้ถูกต้อง','DCA16',2,'วัตถุดิบหมดอายุ','DCA17',0,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',0,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',2,'น้ำจิ้มซีฟู้ดสีซีด ไม่สด','DCA39',0,'','DCA40',0,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(95,'202501013','201','202501013','2025-09-14','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',0,'','DCA05',1,'','DCA06',2,'มีคราบเลือด','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบราขาว','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',0,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',2,'ไม่มีน้ำยาล้างมือ','DCA52',2,'ผ้าครัวทอดยังสกปรก','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',2,'สจ้วตเด็กใหม่','DCA65',0,'','DCA66',1,''),(96,'100806024','101','100806024','2025-09-23','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบยางตู้เย็น เก่าและชำรุด','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R15 ไม่เป็นระเบียบ','DCA10',2,'F2 ไม่เป็นระเบียบ','DCA11',2,'F1 มีคราบ ไขมัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ซิงค์น้ำ มีเศษอาหารตกค้าง','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',2,'พนักงาน หน้าเขียงหนวดเริ่มยาว'),(97,'102301138','126','102301138','2025-09-23','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',2,'ไม่ติดวันหมดอายุ','DCA09',1,'','DCA10',1,'','DCA11',2,'ประตูมีคราบมือคราบไขมัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'เขียน daydot ไม่ถูกต้อง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'ถังขยะสกปรก','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(98,'202501013','201','202501013','2025-09-23','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',2,'ประตูปิดกลับไม่ได้','DCA05',2,'มีคราบสกปรก','DCA06',2,'มีคราบ','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'มีคราบสกปรก','DCA12',1,'','DCA13',2,'หมูกรอบนำมาละลายข้างนอก','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',0,'','DCA28',1,'','DCA29',0,'','DCA30',0,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',2,'น้ำจิ้มซีฟู้ดเชคเกอร์','DCA39',0,'','DCA40',1,'','DCA41',0,'','DCA42',1,'','DCA43',2,'น้ำแข็งละลาย','DCA44',1,'','DCA45',2,'มีเศษอาหารติดตามซิงค์','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',2,'บางจุดไม่มีหัวปั๊ม','DCA52',2,'ผ้าครัวผัด','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',2,'รางน้ำมีเศษอาหารบ้างระหว่างวัน','DCA61',1,'','DCA62',2,'มีแมลงวันนิดหน่อย','DCA63',1,'','DCA64',2,'เต้','DCA65',0,'','DCA66',2,'กอเมี้ยะ'),(99,'101807511','116','101601089','2025-09-24','DCA01',1,'','DCA02',1,'','DCA03',2,'ขอบมีคราบค่ะ','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',2,'ระบุวันหมดอายุไม่ชัดเจน','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'ติดไม่ถูกต้องครัวแกง','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'เจอเศษขยะในซิงค์นเำหน้าเขียง','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',2,'ฝั่งครัวผัดไม่มีแแบบเหยียบ','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',2,'เจอเศษขยะใน.งค์น้ำ','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(100,'102301138','112','102301138','2025-09-24','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',0,'','DCA21',0,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',1,'','DCA35',0,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',0,'เครื่องล้างจานพัง','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',2,'มีคราบสนิมปี๊บน้ำมัน','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(101,'102301138','112','102301138','2025-09-24','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',2,'คราบน้ำแข็ง คราบเลือดสกปรก ','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',2,'ตู้เย็นมีคราบไขมัน คราบมือ','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',2,'เม็ดมะม่วงไม่สุก ','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',2,'คราบสกปรก ไม่สะอาด ','DCA58',2,'มีคราบไขมันสกปรก','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(102,'100806024','101','100806024','2025-09-27','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',2,'R15 พบเศษอาหาร','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',2,'F2 ค่อนข้างแน่น','DCA11',2,'F2 มีคราบไขมัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',2,'ครัวเขียงพบเศษอาหาร','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',2,'เครื่องดูดควันที่สาขาเอราวัณ ยังเบาเหมือนเดิม','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(103,'102301138','124','102301138','2025-09-27','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',1,'','DCA34',1,'','DCA35',0,'','DCA36',2,'เหนียวไม่กรอบ','DCA37',2,'เหนียวไม่กรอบ','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(104,'100806024','101','100806024','2025-09-28','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',1,'','DCA08',1,'','DCA09',2,'R15 ไม่ค่อยเป็นระเบียบ','DCA10',2,'F2 ค่อนข้างแน่นและไม่เป็นระเบียบ','DCA11',2,'F2 มีคราบ มัน','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',2,'พบผักในตู้ไม่ได้ติด Day dot','DCA16',1,'','DCA17',1,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',1,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',1,'','DCA27',1,'','DCA28',1,'','DCA29',1,'','DCA30',1,'','DCA31',1,'','DCA32',1,'','DCA33',1,'','DCA34',1,'','DCA35',1,'','DCA36',1,'','DCA37',1,'','DCA38',1,'','DCA39',1,'','DCA40',1,'','DCA41',1,'','DCA42',1,'','DCA43',1,'','DCA44',1,'','DCA45',1,'','DCA46',1,'','DCA47',1,'','DCA48',1,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',2,'ผ้าเช็ดเขียงมีกลิ่น','DCA53',1,'','DCA54',1,'','DCA55',1,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,''),(105,'102301138','119','102301138','2025-09-28','DCA01',1,'','DCA02',1,'','DCA03',1,'','DCA04',1,'','DCA05',1,'','DCA06',1,'','DCA07',2,'พบวัตถุดิบหมดอายุ','DCA08',1,'','DCA09',1,'','DCA10',1,'','DCA11',1,'','DCA12',1,'','DCA13',1,'','DCA14',1,'','DCA15',1,'','DCA16',1,'','DCA17',0,'','DCA18',1,'','DCA19',1,'','DCA20',1,'','DCA21',1,'','DCA22',0,'','DCA23',1,'','DCA24',1,'','DCA25',1,'','DCA26',0,'','DCA27',0,'','DCA28',0,'','DCA29',1,'','DCA30',0,'','DCA31',1,'','DCA32',0,'','DCA33',0,'','DCA34',0,'','DCA35',0,'','DCA36',1,'','DCA37',0,'','DCA38',1,'','DCA39',0,'','DCA40',0,'','DCA41',0,'','DCA42',0,'','DCA43',1,'','DCA44',0,'','DCA45',1,'','DCA46',1,'','DCA47',0,'','DCA48',0,'','DCA49',1,'','DCA50',1,'','DCA51',1,'','DCA52',1,'','DCA53',1,'','DCA54',1,'','DCA55',0,'','DCA56',1,'','DCA57',1,'','DCA58',1,'','DCA59',1,'','DCA60',1,'','DCA61',1,'','DCA62',1,'','DCA63',1,'','DCA64',1,'','DCA65',1,'','DCA66',1,'');
/*!40000 ALTER TABLE `tbl_dca1_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dca1_image`
--

DROP TABLE IF EXISTS `tbl_dca1_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dca1_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_36` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_37` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_38` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_39` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_40` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_41` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_42` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_43` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_44` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_45` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_46` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_46` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_47` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_47` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_48` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_48` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_49` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_49` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_50` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_50` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_51` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_51` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_52` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_52` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_53` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_53` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_54` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_54` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_55` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_55` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_56` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_56` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_57` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_57` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_58` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_58` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_59` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_59` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_60` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_60` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_61` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_61` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_62` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_62` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_63` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_63` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_64` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_64` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_65` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_65` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_66` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_66` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dca1_image`
--

LOCK TABLES `tbl_dca1_image` WRITE;
/*!40000 ALTER TABLE `tbl_dca1_image` DISABLE KEYS */;
INSERT INTO `tbl_dca1_image` VALUES (5,5,'102301138',112,'2025-08-20',NULL,NULL,NULL,NULL,'DCA03','17556683513.jpeg',NULL,NULL,'DCA05','17556683515.jpeg',NULL,NULL,'DCA07','17556683517.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175566835111.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA47','175566835147.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,'102301138',126,'2025-08-21',NULL,NULL,NULL,NULL,'DCA03','17557638753.jpeg',NULL,NULL,'DCA05','17557638755.jpeg','DCA06','17557638756.jpeg','DCA07','17557638757.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175576387515.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175576387543.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175576387550.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175576387566.jpeg'),(7,7,'202501013',203,'2025-08-21',NULL,NULL,NULL,NULL,'DCA03','17557681063.jpg','DCA04','17557681064.jpg','DCA05','17557681065.jpg','DCA06','17557681066.jpg','DCA07','17557681067.jpg',NULL,NULL,'DCA09','17557681069.jpg','DCA10','175576810610.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA33','175576810633.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175576810645.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175576810650.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA60','175576810660.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,'102301138',119,'2025-08-21',NULL,NULL,NULL,NULL,'DCA03','17557773023.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175577730211.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA16','175577730216.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA60','175577730260.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,'102301138',112,'2025-08-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17559232655.jpg','DCA06','17559232656.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175592326511.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA16','175592326516.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA47','175592326547.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175592326558.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,'101405020',125,'2025-08-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA06','17559346266.jpg','DCA07','17559346267.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA21','175593462621.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,'101405020',107,'2025-08-23',NULL,NULL,NULL,NULL,NULL,NULL,'DCA04','17559451834.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA27','175594518327.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA37','175594518337.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA62','175594518362.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,12,'101405020',103,'2025-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17560312265.jpeg',NULL,NULL,'DCA07','17560312267.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175603122615.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA46','175603122646.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA60','175603122660.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,13,'101405020',103,'2025-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17560334335.jpeg',NULL,NULL,'DCA07','17560334337.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175603343315.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA46','175603343346.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA60','175603343360.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,14,'202501013',201,'2025-08-25',NULL,NULL,NULL,NULL,'DCA03','17560998103.jpg','DCA04','17560998104.jpg','DCA05','17560998105.jpg','DCA06','17560998106.jpg','DCA07','17560998107.jpg',NULL,NULL,'DCA09','17560998109.jpg','DCA10','175609981010.jpg','DCA11','175609981011.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA38','175609981038.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175609981045.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,15,'100806024',101,'2025-08-25',NULL,NULL,NULL,NULL,'DCA03','17561014323.jpg',NULL,NULL,'DCA05','17561014325.jpg','DCA06','17561014326.jpg','DCA07','17561014327.jpg',NULL,NULL,'DCA09','17561014329.jpg','DCA10','175610143210.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175610143245.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA65','175610143265.jpg',NULL,NULL),(16,16,'101405020',106,'2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA61','175611704561.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,17,'101807511',116,'2025-08-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,18,'100806024',123,'2025-08-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17562035339.jpg','DCA10','175620353310.jpg','DCA11','175620353311.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175620353366.jpg'),(20,20,'100806024',105,'2025-08-27',NULL,NULL,NULL,NULL,'DCA03','17562804283.jpg',NULL,NULL,NULL,NULL,'DCA06','17562804286.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA10','175628042810.jpg','DCA11','175628042811.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175628042843.jpg',NULL,NULL,'DCA45','175628042845.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,21,'102301138',124,'2025-08-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175654558243.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,22,'102301138',126,'2025-08-31',NULL,NULL,NULL,NULL,'DCA03','17566238843.jpeg','DCA04','17566238844.jpeg','DCA05','17566238845.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175662388411.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175662388443.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,23,'100806024',123,'2025-08-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17566361625.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17566361629.jpg',NULL,NULL,'DCA11','175663616211.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,24,'101405020',125,'2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175671590215.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175671590243.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,25,'100806024',101,'2025-09-01',NULL,NULL,NULL,NULL,'DCA03','17567329603.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17567329609.jpg','DCA10','175673296010.jpg','DCA11','175673296011.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175673296015.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175673296045.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175673296064.jpg',NULL,NULL,'DCA66','175673296066.jpg'),(26,26,'102301138',119,'2025-09-02',NULL,NULL,NULL,NULL,'DCA03','17567910573.jpeg',NULL,NULL,NULL,NULL,'DCA06','17567910576.jpeg','DCA07','17567910577.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175679105715.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,32,'102301138',126,'2025-09-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA27','175680396627.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175680396643.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA54','175680396654.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,33,'100806024',105,'2025-09-02',NULL,NULL,NULL,NULL,'DCA03','17568042223.jpg','DCA04','17568042224.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA10','175680422210.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175680422264.jpeg',NULL,NULL,'DCA66','175680422266.jpg'),(35,35,'101807511',116,'2025-09-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA06','17568821446.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175688214415.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA27','175688214427.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA33','175688214433.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175688214450.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA61','175688214461.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,36,'102301138',112,'2025-09-03',NULL,NULL,NULL,NULL,'DCA03','17568830343.jpeg',NULL,NULL,'DCA05','17568830345.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175688303411.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175688303443.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175688303458.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,37,'100806024',101,'2025-09-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA10','175688665710.jpg','DCA11','175688665711.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175688665745.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175688665764.jpg',NULL,NULL,NULL,NULL),(40,40,'101405020',103,'2025-09-03',NULL,NULL,NULL,NULL,'DCA03','17568908133.jpeg',NULL,NULL,NULL,NULL,'DCA06','17568908136.jpeg','DCA07','17568908137.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175689081315.jpeg','DCA16','175689081316.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,45,'101405020',106,'2025-09-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,46,'101405020',107,'2025-09-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,47,'202501013',201,'2025-08-25',NULL,NULL,NULL,NULL,'DCA03','17569895483.jpg','DCA04','17569895484.jpg','DCA05','17569895485.jpg','DCA06','17569895486.jpg','DCA07','17569895487.jpg',NULL,NULL,'DCA09','17569895489.jpg','DCA10','175698954810.jpg','DCA11','175698954811.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA38','175698954838.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175698954845.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,48,'202501013',201,'2025-09-04','DCA01','17569905141.jpg',NULL,NULL,'DCA03','17569905143.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA07','17569905147.jpg','DCA08','17569905148.jpg',NULL,NULL,NULL,NULL,'DCA11','175699051411.jpg',NULL,NULL,'DCA13','175699051413.jpg',NULL,NULL,'DCA15','175699051415.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175699051458.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,49,'102301138',112,'2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175706311411.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175706311415.jpeg','DCA16','175706311416.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,50,'202501013',201,'2025-09-04','DCA01','17570678541.jpg',NULL,NULL,'DCA03','17570678543.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA07','17570678547.jpg','DCA08','17570678548.jpg',NULL,NULL,NULL,NULL,'DCA11','175706785411.jpg',NULL,NULL,'DCA13','175706785413.jpg',NULL,NULL,'DCA15','175706785415.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175706785458.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,51,'202501013',203,'2025-09-05',NULL,NULL,NULL,NULL,'DCA03','17570693513.jpg',NULL,NULL,'DCA05','17570693515.jpg','DCA06','17570693516.jpg','DCA07','17570693517.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175706935145.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175706935150.jpg',NULL,NULL,'DCA52','175706935152.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA59','175706935159.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175706935164.jpg',NULL,NULL,'DCA66','175706935166.jpg'),(52,52,'100806024',123,'2025-09-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17571537319.jpg','DCA10','175715373110.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA19','175715373119.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175715373145.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA52','175715373152.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA59','175715373159.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,53,'102301138',119,'2025-09-06',NULL,NULL,NULL,NULL,'DCA03','17571560243.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA16','175715602416.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,54,'100806024',101,'2025-09-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17573117909.jpg','DCA10','175731179010.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175731179045.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA61','175731179061.jpg',NULL,NULL,'DCA63','175731179063.jpeg',NULL,NULL,NULL,NULL,NULL,NULL),(55,55,'102301138',126,'2025-09-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA06','17573302536.jpeg','DCA07','17573302537.jpeg','DCA08','17573302538.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175733025315.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175733025343.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA56','175733025356.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,56,'102301138',124,'2025-09-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175733091358.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,57,'202501013',204,'2025-09-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,58,'101405020',125,'2025-09-09',NULL,NULL,'DCA02','17574010182.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA08','17574010188.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA14','175740101814.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA56','175740101856.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,59,'100806024',105,'2025-09-09',NULL,NULL,NULL,NULL,'DCA03','17574064713.jpg','DCA04','17574064714.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA10','175740647110.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175740647164.jpeg',NULL,NULL,'DCA66','175740647166.jpg'),(61,61,'100806024',105,'2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,62,'102301138',126,'2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA07','17574117507.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175741175058.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,63,'102301138',124,'2025-09-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA27','175748910127.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA36','175748910136.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,64,'101807511',116,'2025-09-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17574906385.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA33','175749063833.jpg',NULL,NULL,NULL,NULL,'DCA36','175749063836.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,65,'102301227',111,'2025-09-10',NULL,NULL,NULL,NULL,'DCA03','17574955573.jpg','DCA04','17574955574.jpg','DCA05','17574955575.jpg',NULL,NULL,'DCA07','17574955577.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA42','175749555742.jpg',NULL,NULL,NULL,NULL,'DCA45','175749555745.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA54','175749555754.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,66,'102301227',111,'2025-09-10',NULL,NULL,NULL,NULL,'DCA03','17574956083.jpg','DCA04','17574956084.jpg','DCA05','17574956085.jpg',NULL,NULL,'DCA07','17574956087.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA42','175749560842.jpg',NULL,NULL,NULL,NULL,'DCA45','175749560845.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA54','175749560854.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,67,'102301227',111,'2025-09-10',NULL,NULL,NULL,NULL,'DCA03','17574956303.jpg','DCA04','17574956304.jpg','DCA05','17574956305.jpg',NULL,NULL,'DCA07','17574956307.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA42','175749563042.jpg',NULL,NULL,NULL,NULL,'DCA45','175749563045.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA54','175749563054.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,68,'102301138',112,'2025-09-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA27','175750014027.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA41','175750014041.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175750014045.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,69,'100806024',101,'2025-09-11',NULL,NULL,NULL,NULL,'DCA03','17575760243.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17575760249.jpg','DCA10','175757602410.jpg','DCA11','175757602411.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA59','175757602459.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,70,'101405020',107,'2025-09-11',NULL,NULL,NULL,NULL,'DCA03','17575855893.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA36','175758558936.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,71,'102301138',119,'2025-09-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA16','175758803816.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,72,'102301138',126,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA07','17576561987.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175765619811.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175765619843.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,73,'100806024',123,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175765681611.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175765681645.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175765681666.jpg'),(74,74,'101807511',116,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175766058711.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175766058715.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA19','175766058719.jpg','DCA20','175766058720.jpg','DCA21','175766058721.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175766058745.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175766058750.jpg',NULL,NULL,'DCA52','175766058752.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA57','175766058757.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175766058766.jpg'),(75,75,'202501013',203,'2025-09-13',NULL,NULL,NULL,NULL,'DCA03','17577504773.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175775047711.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175775047764.jpg',NULL,NULL,NULL,NULL),(76,76,'100806024',123,'2025-09-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,77,'202501013',203,'2025-09-13',NULL,NULL,NULL,NULL,'DCA03','17578244803.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175782448011.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175782448064.jpg',NULL,NULL,NULL,NULL),(78,78,'202501013',201,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175782539364.jpg',NULL,NULL,NULL,NULL),(79,79,'101405020',103,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,81,'102301138',126,'2025-09-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17579178235.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA16','175791782316.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175791782358.jpeg',NULL,NULL,'DCA60','175791782360.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,82,'100806024',123,'2025-09-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17579398349.jpg','DCA10','175793983410.jpg','DCA11','175793983411.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175793983445.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA59','175793983459.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175793983466.jpg'),(83,83,'102301227',111,'2025-09-16',NULL,NULL,NULL,NULL,'DCA03','17580049333.jpg','DCA04','17580049334.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA54','175800493354.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175800493358.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,84,'100806024',101,'2025-09-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17580061965.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17580061969.jpg','DCA10','175800619610.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175800619645.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA62','175800619662.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,85,'102301138',112,'2025-09-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17580990275.jpeg','DCA06','17580990276.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175809902711.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175809902715.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175809902745.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA57','175809902757.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,86,'102301138',112,'2025-09-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA34','175810933834.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175810933843.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,87,'101405020',125,'2025-09-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175817191515.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA36','175817191536.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,88,'100806024',101,'2025-09-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17582675139.jpg',NULL,NULL,'DCA11','175826751311.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175826751345.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA52','175826751352.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA59','175826751359.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,89,'100806024',123,'2025-09-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA10','175835151510.jpg','DCA11','175835151511.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA21','175835151521.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175835151566.jpg'),(90,90,'101405020',107,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA62','175844222762.jpeg',NULL,NULL,'DCA64','175844222764.jpg',NULL,NULL,NULL,NULL),(91,91,'101405020',107,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA62','175845324662.jpeg',NULL,NULL,'DCA64','175845324664.jpg',NULL,NULL,NULL,NULL),(92,92,'100806024',123,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17584538389.jpg','DCA10','175845383810.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175845383845.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA52','175845383852.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175845383866.jpg'),(93,93,'100806024',105,'2025-09-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17585420209.jpg','DCA10','175854202010.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175854202045.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA52','175854202052.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA59','175854202059.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,94,'102301138',119,'2025-09-23',NULL,NULL,'DCA02','17586062642.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175860626415.jpeg','DCA16','175860626416.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA38','175860626438.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,95,'202501013',201,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175860790164.jpg',NULL,NULL,NULL,NULL),(96,96,'100806024',101,'2025-09-23',NULL,NULL,NULL,NULL,'DCA03','17586097983.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17586097989.jpg','DCA10','175860979810.jpg','DCA11','175860979811.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175860979845.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA66','175860979966.jpg'),(97,97,'102301138',126,'2025-09-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA08','17586246858.jpeg',NULL,NULL,NULL,NULL,'DCA11','175862468511.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175862468515.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175862468550.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,98,'202501013',201,'2025-09-23',NULL,NULL,NULL,NULL,NULL,NULL,'DCA04','17586248184.jpg',NULL,NULL,'DCA06','17586248186.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175862481811.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA38','175862481838.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA43','175862481843.jpg',NULL,NULL,'DCA45','175862481845.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA52','175862481852.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA64','175862481864.jpg',NULL,NULL,'DCA66','175862481866.jpg'),(99,99,'101807511',116,'2025-09-24',NULL,NULL,NULL,NULL,'DCA03','17586938193.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA07','17586938197.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175869381915.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175869381945.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA50','175869381950.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA60','175869381960.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,100,'102301138',112,'2025-09-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA57','175870228757.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA61','175870228761.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,101,'102301138',112,'2025-09-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17587063755.jpeg','DCA06','17587063766.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA11','175870637611.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA34','175870637634.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA57','175870637657.jpeg','DCA58','175870637658.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,102,'100806024',101,'2025-09-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA05','17589461245.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA10','175894612410.jpg','DCA11','175894612411.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA45','175894612445.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA58','175894612458.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,103,'102301138',124,'2025-09-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA36','175896096136.jpeg','DCA37','175896096137.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,104,'100806024',101,'2025-09-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA09','17590359029.jpg','DCA10','175903590210.jpg','DCA11','175903590211.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'DCA15','175903590215.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA52','175903590252.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,105,'102301138',119,'2025-09-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DCA07','17590410407.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_dca1_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dca1_topic_detail`
--

DROP TABLE IF EXISTS `tbl_dca1_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dca1_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(100) NOT NULL,
  `f_topic_detail_th` varchar(100) DEFAULT NULL,
  `f_topic_detail_en` varchar(100) DEFAULT NULL,
  `f_topic_status` int NOT NULL,
  PRIMARY KEY (`f_topic_id`),
  UNIQUE KEY `tbl_dca1_topic_detail` (`f_topic_code`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dca1_topic_detail`
--

LOCK TABLES `tbl_dca1_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_dca1_topic_detail` DISABLE KEYS */;
INSERT INTO `tbl_dca1_topic_detail` VALUES (1,1,'DCA01','ตู้แช่เย็น (Chiller) อุณหภูมิอยู่ที่ 1 ถึง 5 องศาเซลเซียส','ตู้แช่เย็น (Chiller) อุณหภูมิอยู่ที่ 1 ถึง 5 องศาเซลเซียส',1),(2,1,'DCA02','ตู้แช่แข็ง ( Freezer) อุณหภูมิอยู่ที่ระหว่าง-8 ถึง -14 องศาเซลเซียส','ตู้แช่แข็ง ( Freezer) อุณหภูมิอยู่ที่ระหว่าง-8 ถึง -14 องศาเซลเซียส',1),(3,1,'DCA03','ขอบยางตู้เย็นไม่มีคราบหรือเชื้อรา','ขอบยางตู้เย็นไม่มีคราบหรือเชื้อรา',1),(4,1,'DCA04','ประตูตู้เย็น เปิดแล้วสามารถเด้งกลับได้','ประตูตู้เย็น เปิดแล้วสามารถเด้งกลับได้',1),(5,1,'DCA05','ตู้เย็นไม่มีเศษอาหาร คราบน้ำ น้ำขัง คราบเลือด ','ตู้เย็นไม่มีเศษอาหาร คราบน้ำ น้ำขัง คราบเลือด ',1),(6,1,'DCA06','ตู้แช่แข็ง ไม่มีน้ำแข็งเกาะหนา หรือมีคราบเลือด น้ำคาวเนื้อสัตว์','ตู้แช่แข็ง ไม่มีน้ำแข็งเกาะหนา หรือมีคราบเลือด น้ำคาวเนื้อสัตว์',1),(7,1,'DCA07','ผลิตภัณฑ์ และ วัตถุดิบทุกชนิดจะต้องระบุวันหมดอายุอย่างชัดเจน ','ผลิตภัณฑ์ และ วัตถุดิบทุกชนิดจะต้องระบุวันหมดอายุอย่างชัดเจน ',1),(8,1,'DCA08','วัตถุดิบต่างๆ ใช้งานตามลำดับ FIFO (มาก่อนใช้ก่อน) ','วัตถุดิบต่างๆ ใช้งานตามลำดับ FIFO (มาก่อนใช้ก่อน) ',1),(9,1,'DCA09','อาหารที่เก็บในตู้เย็น จัดเก็บอย่างถูกต้อง เป็นระเบียบ ไม่แน่นจนลมไม่ไหลเวียน','อาหารที่เก็บในตู้เย็น จัดเก็บอย่างถูกต้อง เป็นระเบียบ ไม่แน่นจนลมไม่ไหลเวียน',1),(10,1,'DCA10','อาหารที่เก็บในตู้แช่แข็ง จัดเก็บอย่างถูกต้อง เป็นระเบียบ ไม่แน่นจนลมไม่ไหลเวียน','อาหารที่เก็บในตู้แช่แข็ง จัดเก็บอย่างถูกต้อง เป็นระเบียบ ไม่แน่นจนลมไม่ไหลเวียน',1),(11,1,'DCA11','ประตูตู้เย็นทุกจุด ไม่มีคราบสกปรก คราบมือ คราบอาหาร ไขมัน','ประตูตู้เย็นทุกจุด ไม่มีคราบสกปรก คราบมือ คราบอาหาร ไขมัน',1),(12,1,'DCA12','ล้างวัตถุดิบตามขั้นตอนการทำความสะอาด วัตถุดิบตามที่กำหนด','ล้างวัตถุดิบตามขั้นตอนการทำความสะอาด วัตถุดิบตามที่กำหนด',1),(13,1,'DCA13','ไม่พบอาหารทำละลายแช่น้ำโดยตรง โดยไม่มีถุงพลาสติกห่อหุ้ม','ไม่พบอาหารทำละลายแช่น้ำโดยตรง โดยไม่มีถุงพลาสติกห่อหุ้ม',1),(14,1,'DCA14','ภาชนะใส่วัตถุดิบสะอาด และอยู่ในสภาพดี','ภาชนะใส่วัตถุดิบสะอาด และอยู่ในสภาพดี',1),(15,1,'DCA15','เขียน Daydot ได้ถูกต้อง','เขียน Daydot ได้ถูกต้อง',1),(16,1,'DCA16','ตรวจ shelf life วัตถุดิบสม่ำเสมอ และไม่มีวัตถุดิบหมดอายุ','ตรวจ shelf life วัตถุดิบสม่ำเสมอ และไม่มีวัตถุดิบหมดอายุ',1),(17,1,'DCA17','ใช้เขียง มีด ถูกต้องตามสีที่กำหนด','ใช้เขียง มีด ถูกต้องตามสีที่กำหนด',1),(18,1,'DCA18','ภาชนะใส่เครื่องปรุงสะอาด และอยู่ในสภาพดี ','ภาชนะใส่เครื่องปรุงสะอาด และอยู่ในสภาพดี ',1),(19,1,'DCA19','มีช้อนตวงสำหรับเครื่องปรุง ไม่ใช้ปนกัน','มีช้อนตวงสำหรับเครื่องปรุง ไม่ใช้ปนกัน',1),(20,1,'DCA20','มีเทอร์โมมิเตอร์สำหรับวัดอุณหภูมิอาหาร ในจุดครัวทอด เขียง แกง เช็คเกอร์','มีเทอร์โมมิเตอร์สำหรับวัดอุณหภูมิอาหาร ในจุดครัวทอด เขียง แกง เช็คเกอร์',1),(21,1,'DCA21','มีนาฬิกาจับเวลา อย่างน้อยสามชิ้นในครัวทอด /สองชิ้นในครัวเขียงและผัด','มีนาฬิกาจับเวลา อย่างน้อยสามชิ้นในครัวทอด /สองชิ้นในครัวเขียงและผัด',1),(22,1,'DCA22','มีการใช้อุปกรณ์วัดค่าความหวาน','มีการใช้อุปกรณ์วัดค่าความหวาน',1),(23,1,'DCA23','มีไฟอุ่นอาหารบริเวณจุดออกอาหาร และพร้อมใช้งาน','มีไฟอุ่นอาหารบริเวณจุดออกอาหาร และพร้อมใช้งาน',1),(24,1,'DCA24','จัดเตรียมวัตถุดิบพร้อมขายตามที่กำหนด','จัดเตรียมวัตถุดิบพร้อมขายตามที่กำหนด',1),(25,1,'DCA25','มีเอกสารสูตรมาตรฐาน วิธีทำ จัดเก็บ สะดวกพร้อมใช้','มีเอกสารสูตรมาตรฐาน วิธีทำ จัดเก็บ สะดวกพร้อมใช้',1),(26,1,'DCA26','น้ำต้มยำรสชาติถูกต้อง','น้ำต้มยำรสชาติถูกต้อง',1),(27,1,'DCA27','หัวเชื้อสัปปะรดถูกต้องตามมาตราฐานที่กำหนด','หัวเชื้อสัปปะรดถูกต้องตามมาตราฐานที่กำหนด',1),(28,1,'DCA28','พริกคั่วน้ำมันถูกต้องตามมาตราฐานที่กำหนด','พริกคั่วน้ำมันถูกต้องตามมาตราฐานที่กำหนด',1),(29,1,'DCA29','เบสข้าวผัดถูกต้องตามมาตราฐานที่กำหนด','เบสข้าวผัดถูกต้องตามมาตราฐานที่กำหนด',1),(30,1,'DCA30','กุ้งแพถูกต้องตามมาตราฐานที่กำหนด','กุ้งแพถูกต้องตามมาตราฐานที่กำหนด',1),(31,1,'DCA31','ข้าวสวยถูกต้องตามมาตราฐานที่กำหนด','ข้าวสวยถูกต้องตามมาตราฐานที่กำหนด',1),(32,1,'DCA32','ข้าวเหนียวถูกต้องตามมาตราฐานที่กำหนด','ข้าวเหนียวถูกต้องตามมาตราฐานที่กำหนด',1),(33,1,'DCA33','ถั่วลิสงคั่วและป่นไม่เหม็นหืน','ถั่วลิสงคั่วและป่นไม่เหม็นหืน',1),(34,1,'DCA34','เม็ดมะม่วงทอดหรืออบไม่เหม็นหืน','เม็ดมะม่วงทอดหรืออบไม่เหม็นหืน',1),(35,1,'DCA35','กุ้งแห้งทอดกรอบและไม่เหนียว','กุ้งแห้งทอดกรอบและไม่เหนียว',1),(36,1,'DCA36','กระเทียมปรุงรส กรอบไม่ขมและไม่เหนียว เปลือกไม่เยอะเกินไป','กระเทียมปรุงรส กรอบไม่ขมและไม่เหนียว เปลือกไม่เยอะเกินไป',1),(37,1,'DCA37','หอมเจียว กรอบไม่ขมและไม่เหนียว ','หอมเจียว กรอบไม่ขมและไม่เหนียว ',1),(38,1,'DCA38','น้ำจิ้มซีฟู้ดสีสดและไม่ละเอียดเกินไป','น้ำจิ้มซีฟู้ดสีสดและไม่ละเอียดเกินไป',1),(39,1,'DCA39','ก๋วยเตี๋ยวลุยสวนชิ้นไม่ใหญ่เกินไป ','ก๋วยเตี๋ยวลุยสวนชิ้นไม่ใหญ่เกินไป ',1),(40,1,'DCA40','คอหมูย่างและไก่ย่าง ย่างเพียงพอต่อการขาย และไม่ย่างแห้งเกินไป','คอหมูย่างและไก่ย่าง ย่างเพียงพอต่อการขาย และไม่ย่างแห้งเกินไป',1),(41,1,'DCA41','ทอดมันปลา และ ทอดมันกุ้ง ได้มาตราฐานตามที่กำหนด','ทอดมันปลา และ ทอดมันกุ้ง ได้มาตราฐานตามที่กำหนด',1),(42,1,'DCA42','การจัดเก็บปูตัวสดและปูนึ่งให้ถูกต้องตามมาตราฐานที่กำหนด','การจัดเก็บปูตัวสดและปูนึ่งให้ถูกต้องตามมาตราฐานที่กำหนด',1),(43,1,'DCA43','เนื้อสัตว์ที่ต้องการน้ำแข็ง มีน้ำแข็งกลบให้ทั่วถึง','เนื้อสัตว์ที่ต้องการน้ำแข็ง มีน้ำแข็งกลบให้ทั่วถึง',1),(44,1,'DCA44','วัดอุณหภูมิอาหารที่ต้องการการวัด ก่อนเสิร์ฟ เช่น อาหารอุ่นไมโครเวฟ อาหารทอด','วัดอุณหภูมิอาหารที่ต้องการการวัด ก่อนเสิร์ฟ เช่น อาหารอุ่นไมโครเวฟ อาหารทอด',1),(45,1,'DCA45','ไม่มีเศษอาหารเลอะเทอะ ตกค้างตามซิ้งค์น้ำ	','ไม่มีเศษอาหารเลอะเทอะ ตกค้างตามซิ้งค์น้ำ	',1),(46,1,'DCA46','ภาชนะประกอบอาหาร พร้อมใช้งานไม่แตกหัก ไม่ใช้งานผิดประเภท','ภาชนะประกอบอาหาร พร้อมใช้งานไม่แตกหัก ไม่ใช้งานผิดประเภท',1),(47,1,'DCA47','มีกระทะเทปล่อนเพียงพอและพร้อมใช้งาน','มีกระทะเทปล่อนเพียงพอและพร้อมใช้งาน',1),(48,1,'DCA48','มีตะหลิวซิลิโคนเพียงพอ และพร้อมใช้งาน','มีตะหลิวซิลิโคนเพียงพอ และพร้อมใช้งาน',1),(49,1,'DCA49','จุดออกอาหาร  สะอาดไม่มีคราบ และทำความสะอาดอย่างสม่ำเสมอ','จุดออกอาหาร  สะอาดไม่มีคราบ และทำความสะอาดอย่างสม่ำเสมอ',1),(50,1,'DCA50','ถังขยะทุกจุดเป็นแบบเหยียบ สะอาด ไม่มีคราบสกปรก กลิ่นเหม็น ฝาถังขยะและรอบๆ สะอาด	','ถังขยะทุกจุดเป็นแบบเหยียบ สะอาด ไม่มีคราบสกปรก กลิ่นเหม็น ฝาถังขยะและรอบๆ สะอาด	',1),(51,1,'DCA51','จุดหยิบน้ำยาทำความสะอาด พร้อมใช้ มีปริมาณเพียงพอต่อการใช้งาน','จุดหยิบน้ำยาทำความสะอาด พร้อมใช้ มีปริมาณเพียงพอต่อการใช้งาน',1),(52,1,'DCA52','ผ้าเช็ดครัว ไม่เหม็น หรือสกปรก','ผ้าเช็ดครัว ไม่เหม็น หรือสกปรก',1),(53,1,'DCA53','จัดเก็บอุปกรณ์ วัตถุดิบ เอกสาร แยกเก็บเป็นหมวดหมู่ชัดเจน เรียบร้อย สะอาด พร้อมใช้	','จัดเก็บอุปกรณ์ วัตถุดิบ เอกสาร แยกเก็บเป็นหมวดหมู่ชัดเจน เรียบร้อย สะอาด พร้อมใช้	',1),(54,1,'DCA54','ไฟล่อ และเตาอยู่ในสภาพพร้อมใช้งาน ไม่ชำรุด','ไฟล่อ และเตาอยู่ในสภาพพร้อมใช้งาน ไม่ชำรุด',1),(55,1,'DCA55','เตาย่างอยู่ในสภาพพร้อมใช้งาน ( ถ้ามี )','เตาย่างอยู่ในสภาพพร้อมใช้งาน ( ถ้ามี )',1),(56,1,'DCA56','อุปกรณ์ไฟฟ้าในการประกอบอาหาร สะอาดพร้อมใช้งาน ไม่ชำรุดแตกหัก	','อุปกรณ์ไฟฟ้าในการประกอบอาหาร สะอาดพร้อมใช้งาน ไม่ชำรุดแตกหัก	',1),(57,1,'DCA57','เครื่องล้างจาน และRackล้าง อยู่ในสภาพพร้อมใช้งาน สะอาด ไม่ชำรุด','เครื่องล้างจาน และRackล้าง อยู่ในสภาพพร้อมใช้งาน สะอาด ไม่ชำรุด',1),(58,1,'DCA58','เครื่องดูดควันใช้งานได้เป็นปกติ หน้ากากเครื่องดูดควันไม่มีคราบไขมันฝังแน่น','เครื่องดูดควันใช้งานได้เป็นปกติ หน้ากากเครื่องดูดควันไม่มีคราบไขมันฝังแน่น',1),(59,1,'DCA59','แบ่งประเภทผ้าสำหรับเช็ดเขียง เช็ดโต๊ะในครัว อย่างชัดเจน','แบ่งประเภทผ้าสำหรับเช็ดเขียง เช็ดโต๊ะในครัว อย่างชัดเจน',1),(60,1,'DCA60','ไม่มีเศษขยะ เศษอาหารตกค้างในรางน้ำในครัว','ไม่มีเศษขยะ เศษอาหารตกค้างในรางน้ำในครัว',1),(61,1,'DCA61','พื้นครัว แห้งสะอาด ไม่ลื่น ไม่มีน้ำรั่ว น้ำซึม ','พื้นครัว แห้งสะอาด ไม่ลื่น ไม่มีน้ำรั่ว น้ำซึม ',1),(62,1,'DCA62','ไม่พบแมลงวัน,กลิ่นหนู,แมลงสาบ พาหะนำโรคอื่นๆ และกลิ่นไม่พึ่งประสงค์','ไม่พบแมลงวัน,กลิ่นหนู,แมลงสาบ พาหะนำโรคอื่นๆ และกลิ่นไม่พึ่งประสงค์',1),(63,2,'DCA63','แต่งกายถูกต้องตามระเบียบที่บริษัทกำหนด 	','แต่งกายถูกต้องตามระเบียบที่บริษัทกำหนด 	',1),(64,2,'DCA64','เล็บสั้น และสะอาดอยู่เสมอ พนักงานหญิงห้ามทาเล็บ','เล็บสั้น และสะอาดอยู่เสมอ พนักงานหญิงห้ามทาเล็บ',1),(65,2,'DCA65','ใส่หมวก ผ้ากันเปื้อน รองเท้า ตามที่กำหนด','ใส่หมวก ผ้ากันเปื้อน รองเท้า ตามที่กำหนด',1),(66,2,'DCA66','หนวดเคราไม่ยาวเกินไป','หนวดเคราไม่ยาวเกินไป',1);
/*!40000 ALTER TABLE `tbl_dca1_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permittion_online`
--

DROP TABLE IF EXISTS `tbl_permittion_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permittion_online` (
  `f_permittion_id` int NOT NULL AUTO_INCREMENT,
  `f_permit_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `f_sidebar_auth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_writing` int NOT NULL,
  `f_report` int NOT NULL,
  `f_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`f_permittion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Permittion Meaning\r\nArea\r\n1. Area	tbl_qsc1_xxx\r\n2. Bar  tbl_bcl1\r\n3. Kitchen	tbl_dca1_xxx\r\n4. Kitchen	tbl_qsce1_xxx';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permittion_online`
--

LOCK TABLES `tbl_permittion_online` WRITE;
/*!40000 ALTER TABLE `tbl_permittion_online` DISABLE KEYS */;
INSERT INTO `tbl_permittion_online` VALUES (1,'Area Service','1,9',1,1,'1'),(2,'Area Bar','2,9',1,1,'1'),(3,'Area Kitchen','3,9',1,1,'1'),(4,'RM/FSC','4',1,1,'1'),(5,'VIP','1,2,3,4,5,6,7,8,9,10,11,12,13',1,1,'1'),(6,'FSS','6',1,1,'0'),(7,'RM Kitchen','',1,1,'0'),(8,'RM Bar','',1,1,'0'),(9,'Area FSS','6',1,1,'0'),(10,'Area Upcountry','1,2',1,1,'0'),(11,'Su ChefUpcountry','2,3',1,1,'1'),(12,'Area AKG (NOTE)','1,7,9',1,1,'1'),(13,'Area AKG','7,9',1,1,'1'),(14,'Area MBE (P tik)','1,8,9',1,1,'1'),(15,'Area MBE','8,9',1,1,'1'),(16,'Training Evaluate','9',1,1,'1'),(17,'Human Resource','9,10',1,1,'1');
/*!40000 ALTER TABLE `tbl_permittion_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsc1_checklist`
--

DROP TABLE IF EXISTS `tbl_qsc1_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsc1_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) NOT NULL,
  `f_branch_code` varchar(4) NOT NULL,
  `f_area_code` varchar(10) DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(40) NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(40) NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(40) NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(40) NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(40) NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(40) NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(40) NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(40) NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(40) NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(40) NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(40) NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(40) NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(40) NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(40) NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(40) NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(40) NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(40) NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(40) NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(40) NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(40) NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(40) NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(40) NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(40) NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(40) NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(40) NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(40) NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(40) NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(40) NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(40) NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(40) NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(40) NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(40) NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(40) NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(255) DEFAULT NULL,
  `f_topic_code_35` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_36` int NOT NULL,
  `f_comment_36` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_37` int NOT NULL,
  `f_comment_37` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_38` int NOT NULL,
  `f_comment_38` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_39` int NOT NULL,
  `f_comment_39` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_40` int NOT NULL,
  `f_comment_40` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_41` int NOT NULL,
  `f_comment_41` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_42` int NOT NULL,
  `f_comment_42` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsc1_checklist`
--

LOCK TABLES `tbl_qsc1_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_qsc1_checklist` DISABLE KEYS */;
INSERT INTO `tbl_qsc1_checklist` VALUES (7,'100101028','201','100101028','2025-08-20','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',2,'พนักงานไม่ได้มีการพูดคุย','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(8,'101808522','123','101808522','2025-08-21','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'4.8 ดาว','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'ทีมครัวตรวจ','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หนึ่ง เจ็ม','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',2,'ทางเดินฝั่งทางออกครัวมีรอยคราบดำจากรองเท้า','QSC40',1,'','QSC41',1,'','QSC42',1,''),(9,'101808522','116','101808522','2025-08-21','QSC01',1,'','QSC02',2,'222','QSC03',2,'333','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',2,'33','QSC42',2,'44'),(10,'101808522','123','101808522','2025-08-21','QSC01',1,'','QSC02',1,'','QSC03',2,'33','QSC04',2,'44','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',2,'11','QSC40',2,'22','QSC41',2,'33','QSC42',2,'44'),(11,'101808522','123','101808522','2025-08-21','QSC01',1,'','QSC02',2,'22','QSC03',2,'33','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',2,'11','QSC41',2,'22','QSC42',2,'33'),(12,'101808522','116','101808522','2025-08-21','QSC01',1,'000','QSC02',1,'111','QSC03',2,'222','QSC04',2,'333','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',2,'11','QSC42',2,'22'),(13,'101808522','116','101808522','2025-08-21','QSC01',1,'000','QSC02',1,'111','QSC03',2,'222','QSC04',2,'333','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',2,'11','QSC42',2,'22'),(14,'101808522','116','101808522','2025-08-21','QSC01',1,'000','QSC02',1,'111','QSC03',2,'222','QSC04',2,'333','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',2,'11','QSC42',2,'22'),(15,'101808522','116','101808522','2025-08-21','QSC01',1,'000','QSC02',1,'111','QSC03',2,'222','QSC04',2,'333','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',2,'11','QSC42',2,'22'),(16,'100808028','107','100808028','2025-08-21','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้ทำทุกคน','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'RM เดินเช็คพูดคุยกับลูกค้า','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'แจ้งMGTไปแล้วให้ตรวจสอบพนักงานไม่ทำทุกคน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'คุยกับMGTทีมในหัวข้อของ QSCต่างๆต้อวมีความตั้งใจในการตรวจสอบทีมและให้นำเรื่องที่ต้องปรับปรุ่งแก้ไขหยิบขึ้นมาทำให้สำเร็จเป็นเรื่องๆไป'),(17,'202101002','119','202101002','2025-08-21','QSC01',1,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'โบว์  ปาลิน','QSC16',1,'ป๊อป','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'เมนูเซต2กษัตริย์','QSC22',1,'เต้าหู้ปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'แจ้งระยะเวลา 15 นาที','QSC26',0,'อั้งม้อไม่มีเสริฟ','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'11  นาที','QSC31',0,'ลูกค้าสั่งข้าวผัดคะน้าปลาเค็ม ออกเสริฟพร้อมกับข้าว','QSC32',1,'15 นาที','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'เบนซ์','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'สื่อสารกับลูกค้าด้วยความเป็นตัวเอง มีความภูมิใจในหน้าที่ ลูกค้าจะรู้สึกมั่นใจว่าจะได้รับบริการอย่างเต็มที่'),(18,'100101028','203','100101028','2025-08-22','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(19,'100101028','201','100101028','2025-08-22','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',2,'แนะนำแค่อาหาร','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่ได้แจ้งเวลา','QSC26',0,'','QSC27',1,'','QSC28',2,'ไม่ได้ทำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(20,'100808028','106','100808028','2025-08-22','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'ลล่าสุดประชุมเรื่องมาตฐาณการเสริฟ์ของหวาน นาราเกล็ดหิมะ','QSC14',1,'','QSC15',1,'ทองพูน  กงใจ','QSC16',1,'โน๊ต','QSC17',1,'','QSC18',1,'ทำทุกคน','QSC19',1,'ทองพูน','QSC20',1,'','QSC21',1,'เล็งต้มแซ่บ','QSC22',1,'น้ำดื่ม วาวา สัตบงกต แต่ลูกค้ารับ โมจิโต','QSC23',1,'ทองพูน','QSC24',1,'','QSC25',1,'แจ้งเล็งต้มแซ่บใช้เวลา15-20นาที','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'ทองพูนเข้าเช็ค','QSC33',1,'ทองพูนแนะน้ำลูกค้าทานชุปเล็ง','QSC34',1,'ทับทิมกรอบ  อโฟกาโต','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุดเป็นรอย','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ประชุมทีม MGTให้ตรวจสอบการทำงานของทีมให้ได้ตามมาตฐานและให้นำปัญหาที่เจอมาแก้ไขปัญหาให้เรียบร้อย'),(21,'100208002','111','100208002','2025-08-22','QSC01',0,'ไม่มีการตั้งสื่อนอกร้าน','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ยังทำไม่ทุกคน','QSC20',1,'','QSC21',2,'ไม่มีการนำเสนออาหารพิเศษ','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่ทุกคน','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด ถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(22,'100808028','101','100808028','2025-08-23','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'แป้ง ตรวจสอบ','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หมวย แป้ง','QSC16',1,'ทิน ทิน','QSC17',1,'','QSC18',1,'','QSC19',1,'หมวย','QSC20',1,'','QSC21',1,'ปลาสามรส ปลาเจ้าสัว','QSC22',2,'แนะนำเป็นบางคน','QSC23',1,'','QSC24',1,'','QSC25',2,'ทำเป็นบางคน','QSC26',1,'','QSC27',1,'','QSC28',1,'หมวย','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หมวย แป้ง','QSC33',1,'','QSC34',1,'เชียร์ข้าวเหนียวมะม่วง','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูมีรอย','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ให้ตรวจสอบการทำงานของพนักงานให้ได้ตามมาตฐาณของนาราและให้ทำการเทรน HOST ที่รับเข้ามาใหม่ในเนื้อหาของงานที่เขาต้องเรียนรู้'),(23,'100208002','111','100208002','2025-08-23','QSC01',0,'ไม่มีสื่อตั้งนอกร้าน','QSC02',1,'','QSC03',1,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'พนักบางคนไม่แจ้ง','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'ประมาณ15 นาที','QSC31',2,'ไม่ทุกโต๊ะ','QSC32',1,'ทำหลังจากจานสุดท้าย15นาที','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุ มีรอยถลอก','QSC39',1,'','QSC40',1,'เพลงเบา /ดังเป็นบางเพลง','QSC41',1,'','QSC42',1,''),(24,'100808028','125','100808028','2025-08-23','QSC01',0,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',2,'แนะนำแล้วให้ทำการจัดเก็บ','QSC11',2,'แนะนำแล้วให้ทำการจัดเก็บ','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',0,'','QSC16',1,'ออมสิน','QSC17',0,'','QSC18',1,'','QSC19',0,'','QSC20',0,'','QSC21',2,'ต่อไปให้เช็คกับทีมครัวและบาร์ต้องการระบายสิ้นค้าตัวใหนออกเป็นพิเศษบ้าง','QSC22',2,'ต่อไปให้เช็คกับทีมครัวและบาร์ต้องการระบายสิ้นค้าตัวใหนออกเป็นพิเศษบ้าง','QSC23',0,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',0,'','QSC28',0,'','QSC29',0,'','QSC30',0,'','QSC31',1,'','QSC32',0,'','QSC33',0,'','QSC34',1,'','QSC35',0,'','QSC36',0,'','QSC37',0,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',0,'','QSC41',1,'','QSC42',1,'ประชุมกับทีมเรื่องกายแต่งกายตามระเบียบและการออกมายืนขายสิ้นค้าหน้าร้าน'),(25,'100101028','204','100101028','2025-08-24','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',2,'เซ็นชื่อไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',2,'แนะนำแค่อาหาร','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',2,'ไม่ได้ทำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(26,'101808522','123','101808522','2025-08-24','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'Gem Kwan','QSC16',1,'Gem','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',2,'ลืมทำ AM แจ้งเตือนถึงทำ','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(27,'202101002','119','202101002','2025-08-24','QSC01',1,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ป๊อป ปาลิน','QSC16',1,'พี่นัท','QSC17',1,'ป๊อป','QSC18',1,'พี่นัท','QSC19',1,'ป๊อป','QSC20',1,'ป๊อป','QSC21',1,'ราดหน้าเนื้อเซอลอยด์','QSC22',1,'ชาอั้งม้อ ','QSC23',1,'','QSC24',1,'','QSC25',1,'15-20 นาที','QSC26',0,'','QSC27',0,'','QSC28',1,'','QSC29',1,'','QSC30',1,'10 นาที','QSC31',0,'ลูกค้าสั่งข้าวผัด','QSC32',1,'ป๊อป 10 นาที','QSC33',1,'','QSC34',1,'ลูกค้าไม่สั่งของหวาน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'การใช้ประโยคปลายปิดเพื่อเพิ่มโอกาสการขาย สื่อสารด้วยความมั่นใจ'),(28,'100808028','103','100808028','2025-08-24','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ทราย / โม /หญิง','QSC16',1,'ทราย / ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'อั้ม (แต่ตรวจพบว่ายังไม่ทำทุกคน)','QSC20',1,'','QSC21',1,'มัสมั่นขาแกะ/ เล็งต้มแซ่บ','QSC22',1,'เงาะปั้น/แตงโมปั่น','QSC23',1,'','QSC24',1,'แตงโม','QSC25',1,'แตงโม','QSC26',1,'','QSC27',2,'ตรวจพบไม่ลงถ้วยชุปสำหรับต้มยำกุ้ง','QSC28',1,'MGTทีม','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'อธิบายน้ำจิ้มที่เสริฟมาในออร์เดิฟร์นารา','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'คุยกับMGT ทีมเรื่องพนักงานไม่ลงอุปกรณ์ตามรายการอาหารและให้MGT ทีมทำการตรวจสอบการทำงานในโซนของตัวเอง'),(29,'100101028','203','100101028','2025-08-25','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',2,'เซ็นไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',2,'ไม่ลงถ้วยซุป','QSC28',2,'ไม่ได้ทำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(30,'100208002','126','100208002','2025-08-25','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ทุกคน','QSC20',1,'','QSC21',2,'ลูกค้า1 ท่านสั่งไม่มาก','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ลูกค้าสั่งอาหารจานเดียว','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'12 นาที','QSC31',1,'','QSC32',1,'ปรมาณ15 นาที','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',2,'นานกว่า 5 นาที','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(31,'100208002','112','100208002','2025-08-27','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่แนะนำ(บางคน)','QSC20',1,'','QSC21',2,'ไม่แนะนำ(บางคน)','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่แจ้ง','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',2,'นานเกิน5 นาที','QSC30',1,'','QSC31',1,'','QSC32',2,'ทำไม่ทุกคน','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(32,'100101028','203','100101028','2025-08-28','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',2,'เซนไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้แนะนำตัว','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',2,'ไม่ได้เข้าไปคุยกับลูกค้า','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',2,'ไม่ได้ทำการ QC','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(33,'101808522','123','101808522','2025-08-28','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ไม่พบว่ามี','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หนึ่ง ทีม','QSC16',1,'เจ็ม','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ทำทุกโต๊ะ','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(34,'100808028','103','100808028','2025-08-28','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'อั้ม / เบนซ์','QSC16',1,'ป้อม','QSC17',1,'','QSC18',1,'','QSC19',1,'ทำเป็นบางคน เน้นหัวหน้าโซนต้องตักเตือนพนักงานที่ไม่ทำ','QSC20',1,'','QSC21',1,'มัสมั่นขาแกะ/ปีกไก่ทอดงาดำ ลด 20%','QSC22',1,'เงาะปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'Mgtทีมทำอย่างสม่ำเสมอ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'พูดคุยกับMGTทีมให้เพิมเติมในเรื่องการรับรู้ข้อมูลข่าวสาร WOIให้ได้100%'),(35,'100208002','126','100208002','2025-08-29','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',2,'ไม่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่แจ้ง','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',2,'มีคราบ','QSC40',1,'','QSC41',1,'','QSC42',1,''),(36,'100101028','203','100101028','2025-08-29','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'พนักงานลืม','QSC20',1,'','QSC21',1,'','QSC22',2,'ไม่ได้ทำ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(37,'100101028','203','100101028','2025-08-30','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',2,'เซ็นชื่อไม่ครบ','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่100%','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(38,'100208002','112','100208002','2025-08-30','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่แนะนำ','QSC22',2,'ไม่แนะนำ','QSC23',2,'เกิน5นาที','QSC24',1,'','QSC25',2,'ไม่ได้แจ้ง','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'12 นาที','QSC31',1,'','QSC32',2,'ไม่เช็ค','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(39,'101808522','123','101808522','2025-08-31','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'โอ ขวัญ','QSC16',1,'โอ','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',2,'พื้นหน้าร้านมีคราบดำ','QSC40',1,'','QSC41',1,'','QSC42',1,''),(40,'111910006','116','101808522','2025-08-31','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',2,'Marketing ไม่ได้มีการตอบกลับรีวิว','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',2,'พนักรอบเช้าไม่ได้เซ็นต์รับทราบ และพนักงานเข้างานรอบบ่ายเซ็นต์รับทราบไม่ครบทุกคน','QSC15',1,'','QSC16',2,'เนื่องจากทางร้าน podium ตั้งอยู่ภายนอกร้าน และช่วงกลางวันฝนตกจึงไม่ได้มอบหมายให้พนักงานอยู่ประจำตำแหน่ง hostess','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูอาหารมีรอยขีดข่วน และเมนูด้านในมีฉีกขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(41,'100808028','103','100808028','2025-08-31','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'พิม , อ้อย','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'แต่ไม่ทุกคน แจ้งMgtให้ตรวจสอบและต้องทำไห้ได้ 100%','QSC20',1,'','QSC21',1,'มัสมั่นขาแกะ , คอหมูทอดงา','QSC22',1,'เงาะปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'เข้าไปสอบถามว่ามาจากประเทศอะไร','QSC29',1,'','QSC30',1,'12 นาที  ส้มตำไทย','QSC31',1,'','QSC32',1,'ผ่านไปประมาณ 5-10 นาที','QSC33',1,'แจ้งน้ำจิ้ม ออร์เดริฟ์','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูมีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งผลตรวจกับทีมถึงหัวข้อที่ตกและต้องแก้ไขให้ได้100%รวมไปถึงนำปัญหาในวิกที่แล้วมาแชร์กันเพือป้องกันไม่ให้เกิดซ้ำ'),(42,'100208002','111','100208002','2025-08-31','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ทุกคน','QSC20',1,'','QSC21',2,'ไม่แนะนำ','QSC22',2,'ไม่แนะนำ(บางคน)','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',2,'นานกว่า','QSC30',1,'15 นาที','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',2,'ไม่ค่อยเคลียร์จาน','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด ถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(43,'100101028','201','100101028','2025-09-01','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',2,'เซ็นไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่ได้แนะนำ','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(44,'100808028','106','100808028','2025-09-01','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ทองพูน , มงคลเข้าเช็คทุกวัน','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,' ','QSC16',1,'โน๊ต','QSC17',1,'','QSC18',1,'','QSC19',2,'ทำเป็นส่วนน้อยมากแจ้ง MGTทีมแล้ว','QSC20',1,'','QSC21',1,'ปลาเต๋าเต้ย , มัสมั่นขาแกะ','QSC22',1,'มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'','QSC25',2,'แจ้งผู้จัดการให้รับทราบและเรียกทีมประชุม','QSC26',1,'','QSC27',1,'','QSC28',1,'แจ้งชื้ออาหารแนะนำเครื่องปรุ่ง','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'5-10 นาที','QSC33',1,'แนะนำการปรุ่ง กต ค้า ','QSC34',1,'เชียร์ขาย ขน ทุเรียน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ประชุมทีมให้รับทราบถึงปัญหาที่เจอและทำการโคชทีมให้ทำงานตามมาตฐานของนารา'),(45,'100808028','125','100808028','2025-09-01','QSC01',0,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',2,'พนักงานลืมป้ายชื้อ1คน เตือนไปแล้วด้วยวาจา','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',0,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',0,'','QSC16',1,'แจ้ง','QSC17',1,'','QSC18',1,'','QSC19',0,'','QSC20',0,'','QSC21',0,'','QSC22',0,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',0,'','QSC28',0,'','QSC29',1,'','QSC30',0,'','QSC31',1,'','QSC32',0,'','QSC33',0,'','QSC34',1,'','QSC35',0,'','QSC36',0,'','QSC37',0,'','QSC38',1,'','QSC39',1,'','QSC40',0,'','QSC41',1,'','QSC42',1,'ประชุมเรื่องการจัดยื่นHostหน้าร้านให้ชัดเจน'),(46,'100208002','111','100208002','2025-09-02','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่แนะนำ','QSC22',2,'ไม่แนะนำ','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่ได้แจ้ง','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'12 นาที','QSC31',1,'','QSC32',2,'ไม่ทำ','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด มีรอย','QSC39',1,'','QSC40',2,'เพลงแต่ละเพลงเสียงดังไม่เท่ากัน','QSC41',1,'','QSC42',1,''),(47,'100101028','204','100101028','2025-09-03','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้แนะนำตัว','QSC20',1,'','QSC21',1,'','QSC22',2,'ไม่ได้แนะนำ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(48,'100208002','105','100208002','2025-09-04','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ทุกคน','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่ทุกคน','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'14 นาที','QSC31',1,'','QSC32',2,'ไม่ทักคน','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'บางเพลงเสียงดัง','QSC41',1,'','QSC42',1,''),(49,'100208002','126','100208002','2025-09-05','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่แนะนำ','QSC20',1,'','QSC21',1,'','QSC22',2,'ไม่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่แจ้ง','QSC26',2,'นานกว่า','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'12','QSC31',1,'','QSC32',2,'ไม่ทำ','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(50,'100101028','201','100101028','2025-09-05','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',2,'เซ็นไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้ทำ','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(51,'100208002','112','100208002','2025-09-06','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',0,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่มี','QSC22',2,'ไม่นำเสนอลูกค้าสั่งเอง','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่แจ้ง บางคน','QSC26',2,'นานกว่า','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'15นาที','QSC31',1,'','QSC32',2,'ไม่ทำ','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(52,'111910006','116','101808522','2025-09-07','QSC01',2,'Standy Top10 สีซีด','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',2,'ไม่พบทีม marketing ตอบกลับรีวิว','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่มีใครแนะนำตัวเอง','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'สันเมนูเครื่องดืมมีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(53,'100101028','204','100101028','2025-09-07','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้ทำ','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',2,'ลืมลงถ้วยซุป','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(54,'100208002','111','100208002','2025-09-07','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ทำบางคน.','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',2,'นานกว่าลูกค้าค่อนข้างมาก','QSC30',1,'15นาที','QSC31',1,'','QSC32',2,'ทำเป็นบางคน','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(55,'100208002','111','100208002','2025-09-07','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ทำบางคน.','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',2,'นานกว่าลูกค้าค่อนข้างมาก','QSC30',1,'15นาที','QSC31',1,'','QSC32',2,'ทำเป็นบางคน','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(56,'100101028','203','100101028','2025-09-08','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',2,'ไม่ใส่ผ้ากันเปื้อน','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',2,'เซ็นชื่อไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(57,'100808028','103','100808028','2025-09-09','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ตรวจโดยRM','QSC05',0,'','QSC06',2,'พบบาร์ไม่ติดป้ายชื้อเนรียกหัวหน้ากะและพนักงานมาพูดคุยแล้ว','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ฝ้าย , ทราย','QSC16',1,'ขิม','QSC17',1,'ฝ้าย','QSC18',1,'ฝ้าย,ทราย,โขง','QSC19',1,'ฝ้าย,ทราย พนักงานที่รับออร์เดอร์ของลูกค้ามีการแนะนำตัว (พิม ,ยุ้ย)','QSC20',1,'ฝ้าย','QSC21',1,'ฝ้าย   อาหารที่เชียร์ขาย คอหมูทอดงา','QSC22',1,'พิมเชียร์ขายมะพร้าวคุณหญิง','QSC23',1,'ฝ้าย ,ทราย','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'พิมเข้าไปเสนอตัวตักแบ่งอาหารให้ลูกค้าพร้อมสอบถามรสชาติอาหารและถามลูกค้ามาจากประเทศอะไร','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'10-15นาที','QSC33',1,'พิมเข้าไปแนะนำโต๊ะ B 5','QSC34',1,'กิ่งเข้าไปเสนอขายของหวานโต๊ะB 7','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เล่มเมนูมีลอยถลอกและใส้ในบางเล่มเริ่มชำรุดมีรอยพับ','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งให้ทำการตรวจสอบการแต่งตัวของพนักงานให้เป็นไปตามมาตฐาณ WOI'),(58,'100101028','201','100101028','2025-09-09','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',2,'แนะนำแค่อาหาร','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',2,'ไม่ได้แนะนำซอส-','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(59,'100808028','101','100808028','2025-09-09','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'แป้ง,นุ้ย','QSC05',0,'','QSC06',2,'ไม่ตรวจตรวจการแตงตัวพนักงานพบพนักงานไม่ติดป้ายชื่อ','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ไหม','QSC16',1,'ทิน ทิน','QSC17',1,'','QSC18',1,'','QSC19',1,'แป้ง ,ออมสิน','QSC20',1,'แตบางนี้ก็ไปไม่ครบต้องนำไปทีหลัง','QSC21',1,'ปลาเต๋าเต้ย ,ไก่งาดำ','QSC22',1,'มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'แจ้งรายการอาหารที่นำมาเสริฟ','QSC29',1,'','QSC30',1,'ทอดมันกุ้งเสริฟภายใน10นาที','QSC31',1,'','QSC32',1,'10-15นาที','QSC33',1,'แจ้งชื่ออาหารให้กับลูกค้าทราบ','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูมีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ประชุม MGTทีมเรื่องการตรวจสอบการแตงกายของพนักงาน การทำงานให้ได้ตามมาตฐานของนารา'),(60,'100808028','125','100808028','2025-09-10','QSC01',0,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',0,'','QSC16',1,'แย้ม','QSC17',0,'','QSC18',1,'','QSC19',0,'','QSC20',0,'','QSC21',1,'ข้าวกะหรีปูก้อน ,กตเรือ เนื้อและเอ็นตุ่น','QSC22',1,'มะพร้าวคุณหยฺง , ลำใยจ้ำดบ้','QSC23',0,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',0,'','QSC28',1,'แนะนำอาหาร น้องแยม ทำ','QSC29',0,'','QSC30',0,'','QSC31',1,'','QSC32',0,'','QSC33',0,'','QSC34',1,'เสนอขายตอนลูกค้ามาสั่งอาหารเลย','QSC35',0,'','QSC36',1,'กล่าวขอบคุณ','QSC37',0,'','QSC38',2,'เมนูมีรอยถลอก','QSC39',1,'','QSC40',0,'','QSC41',1,'','QSC42',1,'คุยกับทีมเรื่องการแต่งตัวตามมาตฐาน เรื่องการออกมาเรียกลูกค้าเพือนำเสนอเมนูให้กับลูกค้าที่เดินผ่านไปผ่านมา , รับออร์เดอร์ลูกค้าด้วยในจังวะเวลาลูกค้ามาใช้บริการหลายท่านเพือลดคิวลูกค้า'),(61,'100808028','106','100808028','2025-09-10','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ทองพูน ','QSC16',1,'โน๊ต','QSC17',1,'','QSC18',1,'','QSC19',1,'ไม่ทุกคนแจ้งทีมให้รับทราบและพูดคุยกับทีมแล้ว','QSC20',1,'','QSC21',1,'ไก่สมุนไพร กุ้งเผา','QSC22',1,'มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'','QSC25',1,'ยังไม่ทำทุกคนแจ้งทีมให้รับทราบแล้ว','QSC26',1,'','QSC27',1,'','QSC28',1,'ทองพูน นิด','QSC29',1,'','QSC30',1,'10นาทีทอดมันปลา','QSC31',1,'','QSC32',1,'15%หลังจากเสริฟอาหารจานสุดท้าย','QSC33',1,'แจ้งชื่ออาหารและแจ้งพวกน้ำจิ้ม ออรเดริฟ','QSC34',1,'ขน มะม่วง','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ประชุมกับทีมเรื่องการแต่งตัวของพนักงานให้ถูกต้องตามระเบียบ และให้หัวหน้างานแก้ไขในหัวข้อที่ยังไม่ผ่าน'),(62,'100208002','111','100208002','2025-09-11','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',2,'ไม่มีป้าย Trainee พนักงานใหม่','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',2,'ไม่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',2,'นานกว่า','QSC27',1,'','QSC28',1,'','QSC29',2,'บางโต๊ะนานกว่า5 นาที','QSC30',1,'12-14 นาที','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',2,'ไม่ค่อยเคลียร์จานกัน','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'บางเพลงดัง,บางเพลงเสียงเบา','QSC41',1,'','QSC42',1,''),(63,'100101028','203','100101028','2025-09-12','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',0,'','QSC14',2,'พนักงานเซ็นชื่อไม่ครบ','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(64,'100808028','103','100808028','2025-09-12','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'นุ๊ก/พิม','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'พิม/นุ๊ก','QSC20',1,'','QSC21',1,'มัสมั่น,ปีกไก่','QSC22',1,'เงาะปั่น,มะม่วงเบา','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'ขน ทุเรียน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'เรื่องการแต่งตัว,การทำงานตามมาตฐานของนารา,การเชียร์ขายอาหารต่อหัวต่อบิลต้องไม่ตก'),(65,'101808522','123','101808522','2025-09-12','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'เจ็ม หนึ่่ง','QSC16',1,'เจ็ม','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'บางเล่มขาดชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(66,'100808028','107','100808028','2025-09-12','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'กอล์ฟ /ท็อป','QSC16',1,'กอล์ฟ','QSC17',1,'กอล์ฟ','QSC18',2,'ทำแต่ยังทำไม่ครบทุกคน แจ้งทีม MGTให้รับทราบแล้ว','QSC19',2,'ทำเป็นส่วนน้อยแจ้งทีมให้รับทราบแล้ว','QSC20',1,'','QSC21',1,'มัสมั่นขาแกะ/ไก่งาดำ','QSC22',1,'มะม่วงปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',2,'แจ้งทีมไปแล้วให้MGTลงมือทำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หลังจากเสริฟ์อาหารจานสุดท้าย ทานไป15%','QSC33',1,'','QSC34',1,'ขน มะม่วง','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งเรื่องการแต่งตัวตามระเบียบของร้านและแจ้งMGTทีมให้แก้ไขหัวข้อที่ไม่ผ่านการตรวจของวันนี้'),(67,'202101002','119','202101002','2025-09-13','QSC01',1,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',2,'ไม่ได้เจัดโซนให้พนักงาน','QSC16',1,'','QSC17',1,'พี่นัท','QSC18',1,'พี่นัท','QSC19',1,'พี่นัท','QSC20',1,'พี่นัท','QSC21',1,'พี่นัท','QSC22',1,'พี่นัท','QSC23',1,'พี่นัท','QSC24',1,'พี่นัท','QSC25',1,'พี่นัท แจ้งรออาหาร 15 นาที','QSC26',0,'','QSC27',1,'พี่นัท','QSC28',1,'พี่นัท','QSC29',1,'พี่นัท','QSC30',1,'15 นาที ','QSC31',1,'พี่นัท','QSC32',1,'15 นาที','QSC33',1,'พี่นัท บัวลอยน้ำขิง ไอศรีมไข่แข็ง','QSC34',1,'พี่นัท','QSC35',1,'พี่นัท','QSC36',1,'พี่นัท','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(68,'100208002','112','100208002','2025-09-13','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',2,'ไม่นำเสนอ','QSC23',2,'นานกว่า','QSC24',1,'','QSC25',2,'ไม่แจ้ง','QSC26',2,'นานกว่า','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'14 นาที','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',2,'ไม่ทุกคน','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(69,'100808028','103','100808028','2025-09-13','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'พี่ทรายตรวจพิม/ขิม','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'พิม แตงโม กิ่ง','QSC20',1,'','QSC21',1,'มัสมันขาแกะ ปีกไก่ทอดงาดำ','QSC22',1,'เงาะปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',2,'พนักงานลงอุปกรณ์เล้งต้มแซ่บไม่ครบขาดที่หนีบ','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หลังจากเสิร์ฟอาหารจานสุดท้ายลูกค้าทานไป 15%','QSC33',1,'แจ้งชื่ออาหารและแจ้งซอสออเดิร์ฟนารา','QSC34',1,'ขน.ทุเรียน/ขนมครก','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูมีลอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งMGTหัวข้อที่ไม่ผ่านให้นำไปแก้ไขปรับปรุงกับทีมของตัวเอง'),(70,'101808522','123','101808522','2025-09-14','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ไม่พบว่าต่ำกว่า 4 ดาว','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หนึ่ง ทีม','QSC16',1,'ทีม','QSC17',1,'','QSC18',1,'','QSC19',2,'ยังทำไม่สม่ำเสมอ','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุดบางแผ่น','QSC39',2,'บริเวณทางเดินของอาคาร รอยดำจากรองเท้า','QSC40',1,'','QSC41',1,'','QSC42',1,''),(71,'100808028','103','100808028','2025-09-14','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'หลิ่ง หลิ่ง พูดเบาแนะนำพนักงานแล้ว','QSC20',1,'','QSC21',1,'มัสมั่นขาแกะ,แกงส้มกุ้ง','QSC22',1,'เงาะปั่น,แตงโมปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'ตรวจพบโซน Aไม่ลงถ้วยชุป 3โต๊ะแจ้งหัวหน้าโซนให้รับทราบและทำการตรวจสอบโซนรับผิดชอบด้วย','QSC28',1,'ทำเกือบทุกคนเข้าไปพูดคุยทักทายสอบถามมาจากประเทศอะไร','QSC29',1,'','QSC30',1,'10นาที ส้มตำ','QSC31',1,'','QSC32',1,'หลังจากเสริฟอาหารจานสุดท้ายแล้วลูกค้าทานไปประมาณ15%','QSC33',1,'แจ้งชื่ออาหารและแจ้งรายละเอื่ยดซอสที่เสิรฟ','QSC34',1,'ขน.มะม่วง , ICนารา','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ถลอก','QSC39',2,'ทางเข้าบาร์เปียก เพราะพรหมลองพื้นเปียกแจ้งให้เปลื่ยนแล้วทันที','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้ง MGTทีมในหัวข้อที่ตรวจไม่ผ่านระดับหัวหน้างานต้องตรวจสอบให้จริงจังพบเห็นการทำงานที่ไม่เป็นไปตามมาตฐานต้องเรียกคุยสอบถามถึงปัญหาและให้คำแนะนำ'),(72,'111910006','116','101808522','2025-09-14','QSC01',1,'','QSC02',2,'ป้าย Top10 สีซีด','QSC03',1,'','QSC04',1,'','QSC05',2,'ทีม Marketing ไม่ได้ตอบกลับ','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'เอกสิทธิ์ / แพรวนภา, ปฎิพร','QSC16',1,'เอกสิทธิ์ / ดุลยวัต','QSC17',1,'เอกสิทธิ์','QSC18',1,'เอกสิทธิ์ ','QSC19',2,'เอกสิทธิ์ / ไม่มีพนักงานแนะนำตัวเอง','QSC20',1,'เอกสิทธิ์','QSC21',1,'เอกสิทธิ์ ','QSC22',1,'เอกสิทธิ์ ','QSC23',1,'เอกสิทธิ์ ','QSC24',1,'เอกสิทธิ์ ','QSC25',1,'เอกสิทธิ์ ','QSC26',1,'เอกสิทธิ์ ','QSC27',1,'เอกสิทธิ์ ','QSC28',1,'เอกสิทธิ์ ','QSC29',1,'เอกสิทธิ์ ','QSC30',1,'เอกสิทธิ์ ','QSC31',1,'เอกสิทธิ์ ','QSC32',1,'เอกสิทธิ์ ','QSC33',1,'เอกสิทธิ์ ','QSC34',1,'เอกสิทธิ์ ','QSC35',1,'เอกสิทธิ์ ','QSC36',1,'เอกสิทธิ์ ','QSC37',1,'เอกสิทธิ์ ','QSC38',2,'สันเมนูมีรอยถลอก และหมุดหลุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(73,'100208002','126','100208002','2025-09-15','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่่มี','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',2,'ไม่เสนอ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'10นาที','QSC31',1,'','QSC32',2,'ไม่่พบ','QSC33',1,'','QSC34',1,'','QSC35',2,'ไม่เคลียร์จาน','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(74,'100101028','203','100101028','2025-09-15','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',2,'ไม่ได้ทำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(75,'101808522','123','101808522','2025-09-15','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หนึ่ง เจ็ม','QSC16',1,'เจ็ม','QSC17',1,'แอม','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'บางเล่มบางแผ่นชำรุด','QSC39',2,'พื้นเป็นรอยดำ','QSC40',1,'','QSC41',1,'','QSC42',1,''),(76,'100101028','203','100101028','2025-09-17','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่ได้แจ้ง','QSC26',1,'','QSC27',1,'','QSC28',2,'ไม่ได้ทำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(77,'101808522','123','101808522','2025-09-18','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'แอม หนึ่ง','QSC16',1,'แอม','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'บางแผ่นขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(78,'100808028','103','100808028','2025-09-18','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ทรายตรวจสอบ','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หลิง หลิง / อั้ม','QSC16',1,'นิว','QSC17',1,'','QSC18',1,'','QSC19',1,'หลิงหลิง/อั้ม ','QSC20',1,'','QSC21',1,'เล็งต้มแซ่บ/ มัสมั่นขาแกะ','QSC22',1,'เงาะปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'ลุยสวน/ ส้มตำ 5-10นาที','QSC31',1,'','QSC32',1,'หลังจากเสริฟจานสุดท้ายไปแล้วลูกค้าทานประมาณ15%','QSC33',1,'อธิบายการทานเมื้ยงกลีบบัว , ซอสออร์เดริฟนารา','QSC34',1,'','QSC35',2,'ตรวจพบโซนด้านในไม่เก็บจานเปล่า','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งทราย ,เบนซ์หัวหน้าทีมช่วงรอบที่ตรวจให้รับทราบหัวข้อที่ตรวจไม่ผ่านแล้วหาวิธีแก้ไข'),(79,'100101028','201','100101028','2025-09-18','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',1,'','QSC08',0,'','QSC09',0,'','QSC10',0,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้ทำ','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(80,'100808028','101','100808028','2025-09-19','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หมวย/ ออมสิน','QSC16',1,'ออมสิน','QSC17',1,'','QSC18',1,'','QSC19',1,'หมวย','QSC20',1,'','QSC21',1,'เต๋าเต้ย/ไก่งาดำ','QSC22',1,'มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'หมวยเสียงชัดเจน','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'หมวยทำดีมาก','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'เชียร์ขายบัวลอยทุเรียน/บัวลอยไข่เค็ม','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งทีมเรื่องการจัดSetupหน้าโต๊ะที่ยังไม่เป็นไปตามมาตฐานและให้ทีมช่วยกันทำยอดต่อหัวต่อบิลให้ผ่านตามเป้า'),(81,'100808028','103','100808028','2025-09-19','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'โขง','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'เล็งต้มแซ่บ/มัสมั่นขาแกะ','QSC22',1,'เงาะปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หลังอาหารจานสุดท้ายเสริฟผ่านไปประมาณ15%','QSC33',1,'','QSC34',1,'ขนมครก/ขน ทุเรียน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ประชุมกับทีมให้คอยบอกน้องพนักงานทำงานด้วยรอยยิ้มและรักษาค่าเฉลียต่อหัวและต่อบิลให้ได้ตามเป้า'),(82,'101808522','123','101808522','2025-09-20','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'แอม ทีม','QSC16',1,'เจ็ม','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'บางแผ่นชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(83,'100208002','111','100208002','2025-09-20','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',2,'ไม่่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',2,'ไม่แจ้งบางคน','QSC26',2,'นานกว่า','QSC27',1,'','QSC28',1,'','QSC29',2,'นานกว่า','QSC30',1,'14 นาที','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',2,'ส่วนใหญ่จะเคลียร์ไม่ทัน','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(84,'100808028','106','100808028','2025-09-21','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'มงคลตรวจ','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ทองพูน Shift ','QSC16',1,'รุ่ง','QSC17',1,'','QSC18',1,'','QSC19',1,'กรงใจ แนะนำ','QSC20',1,'','QSC21',1,'ปูตัว M/L / มัสมั่นขาแกะ','QSC22',1,'กรงใจแนะนำเบียร์ชัยบาน/มะพร้าวคุณหญิง','QSC23',1,'กรงใจเข้าไปนำเสนอเมนู ลูกค้าสั่งอาหารเลย','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',2,'ยังไม่เห็นทำ','QSC29',1,'','QSC30',1,'10 นาทีอาหารทานเล่นส้มตำ','QSC31',1,'','QSC32',1,'หลังจากเสริฟอาหารจานสุดท้ายลูกค้าทานไปประมาณ 15%','QSC33',1,'แนะนำเครื่องปรุ่งสำหรับปรุ่ง กต เรือ','QSC34',1,'เชียร์ขาย ขน ทุเรียน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งผลการตรวจให้ทีมMGTทราบและพูดคุยกันเรื่องการให้บริการตามมาตฐานของนาราและรักษาค่าเฉลียต่อหัวต่อบิลให้ผ่านตามเป้า'),(85,'101808522','123','101808522','2025-09-21','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ทีม ขวัญ','QSC16',1,'ทีม','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุดบางแผ่น','QSC39',2,'รอยดำตามพื้น','QSC40',1,'','QSC41',1,'','QSC42',1,''),(86,'111910006','116','101808522','2025-09-21','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',2,'ไม่มีทีม Marketing ตอบกลับค่ะ','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'เอกสิทธิ์ / ชาลิตา, แพรวนภา','QSC16',1,'เอกสิทธิ์ / สิทธิชัย','QSC17',1,'เอกสิทธิ์','QSC18',1,'เอกสิทธิ์ ','QSC19',1,'เอกสิทธิ์ / ชาลิตา','QSC20',1,'เอกสิทธิ์ ','QSC21',1,'เอกสิทธิ์ ','QSC22',1,'เอกสิทธิ์ ','QSC23',1,'เอกสิทธิ์ ','QSC24',1,'เอกสิทธิ์ ','QSC25',1,'เอกสิทธิ์ ','QSC26',1,'เอกสิทธิ์ ','QSC27',1,'เอกสิทธิ์ ','QSC28',1,'เอกสิทธิ์ ','QSC29',1,'เอกสิทธิ์ ','QSC30',1,'เอกสิทธิ์ ','QSC31',1,'เอกสิทธิ์ ','QSC32',1,'เอกสิทธิ์ ','QSC33',1,'เอกสิทธิ์ ','QSC34',1,'เอกสิทธิ์ ','QSC35',1,'เอกสิทธิ์ ','QSC36',1,'เอกสิทธิ์ ','QSC37',1,'เอกสิทธิ์ ','QSC38',2,'ปกเมนูเครื่องดื่มน๊อตยึดหลุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(87,'100208002','111','100208002','2025-09-21','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'ไม่','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',2,'ไม่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',2,'นานกว่า','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',2,'ไม่เคลียร์จาน บางโต๊ะ','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(88,'100808028','125','100808028','2025-09-21','QSC01',0,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',0,'','QSC16',1,'แจง','QSC17',1,'','QSC18',1,'','QSC19',0,'','QSC20',0,'','QSC21',1,'ผัดไทยเนื้อย่าง/กตเรือเนื้อตุ่น','QSC22',1,'มะพร้าวคุณหญิง','QSC23',0,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',0,'','QSC28',0,'','QSC29',0,'','QSC30',0,'','QSC31',1,'','QSC32',0,'','QSC33',0,'','QSC34',1,'ขนมครก/ขน ทุเรียน','QSC35',0,'','QSC36',1,'','QSC37',0,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',0,'','QSC41',0,'','QSC42',1,'กำชับทีมต้องมายืนหน้าร้าน1คนเพือเป็นการเรียกลูกค้าให้สนใจร้านและคอยแนะนำเมนูกับลูกค้าหรือเดินไปรับออร์เดอร์ลูกค้าที่นั่งโต๊ะบริเวณหน้าร้าน'),(89,'100808028','107','100808028','2025-09-22','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',2,'ไม่มีใครตรวจสอบ  แจ้งRM/ASST./souper.ให้ทราบและแบ่งหน้าที่กันตรวจสอบเพราะเป็นเรื่องที่สำคัญมาก','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',2,'นัท หัวหน้ากะรอบเช้า ตรวจพบพนักงานไม่เพิมน้ำให้ลูกค้า เรียกสอบถามถึงสาเตุทันทีและให้RMเรียกไปทำความเข้าใจ','QSC16',1,'ติ๋ว','QSC17',1,'','QSC18',1,'','QSC19',2,'ในช่วงเวลาที่ตรวจพนักงาน3คนเข้ารับออร์เดอร์ลูกค้าไม่มีคนใหนแนะนำตัวเองเลย เรียกประชุมทั้งทีม','QSC20',1,'','QSC21',1,'ปลาเต๋าเต้ย / ปูตัวซอสต่างๆ','QSC22',1,'มะพร้าวคุณหญิง/เบียร์ชัยบาน','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'แป้งเข้าไปพุดคุยกับลูกค้าโต๊ะ2เพราะจำลูกค้าได้ว่าเป็นลูกค้าประจำ','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หลังเสริฟ์อาหารจานสุดท้ายลูกค้าทานไปแล้วปะมาณ15%','QSC33',1,'แนะนำเครื่องปรุ่งทานกับ กต','QSC34',1,'เชียร์ขาย บัวลอยทุเรียน/ บัวลอยไข่เค็ม','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',2,'เปิดเบามากแทบไม่ได้ยินแจ้งระดับMGTให้ทราบและอย่าให้เกิดขึ้นอีก','QSC41',1,'','QSC42',1,'เรียกประชุมทีมทั้งหมดโดย AREA'),(90,'100208002','111','100208002','2025-09-22','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',2,'พนักงานใหม่ไม่มีป้าย trainee','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่แนะรำ','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',2,'ไม่่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'14 นาที','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุ','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(91,'100101028','201','100101028','2025-09-22','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',1,'','QSC06',1,'','QSC07',0,'','QSC08',0,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ได้ทำ','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'เมนูขาด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(92,'101808522','123','101808522','2025-09-22','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'แอม ชมพู่','QSC16',1,'เจ็ม','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ขาดชำรุด บางแผ่น','QSC39',2,'รอยดำ','QSC40',1,'','QSC41',1,'','QSC42',1,''),(93,'100808028','103','100808028','2025-09-24','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ทราย/ฝ้าย เข้าตรวจเช็ค','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ฝ้าย  ','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'พิม/หลิงหลิง(พิมดีมากๆ)','QSC20',1,'','QSC21',1,'น้ำพริกเมืองกรุง/ไก่งาดำ','QSC22',1,'เงาะปั่น/เบียร์ชัยบาน/มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'พิม/หลิงหลิง','QSC25',1,'พิม/ หลิงหลิง','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หลังเสริฟอาหารจานสุดม้ายไปลูกค้าทานประมาณ15%','QSC33',1,'โม รันเนอร์แนะนำซอสที่เสริฟกับออร์เดริฟ์นาราว่าอะไรทานกับอะไร','QSC34',1,'แกงบวชลูกตาล/ ขน ทุเรียน','QSC35',1,'เสียงดังชัดเจน','QSC36',1,'เสียงดังชัดเจน','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',2,'บริเวณทางเข้าบาร์มีรอยเปียก','QSC40',1,'','QSC41',1,'','QSC42',1,'คุยกับทีมMGTให้ตรวจสอบการทำงานของพนักงานลูกค้าน้อยต้องดูแลภาพรวมทั้งหมดให้ดีเรื่องความสะอาด/การดูแลลูกค้าอย่างดีที่สุด/ยอดขายต่อหัวต่อบิลต้องไม่ตก'),(94,'100208002','126','100208002','2025-09-25','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',2,'ไม่ทุกคน','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',2,'ไม่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',2,'นานกว่า2นาที','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',2,'ไม่ทุกคน','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(95,'100808028','125','100808028','2025-09-25','QSC01',0,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',0,'','QSC16',1,'แจง','QSC17',1,'','QSC18',1,'','QSC19',0,'','QSC20',0,'','QSC21',1,'ข้าวเนื้อปูก้อนกะหรี','QSC22',1,'สลัสซี่/มะพร้าวคุณหญิง','QSC23',0,'','QSC24',1,'','QSC25',0,'','QSC26',0,'','QSC27',0,'','QSC28',0,'','QSC29',0,'','QSC30',1,'','QSC31',0,'','QSC32',0,'','QSC33',0,'','QSC34',1,'ขนมครก/ขน ทุเรียน','QSC35',0,'','QSC36',0,'','QSC37',0,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',0,'','QSC41',1,'','QSC42',1,'กำชับเรื่องออกมายืนหน้าร้านเพือแนะนำเมนูให้กับลูกค้าและรับออร์เดอร์ลูกค้าที่นั่งดูเมนูบริเวณที่นั่งหน้าร้าน'),(96,'100808028','101','100808028','2025-09-25','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'ทินทิน','QSC17',1,'','QSC18',1,'ทำทุกคนเสียงดังฟังชัด','QSC19',1,'ไหม/ ออมสิน','QSC20',1,'','QSC21',1,'กุ้งเผา/หมึกนึ่งมะนาว','QSC22',1,'สัตบงกต/มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',2,'แจ้งพนักงานให้เข้าไปสอบถามลูกค้ามาจากประเทศอะไรมาทานครั้งแรกไหม','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'หลังเสริฟ์อาหารจานสุดท้ายลูกค้าทานไปประมาณ 15%','QSC33',1,'','QSC34',1,'บัวลอยทุเรียน ลาวา','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'กำชับทีมเรื่องความสะอาด/เพิมยอดการขายต่อหัวและต่อบิล/เพิม %การทำ รีวิว'),(97,'101808522','123','101808522','2025-09-26','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',0,'','QSC10',1,'','QSC11',0,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'หนี่ง โอ','QSC16',1,'หนึ่ง','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'','QSC22',1,'','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',0,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(98,'100808028','106','100808028','2025-09-26','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'มงคลตรวจเช็ค','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'ทองพูน /นิด/อุมอิ่ม','QSC16',1,'โน๊ต','QSC17',1,'','QSC18',1,'ทำทุกคนเสียงดังฟังชัด','QSC19',1,'อุมอิ่ม','QSC20',1,'','QSC21',1,'มัสมั่นขาแกะ/ปูตัวซอสต่างๆ /หมึกนึ่งมะนาว','QSC22',1,'เบียร์ชัยบาน/ มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'อุมอิ่ม','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',2,'ยังไม่เห็นทำแจ้งทีมให้รับทราบแล้วอยากให้เ้ขาไปสอบถามสัญชาติลูกค้า','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'เสริฟอาหารจานสุดท้ายลูกค้าทานไปประมาณ 15%','QSC33',1,'แนะนำซอสออร์เดริฟ์นาราและเครื่องปรุ่งทานกับ กต','QSC34',1,'ขน ทุเรียน','QSC35',1,'','QSC36',1,'ทำทุกคน','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งทีมหัวข้อที่ตรวจไม่ผ่านและประชุมทีมเรื่องPromotionต่างๆที่จะมีเดือน ตุลาคม'),(99,'100808028','107','100808028','2025-09-27','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ติ๋ว','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'ติ๋ว','QSC17',1,'','QSC18',1,'','QSC19',1,'ท็อป (ยังไม่ทำทุกคน)','QSC20',1,'','QSC21',1,'ปูซอสต่างๆ/ปลาเต๋าเต้ย','QSC22',1,'มะพร้าวคุรหญิง','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',2,'ทักทายพูดคุยตอนเดียวคือตอนเข้าไปทำ QC','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'อาหารจานสุดท้ายถูกเสริฟลูกค้าทานไปประมาณ 15%','QSC33',1,'','QSC34',1,'ขน ทุเรียน','QSC35',2,'ตรวจพบไม่เคลียจานลูกค้าเรียกบิล แจ้งหัวหน้าโซนให้ทราบทันที','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'ประชุมกับทีมแจ้งเรื่องที่ตรวจไม่ผ่านและต้องแก้ไขให้ได้'),(100,'100808028','103','100808028','2025-09-27','QSC01',0,'','QSC02',1,'','QSC03',1,'','QSC04',1,'ทราย/โขง','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'ขิม','QSC17',1,'','QSC18',1,'','QSC19',1,'ป้อมแนะนำตัวเองเสียงชัดเจน','QSC20',1,'','QSC21',1,'มัสม้่นเนื้อ/ไก่','QSC22',1,'เงาะปั่น/มะพร้าวคุณหญิง','QSC23',1,'','QSC24',1,'ป้อม','QSC25',1,'ป้อม','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'','QSC31',1,'','QSC32',1,'เสริฟอาหารจานสดท้ายไปลูกค้าทานประมาณ15%','QSC33',1,'','QSC34',1,'ลูกตาลลอยแก้ว/ขน ทุเรียน','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'มีรอยถลอก','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'แจ้งหัวข้อที่ตรวจไม่ผ่านและให้ทำการแก้ไขให้ได้'),(101,'202101002','119','202101002','2025-09-27','QSC01',1,'','QSC02',1,'','QSC03',0,'','QSC04',0,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',1,'','QSC13',1,'','QSC14',1,'','QSC15',1,'พี่โบว์','QSC16',1,'พี่นัท','QSC17',1,'พี่นัท','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',1,'กุ้งผัดซอส XO','QSC22',1,'แตงโมปั่น','QSC23',1,'','QSC24',1,'','QSC25',1,'10 นาที','QSC26',0,'','QSC27',0,'','QSC28',1,'','QSC29',1,'','QSC30',1,'8 นาที','QSC31',0,'','QSC32',1,'15 นาที','QSC33',1,'','QSC34',1,'ลูกค้าไม่รับ เชียร์ขายแล้ว','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',1,'','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,''),(102,'100208002','105','100208002','2025-09-28','QSC01',1,'','QSC02',1,'','QSC03',1,'','QSC04',1,'','QSC05',0,'','QSC06',1,'','QSC07',1,'','QSC08',1,'','QSC09',1,'','QSC10',1,'','QSC11',1,'','QSC12',0,'','QSC13',1,'','QSC14',1,'','QSC15',1,'','QSC16',1,'','QSC17',1,'','QSC18',1,'','QSC19',1,'','QSC20',1,'','QSC21',2,'ไม่นำเสนอ','QSC22',2,'ไม่นำเสนอ','QSC23',1,'','QSC24',1,'','QSC25',1,'','QSC26',1,'','QSC27',1,'','QSC28',1,'','QSC29',1,'','QSC30',1,'12 นาที','QSC31',1,'','QSC32',1,'','QSC33',1,'','QSC34',1,'','QSC35',1,'','QSC36',1,'','QSC37',1,'','QSC38',2,'ชำรุด','QSC39',1,'','QSC40',1,'','QSC41',1,'','QSC42',1,'');
/*!40000 ALTER TABLE `tbl_qsc1_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsc1_image`
--

DROP TABLE IF EXISTS `tbl_qsc1_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsc1_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_36` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_37` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_38` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_39` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_40` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_41` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_42` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsc1_image`
--

LOCK TABLES `tbl_qsc1_image` WRITE;
/*!40000 ALTER TABLE `tbl_qsc1_image` DISABLE KEYS */;
INSERT INTO `tbl_qsc1_image` VALUES (7,7,'100101028',201,'2025-08-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC10','175566658210.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'QSC14','175566658214.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'QSC18','175566658218.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175566658238.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,'101808522',123,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC39','175575864839.jpg',NULL,NULL,NULL,NULL,NULL,NULL),(9,9,'101808522',116,'2025-08-21','QSC01','17557593691.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,'101808522',123,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,'101808522',123,'2025-08-21','QSC01','17557600821.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,12,'101808522',116,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,13,'101808522',116,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,14,'101808522',116,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,15,'101808522',116,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,16,'100808028',107,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,17,'202101002',119,'2025-08-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,18,'100101028',203,'2025-08-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC13','175584127913.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'QSC17','175584127917.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175584127938.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,19,'100101028',201,'2025-08-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC13','175584874113.jpg',NULL,NULL,NULL,NULL,'QSC16','175584874116.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,20,'100808028',106,'2025-08-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,21,'100208002',111,'2025-08-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,22,'100808028',101,'2025-08-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,23,'100208002',111,'2025-08-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,24,'100808028',125,'2025-08-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,25,'100101028',204,'2025-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,26,'101808522',123,'2025-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,27,'202101002',119,'2025-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,28,'100808028',103,'2025-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,29,'100101028',203,'2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC13','175610469613.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'QSC17','175610469617.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175610469638.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,30,'100208002',126,'2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,31,'100208002',112,'2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,32,'100101028',203,'2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,33,'101808522',123,'2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,34,'100808028',103,'2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,35,'100208002',126,'2025-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,36,'100101028',203,'2025-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,37,'100101028',203,'2025-08-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,38,'100208002',112,'2025-08-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,39,'101808522',123,'2025-08-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,40,'111910006',116,'2025-08-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC05','17566270405.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC14','175662704014.jpg',NULL,NULL,'QSC16','175662704016.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175662704038.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,41,'100808028',103,'2025-08-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,42,'100208002',111,'2025-08-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,43,'100101028',201,'2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,44,'100808028',106,'2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,45,'100808028',125,'2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,46,'100208002',111,'2025-09-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,47,'100101028',204,'2025-09-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,48,'100208002',105,'2025-09-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,49,'100208002',126,'2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,50,'100101028',201,'2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC13','175706192113.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,51,'100208002',112,'2025-09-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,52,'111910006',116,'2025-09-07','QSC01','17572340221.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC16','175723402216.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175723402238.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,53,'100101028',204,'2025-09-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,54,'100208002',111,'2025-09-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,55,'100208002',111,'2025-09-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,56,'100101028',203,'2025-09-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,57,'100808028',103,'2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,58,'100101028',201,'2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,59,'100808028',101,'2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,60,'100808028',125,'2025-09-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,61,'100808028',106,'2025-09-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,62,'100208002',111,'2025-09-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,63,'100101028',203,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,64,'100808028',103,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,65,'101808522',123,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,66,'100808028',107,'2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,67,'202101002',119,'2025-09-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,68,'100208002',112,'2025-09-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,69,'100808028',103,'2025-09-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,70,'101808522',123,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,71,'100808028',103,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,72,'111910006',116,'2025-09-14',NULL,NULL,'QSC02','17578417482.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175784174838.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,73,'100208002',126,'2025-09-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,74,'100101028',203,'2025-09-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,75,'101808522',123,'2025-09-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,76,'100101028',203,'2025-09-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,77,'101808522',123,'2025-09-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,78,'100808028',103,'2025-09-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,79,'100101028',201,'2025-09-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,80,'100808028',101,'2025-09-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,81,'100808028',103,'2025-09-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,82,'101808522',123,'2025-09-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,83,'100208002',111,'2025-09-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,84,'100808028',106,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,85,'101808522',123,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,86,'111910006',116,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSC38','175844338838.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,87,'100208002',111,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,88,'100808028',125,'2025-09-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,89,'100808028',107,'2025-09-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,90,'100208002',111,'2025-09-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,91,'100101028',201,'2025-09-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,92,'101808522',123,'2025-09-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,93,'100808028',103,'2025-09-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,94,'100208002',126,'2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,95,'100808028',125,'2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,96,'100808028',101,'2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,97,'101808522',123,'2025-09-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,98,'100808028',106,'2025-09-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,99,'100808028',107,'2025-09-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,100,'100808028',103,'2025-09-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,101,'202101002',119,'2025-09-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,102,'100208002',105,'2025-09-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_qsc1_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsc1_topic_detail`
--

DROP TABLE IF EXISTS `tbl_qsc1_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsc1_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(10) NOT NULL,
  `f_topic_detail_th` varchar(255) NOT NULL,
  `f_topic_detail_en` varchar(255) NOT NULL,
  `f_topic_status` bit(1) NOT NULL,
  PRIMARY KEY (`f_topic_id`,`f_topic_code`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsc1_topic_detail`
--

LOCK TABLES `tbl_qsc1_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_qsc1_topic_detail` DISABLE KEYS */;
INSERT INTO `tbl_qsc1_topic_detail` VALUES (1,2,'QSC01','LSM สื่อนอกร้านโปสเตอร์/สแตนดี้/สื่ออื่น ๆ อยู่ในสภาพดี สะอาด update ตามมาตรฐานที่กำหนด','LSM สื่อนอกร้านโปสเตอร์/สแตนดี้/สื่ออื่น ๆ อยู่ในสภาพดี สะอาด update ตามมาตรฐานที่กำหนด',_binary ''),(2,2,'QSC02','LSM สื่อหน้าร้านโปสเตอร์/สแตนดี้/สื่ออื่น ๆ อยู่ในสภาพดี สะอาด update ตามมาตรฐานที่กำหนด','LSM สื่อหน้าร้านโปสเตอร์/สแตนดี้/สื่ออื่น ๆ อยู่ในสภาพดี สะอาด update ตามมาตรฐานที่กำหนด',_binary ''),(3,5,'QSC03','LSM ใส่จำนวนรีวิวล่าสุดในเดือนที่ผ่านมาล่าสุดใน TripAdvisor และ Google','LSM ใส่จำนวนรีวิวล่าสุดในเดือนที่ผ่านมาล่าสุดใน TripAdvisor และ Google',_binary ''),(4,5,'QSC04','LSM ตรวจสอบรีวิวที่ต่ำกว่า 4 ดาวของ TripAdvisor และ Google','LSM ตรวจสอบรีวิวที่ต่ำกว่า 4 ดาวของ TripAdvisor และ Google',_binary ''),(5,5,'QSC05','LSM ตรวจสอบว่าทีม marketing มีการตอบกลับรีวิวหรือไม่','LSM ตรวจสอบว่าทีม marketing มีการตอบกลับรีวิวหรือไม่',_binary ''),(6,9,'QSC06','Staff groomimg ตรวจสอบการแต่งกายพนักงานถูกต้องตามมาตรฐาน','Staff groomimg ตรวจสอบการแต่งกายพนักงานถูกต้องตามมาตรฐาน',_binary ''),(7,4,'QSC07','Roster ใส่จำนวนพนักงานที่ปฎิบัติงานส่วนงานบริการ','Roster ใส่จำนวนพนักงานที่ปฎิบัติงานส่วนงานบริการ',_binary ''),(8,4,'QSC08','Roster ใส่จำนวนพนักงานที่ปฎิบัติงานส่วนงานบาร์','Roster ใส่จำนวนพนักงานที่ปฎิบัติงานส่วนงานบาร์',_binary ''),(9,4,'QSC09','Rosterใส่จำนวนพนักงานที่ปฎิบัติงานส่วนงานครัว','Rosterใส่จำนวนพนักงานที่ปฎิบัติงานส่วนงานครัว',_binary ''),(10,10,'QSC10','Training ตรวจแฟ้ม Training Record ส่วนงานบริการว่าได้รับการอบรมครบถ้วนหรือไม่','Training ตรวจแฟ้ม Training Record ส่วนงานบริการว่าได้รับการอบรมครบถ้วนหรือไม่',_binary ''),(11,10,'QSC11','Training ตรวจแฟ้ม Training Record ส่วนงานบาร์ว่าได้รับการอบรมครบถ้วนหรือไม่','Training ตรวจแฟ้ม Training Record ส่วนงานบาร์ว่าได้รับการอบรมครบถ้วนหรือไม่',_binary ''),(12,10,'QSC12','Training ตรวจแฟ้ม Training Record ส่วนงานครัวว่าได้รับการอบรมครบถ้วนหรือไม่','Training ตรวจแฟ้ม Training Record ส่วนงานครัวว่าได้รับการอบรมครบถ้วนหรือไม่',_binary ''),(13,8,'QSC13','SMM ตรวจสอบสมุด brief และสอบถามความรู้พนักงานว่าได้รับข้อมูลครบถ้วนหรือไม่','SMM ตรวจสอบสมุด brief และสอบถามความรู้พนักงานว่าได้รับข้อมูลครบถ้วนหรือไม่',_binary ''),(14,8,'QSC14','SMM ตรวจสอบสมุด brief ว่าพนักงานเซ็นรับทราบข้อมูลครบถ้วนหรือไม่','SMM ตรวจสอบสมุด brief ว่าพนักงานเซ็นรับทราบข้อมูลครบถ้วนหรือไม่',_binary ''),(15,7,'QSC15','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ระบุชื่อพนักงานที่ให้บริการ 2 ท่านที่ตรวจสอบการบริการ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ระบุชื่อพนักงานที่ให้บริการ 2 ท่านที่ตรวจสอบการบริการ',_binary ''),(16,7,'QSC16','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ระบุชื่อพนักงานตำแหน่ง hostess','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ระบุชื่อพนักงานตำแหน่ง hostess',_binary ''),(17,7,'QSC17','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ Management team มีการทำ station assignment หรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ Management team มีการทำ station assignment หรือไม่',_binary ''),(18,7,'QSC18','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานกล่าวทักทายลูกค้าเวลาเข้าร้านตามที่กำหนดหรือไม่ ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานกล่าวทักทายลูกค้าเวลาเข้าร้านตามที่กำหนดหรือไม่ ',_binary ''),(19,7,'QSC19','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีการแนะนำตัวเองหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีการแนะนำตัวเองหรือไม่',_binary ''),(20,7,'QSC20','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีเสนอเมนูภายใน 2 นาทีหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีเสนอเมนูภายใน 2 นาทีหรือไม่',_binary ''),(21,7,'QSC21','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีเสนออาหารพิเศษอะไร','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีเสนออาหารพิเศษอะไร',_binary ''),(22,7,'QSC22','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีเสนอเครื่องดื่มพิเศษอะไร','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานมีเสนอเครื่องดื่มพิเศษอะไร',_binary ''),(23,7,'QSC23','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานกลับไปรับออเดอร์ ภายใน 5 นาทีหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ พนักงานกลับไปรับออเดอร์ ภายใน 5 นาทีหรือไม่',_binary ''),(24,7,'QSC24','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการทวนรายการอาหารเครื่องดื่มหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการทวนรายการอาหารเครื่องดื่มหรือไม่',_binary ''),(25,7,'QSC25','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการแจ้งระยะเวลาการผลิตอาหารหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการแจ้งระยะเวลาการผลิตอาหารหรือไม่',_binary ''),(26,7,'QSC26','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ amuse busche’ เสริฟและ announce อาหารภายใน 2 นาทีหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ amuse busche’ เสริฟและ announce อาหารภายใน 2 นาทีหรือไม่',_binary ''),(27,7,'QSC27','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการลงอุปกรณ์สำหรับอาหารหลักหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการลงอุปกรณ์สำหรับอาหารหลักหรือไม่',_binary ''),(28,7,'QSC28','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการพูดคุยทักทายลูกค้าหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการพูดคุยทักทายลูกค้าหรือไม่',_binary ''),(29,7,'QSC29','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ เครื่องดื่มเสริฟภายใน 5 นาทีหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ เครื่องดื่มเสริฟภายใน 5 นาทีหรือไม่',_binary ''),(30,7,'QSC30','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ อาหารเสริฟภายในกี่นาที ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ อาหารเสริฟภายในกี่นาที ',_binary ''),(31,7,'QSC31','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ข้าวสวยเสริฟพร้อม อาหารจานแรกหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ข้าวสวยเสริฟพร้อม อาหารจานแรกหรือไม่',_binary ''),(32,7,'QSC32','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ทำ QC นาทีที่เท่าไหร่หลังจากเสริฟอาหารจานแรก ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ทำ QC นาทีที่เท่าไหร่หลังจากเสริฟอาหารจานแรก ',_binary ''),(33,7,'QSC33','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการกล่าวอธิบายอาหารระหว่างการเสริฟหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการกล่าวอธิบายอาหารระหว่างการเสริฟหรือไม่',_binary ''),(34,7,'QSC34','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการนำเสนอเมนู dessert หรือไม่ ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการนำเสนอเมนู dessert หรือไม่ ',_binary ''),(35,7,'QSC35','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการเคลียจานอาหารหรือไม่','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการเคลียจานอาหารหรือไม่',_binary ''),(36,7,'QSC36','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการกล่าวลาลูกค้าหรือไม่ ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ มีการกล่าวลาลูกค้าหรือไม่ ',_binary ''),(37,7,'QSC37','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ใช้เวลา turn โต๊ะ ภายใน 5 นาทีหรือไม่ ','SMM ใส่ชื่อ Shift manager / ตรวจสอบการบริการ ใช้เวลา turn โต๊ะ ภายใน 5 นาทีหรือไม่ ',_binary ''),(38,11,'QSC38','Cleanliness เมนูสะอาด ไม่มีรอยขาด','Cleanliness เมนูสะอาด ไม่มีรอยขาด',_binary ''),(39,11,'QSC39','Cleanliness พื้นสะอาด แห้ง ไม่มีสิ่งกีดขวาง','Cleanliness พื้นสะอาด แห้ง ไม่มีสิ่งกีดขวาง',_binary ''),(40,6,'QSC40','Ambience เปิดเพลง และระดับเสียงตามที่กำหนด','Ambience เปิดเพลง และระดับเสียงตามที่กำหนด',_binary ''),(41,6,'QSC41','Sale ใส่ยอดขาย month to date ในวันนั้น','Sale ใส่ยอดขาย month to date ในวันนั้น',_binary ''),(42,3,'QSC42','feedback และ coaching กับ restaurant manager ใส่ในช่อง comment','feedback และ coaching กับ restaurant manager ใส่ในช่อง comment',_binary '');
/*!40000 ALTER TABLE `tbl_qsc1_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qscakg1_checklist`
--

DROP TABLE IF EXISTS `tbl_qscakg1_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qscakg1_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qscakg1_checklist`
--

LOCK TABLES `tbl_qscakg1_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_qscakg1_checklist` DISABLE KEYS */;
INSERT INTO `tbl_qscakg1_checklist` VALUES (1,'887766993','255','887766993','2025-09-11','QSCAKG01',1,'','QSCAKG02',2,'ปลาหมึกไม่มีวันหมดอายุ','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',1,'','QSCAKG09',1,'','QSCAKG10',2,'หลังจากใช้แล้ว วางเขียงไว้ในอ่างล้างจาน','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',2,'พนักงานฝึกงานใส่เสื้อสีแดงเข้าพื้นที่ น้องแจ้งว่าเสื้อดำไม่แห้ง','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',1,'','QSCAKG35',1,''),(2,'202101002','252','202101002','2025-09-11','QSCAKG01',1,'','QSCAKG02',2,'ปลาหมึกไม่มีวันหมดอายุ','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',2,'หยิบเส้นสลับถุง ไม่ดรียงลำดับการใช้','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',1,'','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',1,'','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',1,'','QSCAKG35',1,''),(3,'202101002','254','202101002','2025-09-14','QSCAKG01',1,'','QSCAKG02',2,'ปลาหมึกไม่มีวันหมดอายุ','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',2,'พนักงานไม่วางกระบวยตวงน้ำมัน','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',1,'','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',2,'พบแมลงสาบตัวเล็ก ใต้อ่างล้างจาน','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',1,'','QSCAKG35',1,''),(4,'202101002','256','202101002','2025-09-16','QSCAKG01',1,'','QSCAKG02',2,'ปลาหมึกไม่มีวันหมดอายุ','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',2,'ไม่มีช้อนตวงสำหรับวัตถุดิบและไม่เตรียมที่คีบไว้ให้พร้อมใช้งาน','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',2,'พนักงานไม่ใส่เครื่องแบบตามแบบที่บ.กำหนด (พนักงานใส่สีขาว บางท่านใส่หมวกแก็ป))','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',1,'','QSCAKG35',1,''),(5,'202101002','251','202101002','2025-09-16','QSCAKG01',1,'','QSCAKG02',1,'','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',1,'','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',1,'','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',1,'','QSCAKG35',1,''),(6,'202101002','251','202101002','2025-09-25','QSCAKG01',1,'','QSCAKG02',2,'ปลาหมึกไม่มีวันหมดอายุ','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',1,'','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',1,'','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',0,'','QSCAKG35',1,''),(7,'202101002','256','202101002','2025-09-25','QSCAKG01',1,'','QSCAKG02',2,'ปลาหมึกไม่มีวันหมดอายุ','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',2,'ช้อนตวงไม่ใส่ ในอ่างซอส','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',1,'','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',1,'','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',2,'ผนังด้านข้างเตาผัดมีคราบน้ำมันเกาะ','QSCAKG25',2,'ผนังด้านบนบริเวณ เหนือ เตา มีฝุ่น เกาะหนา','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',1,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',0,'','QSCAKG35',1,''),(8,'202101002','257','202101002','2025-09-26','QSCAKG01',2,'เส้นส่งมาไม่ติดวันหมดอายุ ได้แจ้ง Store กลับไปแล้วครับ','QSCAKG02',2,'ปลาหมึก,หมู,หมูบดไม่มีวันหมดอายุ เป็นสินค้าจากซัพคุณแอน','QSCAKG03',1,'','QSCAKG04',1,'','QSCAKG05',1,'','QSCAKG06',1,'','QSCAKG07',1,'','QSCAKG08',1,'','QSCAKG09',1,'','QSCAKG10',1,'','QSCAKG11',1,'','QSCAKG12',1,'','QSCAKG13',1,'','QSCAKG14',1,'','QSCAKG15',1,'','QSCAKG16',2,'จัดเครื่องเคียง ไม่ตรงตามสูตร มีการปรับแก้ไขแล้วครับ','QSCAKG17',1,'','QSCAKG18',1,'','QSCAKG19',1,'','QSCAKG20',1,'','QSCAKG21',1,'','QSCAKG22',1,'','QSCAKG23',1,'','QSCAKG24',1,'','QSCAKG25',1,'','QSCAKG26',1,'','QSCAKG27',1,'','QSCAKG28',1,'','QSCAKG29',1,'','QSCAKG30',0,'','QSCAKG31',1,'','QSCAKG32',1,'','QSCAKG33',1,'','QSCAKG34',1,'','QSCAKG35',1,'');
/*!40000 ALTER TABLE `tbl_qscakg1_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qscakg1_image`
--

DROP TABLE IF EXISTS `tbl_qscakg1_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qscakg1_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qscakg1_image`
--

LOCK TABLES `tbl_qscakg1_image` WRITE;
/*!40000 ALTER TABLE `tbl_qscakg1_image` DISABLE KEYS */;
INSERT INTO `tbl_qscakg1_image` VALUES (1,1,'887766993',255,'2025-09-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'202101002',252,'2025-09-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'202101002',254,'2025-09-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'202101002',256,'2025-09-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,'202101002',251,'2025-09-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,'202101002',251,'2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,'202101002',256,'2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QSCAKG24','175881224724.jpg','QSCAKG25','175881224725.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,'202101002',257,'2025-09-26','QSCAKG01','17588920011.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_qscakg1_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qscakg1_topic_detail`
--

DROP TABLE IF EXISTS `tbl_qscakg1_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qscakg1_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_detail_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_detail_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_status` bit(1) NOT NULL,
  PRIMARY KEY (`f_topic_id`,`f_topic_code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qscakg1_topic_detail`
--

LOCK TABLES `tbl_qscakg1_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_qscakg1_topic_detail` DISABLE KEYS */;
INSERT INTO `tbl_qscakg1_topic_detail` VALUES (1,1,'QSCAKG01','ไม่รับสินค้าที่ไม่ตรงตามบริษัทกำหนด','ไม่รับสินค้าที่ไม่ตรงตามบริษัทกำหนด',_binary ''),(2,1,'QSCAKG02','ผลิตภัณฑ์ และ วัตถุดิบทุกชนิดจะต้องระบุวันหมดอายุอย่างชัดเจน ไม่มีวัตถุดิบหมดอายุอยู่ในครัว','ผลิตภัณฑ์ และ วัตถุดิบทุกชนิดจะต้องระบุวันหมดอายุอย่างชัดเจน ไม่มีวัตถุดิบหมดอายุอยู่ในครัว',_binary ''),(3,1,'QSCAKG03','วัตถุดิบเก็บในตู้เย็น 2 °C  ถึง 5°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ','วัตถุดิบเก็บในตู้เย็น 2 °C  ถึง 5°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ',_binary ''),(4,1,'QSCAKG04','วัตถุดิบเก็บในตู้แช่แข็ง -12 °C  ถึง -18°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ','วัตถุดิบเก็บในตู้แช่แข็ง -12 °C  ถึง -18°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ',_binary ''),(5,1,'QSCAKG05','วัตถุดิบต่างๆ ใช้งานตามลำดับ FIFO (มาก่อนใช้ก่อน) ','วัตถุดิบต่างๆ ใช้งานตามลำดับ FIFO (มาก่อนใช้ก่อน) ',_binary ''),(6,2,'QSCAKG06','มีการล้างวัตถุดิบตามขั้นตอนการทำความสะอาด และใช้ผลิตภัณฑ์ตามที่บริษัทกำหนดไว้','มีการล้างวัตถุดิบตามขั้นตอนการทำความสะอาด และใช้ผลิตภัณฑ์ตามที่บริษัทกำหนดไว้',_binary ''),(7,2,'QSCAKG07','ภาชนะใส่เครื่องปรุงสะอาด และอยู่ในสภาพดี','ภาชนะใส่เครื่องปรุงสะอาด และอยู่ในสภาพดี',_binary ''),(8,8,'QSCAKG08','มีช้อนตวงสำหรับเครื่องปรุงแต่ละอย่าง ไม่ใช้ปะปนกัน','มีช้อนตวงสำหรับเครื่องปรุงแต่ละอย่าง ไม่ใช้ปะปนกัน',_binary ''),(9,2,'QSCAKG09','อุปกรณ์ในครัวสะอาด และพร้อมใช้งานไม่ชำรุดหรือแตกหัก ไม่มีวัตถุแปลกปลอมบนอุปกรณ์','อุปกรณ์ในครัวสะอาด และพร้อมใช้งานไม่ชำรุดหรือแตกหัก ไม่มีวัตถุแปลกปลอมบนอุปกรณ์',_binary ''),(10,2,'QSCAKG10','อุปกรณ์ต่างๆ เช่น มีด เขียง กระทะ หม้อ เมื่อใช้งานเสร็จมีการทำความสะอาด','อุปกรณ์ต่างๆ เช่น มีด เขียง กระทะ หม้อ เมื่อใช้งานเสร็จมีการทำความสะอาด',_binary ''),(11,3,'QSCAKG11','ขั้นตอนการปรุงถูกต้องตามสูตรมาตรฐาน และไม่มีสิ่งปนเปื้อนในอาหาร','ขั้นตอนการปรุงถูกต้องตามสูตรมาตรฐาน และไม่มีสิ่งปนเปื้อนในอาหาร',_binary ''),(12,3,'QSCAKG12','วัตถุดิบตรงตามคุณภาพที่กำหนดไว้ ปริมาณ สี ขนาด ความละเอียด ความหยาบ กลิ่น รสชาติ  เป็นไปตามมาตรฐานของบริษัท เช่น ต้นหอมซอย ซอสคั่วไก่','วัตถุดิบตรงตามคุณภาพที่กำหนดไว้ ปริมาณ สี ขนาด ความละเอียด ความหยาบ กลิ่น รสชาติ  เป็นไปตามมาตรฐานของบริษัท เช่น ต้นหอมซอย ซอสคั่วไก่',_binary ''),(13,3,'QSCAKG13','รสชาติ กลิ่น สีของซอสทุกชนิดเป็นปกติและมีจำนวนเพียงพอ (ซอสคั่วไก่, ซอสพริก, และอื่นๆ)','รสชาติ กลิ่น สีของซอสทุกชนิดเป็นปกติและมีจำนวนเพียงพอ (ซอสคั่วไก่, ซอสพริก, และอื่นๆ)',_binary ''),(14,3,'QSCAKG14','ระยะเวลาการปรุง (Cooking Time) ตามมาตรฐานไม่เกิน 5 นาที','ระยะเวลาการปรุง (Cooking Time) ตามมาตรฐานไม่เกิน 5 นาที',_binary ''),(15,4,'QSCAKG15','การจัดแต่งจานอาหารมีปริมาณที่เหมาะสม รูปลักษณ์เป็นไปตามมาตรฐาน','การจัดแต่งจานอาหารมีปริมาณที่เหมาะสม รูปลักษณ์เป็นไปตามมาตรฐาน',_binary ''),(16,4,'QSCAKG16','การจัดเครื่องเคียงครบถ้วน ภาชนะที่ใส่สะอาด','การจัดเครื่องเคียงครบถ้วน ภาชนะที่ใส่สะอาด',_binary ''),(17,4,'QSCAKG17','อุณหภูมิของอาหารที่เสิร์ฟถูกต้อง (อาหารร้อนเสิร์ฟร้อน)','อุณหภูมิของอาหารที่เสิร์ฟถูกต้อง (อาหารร้อนเสิร์ฟร้อน)',_binary ''),(18,5,'QSCAKG18','พนักงานกล่าวทักทาย และเสนอขายอาหาร','พนักงานกล่าวทักทาย และเสนอขายอาหาร',_binary ''),(19,5,'QSCAKG19','พนักงานแต่งกายถูกต้องตามระเบียบที่บริษัทกำหนด สะอาด เรียบร้อย','พนักงานแต่งกายถูกต้องตามระเบียบที่บริษัทกำหนด สะอาด เรียบร้อย',_binary ''),(20,5,'QSCAKG20','พนักงานทุกคนต้องเล็บสั้น ไม่มีหนวดเครา (ชาย) เส้นผมเก็บเรียบร้อยอยู่เสมอ  ','พนักงานทุกคนต้องเล็บสั้น ไม่มีหนวดเครา (ชาย) เส้นผมเก็บเรียบร้อยอยู่เสมอ  ',_binary ''),(21,5,'QSCAKG21','มีรอยยิ้ม และการสบตาลูกค้าในระหว่างการพูดคุยกับลูกค้า','มีรอยยิ้ม และการสบตาลูกค้าในระหว่างการพูดคุยกับลูกค้า',_binary ''),(22,5,'QSCAKG22','พนักงานกล่าวขอบคุณลูกค้า ด้วยน้ำเสียงจริงใจ','พนักงานกล่าวขอบคุณลูกค้า ด้วยน้ำเสียงจริงใจ',_binary ''),(23,6,'QSCAKG23','ไฟหน้าร้านและป้ายไฟต่างๆ อยู่ในสภาพดีและสะอาด','ไฟหน้าร้านและป้ายไฟต่างๆ อยู่ในสภาพดีและสะอาด',_binary ''),(24,6,'QSCAKG24','พื้น กระจก ฝ้าเพดาน ผนัง อุปกรณ์ต่างๆ บริเวณหน้าร้านสะอาด ','พื้น กระจก ฝ้าเพดาน ผนัง อุปกรณ์ต่างๆ บริเวณหน้าร้านสะอาด ',_binary ''),(25,7,'QSCAKG25','ผนังและเพดานในร้านไม่มีคราบสกปรก ไม่เลอะเทอะ ไม่มีหยากไย่','ผนังและเพดานในร้านไม่มีคราบสกปรก ไม่เลอะเทอะ ไม่มีหยากไย่',_binary ''),(26,7,'QSCAKG26','ขอบยางตู้เย็นครัวสะอาด ไม่มีคราบสกปรก ','ขอบยางตู้เย็นครัวสะอาด ไม่มีคราบสกปรก ',_binary ''),(27,7,'QSCAKG27','ภายในครัวมีความสะอาด เรียบร้อย จัดของเป็นระเบียบอยู่เสมอ','ภายในครัวมีความสะอาด เรียบร้อย จัดของเป็นระเบียบอยู่เสมอ',_binary ''),(28,7,'QSCAKG28','เครื่องดูดควันใช้งานได้เป็นปกติ หน้ากากเครื่องดูดควันไม่มีคราบไขมันฝังแน่น','เครื่องดูดควันใช้งานได้เป็นปกติ หน้ากากเครื่องดูดควันไม่มีคราบไขมันฝังแน่น',_binary ''),(29,7,'QSCAKG29','มีการทำความสะอาดบ่อดักไขมันทุกวัน','มีการทำความสะอาดบ่อดักไขมันทุกวัน',_binary ''),(30,7,'QSCAKG30','พื้นครัว ไม่มีน้ำรั่ว น้ำซึม สามารถระบายน้ำได้ดี','พื้นครัว ไม่มีน้ำรั่ว น้ำซึม สามารถระบายน้ำได้ดี',_binary ''),(31,7,'QSCAKG31','ไม่พบแมลงวัน,กลิ่นหนู,แมลงสาบ พาหะนำโรคอื่นๆ และกลิ่นไม่พึ่งประสงค์','ไม่พบแมลงวัน,กลิ่นหนู,แมลงสาบ พาหะนำโรคอื่นๆ และกลิ่นไม่พึ่งประสงค์',_binary ''),(32,8,'QSCAKG32','ไม่มีสิ่งของ วัสดุ ภาชนะ หรืออุปกรณ์ที่ติดไฟง่ายตั้งอยู่ในบริเวณที่มีเปลวไฟหรือความร้อน','ไม่มีสิ่งของ วัสดุ ภาชนะ หรืออุปกรณ์ที่ติดไฟง่ายตั้งอยู่ในบริเวณที่มีเปลวไฟหรือความร้อน',_binary ''),(33,8,'QSCAKG33','สภาพของอุปกรณ์ เครื่องใช้ไฟฟ้า ปลั๊กไฟ รวมทั้งสายไฟต่างๆ ในร้านอยู่ในสภาพพร้อมใช้งานอย่างมีประสิทธิภาพ','สภาพของอุปกรณ์ เครื่องใช้ไฟฟ้า ปลั๊กไฟ รวมทั้งสายไฟต่างๆ ในร้านอยู่ในสภาพพร้อมใช้งานอย่างมีประสิทธิภาพ',_binary ''),(34,8,'QSCAKG34','ถังดับเพลิงอยู่ในสภาพพร้อมใช้งาน ติดตั้งในพื้นที่ที่สามารถหยิบใช้ได้สะดวกรวดเร็ว พนักงานได้รับการอบรมการใช้','ถังดับเพลิงอยู่ในสภาพพร้อมใช้งาน ติดตั้งในพื้นที่ที่สามารถหยิบใช้ได้สะดวกรวดเร็ว พนักงานได้รับการอบรมการใช้',_binary ''),(35,8,'QSCAKG35','การจัดวางของไม่กีดขวางทางเข้า-ออก หรือประตูฉุกเฉิน','การจัดวางของไม่กีดขวางทางเข้า-ออก หรือประตูฉุกเฉิน',_binary '');
/*!40000 ALTER TABLE `tbl_qscakg1_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsce1_checklist`
--

DROP TABLE IF EXISTS `tbl_qsce1_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsce1_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_36` int NOT NULL,
  `f_comment_36` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_37` int NOT NULL,
  `f_comment_37` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_38` int NOT NULL,
  `f_comment_38` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_39` int NOT NULL,
  `f_comment_39` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_40` int NOT NULL,
  `f_comment_40` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_41` int NOT NULL,
  `f_comment_41` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_42` int NOT NULL,
  `f_comment_42` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_43` int NOT NULL,
  `f_comment_43` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_44` int NOT NULL,
  `f_comment_44` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_45` int NOT NULL,
  `f_comment_45` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_46` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_46` int NOT NULL,
  `f_comment_46` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_47` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_47` int NOT NULL,
  `f_comment_47` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_48` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_48` int NOT NULL,
  `f_comment_48` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_49` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_49` int NOT NULL,
  `f_comment_49` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_50` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_50` int NOT NULL,
  `f_comment_50` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_51` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_51` int NOT NULL,
  `f_comment_51` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_52` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_52` int NOT NULL,
  `f_comment_52` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_53` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_53` int NOT NULL,
  `f_comment_53` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_54` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_54` int NOT NULL,
  `f_comment_54` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_55` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_55` int NOT NULL,
  `f_comment_55` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_56` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_56` int NOT NULL,
  `f_comment_56` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_57` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_57` int NOT NULL,
  `f_comment_57` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_58` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_58` int NOT NULL,
  `f_comment_58` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_59` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_59` int NOT NULL,
  `f_comment_59` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_60` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_60` int NOT NULL,
  `f_comment_60` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_61` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_61` int NOT NULL,
  `f_comment_61` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_62` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_62` int NOT NULL,
  `f_comment_62` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_63` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_63` int NOT NULL,
  `f_comment_63` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_64` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_64` int NOT NULL,
  `f_comment_64` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_65` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_65` int NOT NULL,
  `f_comment_65` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_66` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_66` int NOT NULL,
  `f_comment_66` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_67` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_67` int NOT NULL,
  `f_comment_67` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_68` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_68` int NOT NULL,
  `f_comment_68` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_69` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_69` int NOT NULL,
  `f_comment_69` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_70` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_70` int NOT NULL,
  `f_comment_70` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_71` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_71` int NOT NULL,
  `f_comment_71` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_72` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_72` int NOT NULL,
  `f_comment_72` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_73` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_73` int NOT NULL,
  `f_comment_73` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_74` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_74` int NOT NULL,
  `f_comment_74` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_75` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_75` int NOT NULL,
  `f_comment_75` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_76` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_76` int NOT NULL,
  `f_comment_76` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_77` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_77` int NOT NULL,
  `f_comment_77` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_78` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_78` int NOT NULL,
  `f_comment_78` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_79` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_79` int NOT NULL,
  `f_comment_79` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_80` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_80` int NOT NULL,
  `f_comment_80` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_81` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_81` int NOT NULL,
  `f_comment_81` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_82` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_82` int NOT NULL,
  `f_comment_82` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_83` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_83` int NOT NULL,
  `f_comment_83` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_84` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_84` int NOT NULL,
  `f_comment_84` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_85` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_85` int NOT NULL,
  `f_comment_85` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_86` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_86` int NOT NULL,
  `f_comment_86` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_87` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_87` int NOT NULL,
  `f_comment_87` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_88` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_88` int NOT NULL,
  `f_comment_88` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_89` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_89` int NOT NULL,
  `f_comment_89` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_90` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_90` int NOT NULL,
  `f_comment_90` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_91` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_91` int NOT NULL,
  `f_comment_91` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_92` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_92` int NOT NULL,
  `f_comment_92` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_93` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_93` int NOT NULL,
  `f_comment_93` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_94` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_94` int NOT NULL,
  `f_comment_94` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_95` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_95` int NOT NULL,
  `f_comment_95` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_96` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_96` int NOT NULL,
  `f_comment_96` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_97` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_97` int NOT NULL,
  `f_comment_97` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_98` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_98` int NOT NULL,
  `f_comment_98` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_99` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_99` int NOT NULL,
  `f_comment_99` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_100` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_100` int NOT NULL,
  `f_comment_100` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_101` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_101` int NOT NULL,
  `f_comment_101` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsce1_checklist`
--

LOCK TABLES `tbl_qsce1_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_qsce1_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_qsce1_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsce1_image`
--

DROP TABLE IF EXISTS `tbl_qsce1_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsce1_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_36` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_37` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_38` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_39` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_40` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_41` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_42` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_43` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_44` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_45` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_46` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_46` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_47` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_47` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_48` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_48` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_49` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_49` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_50` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_50` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_51` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_51` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_52` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_52` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_53` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_53` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_54` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_54` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_55` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_55` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_56` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_56` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_57` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_57` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_58` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_58` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_59` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_59` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_60` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_60` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_61` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_61` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_62` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_62` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_63` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_63` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_64` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_64` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_65` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_65` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_66` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_66` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_67` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_67` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_68` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_68` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_69` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_69` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_70` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_70` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_71` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_71` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_72` varchar(10) DEFAULT NULL,
  `f_image_path_72` varchar(100) DEFAULT NULL,
  `f_topic_code_73` varchar(10) DEFAULT NULL,
  `f_image_path_73` varchar(100) DEFAULT NULL,
  `f_topic_code_74` varchar(10) DEFAULT NULL,
  `f_image_path_74` varchar(100) DEFAULT NULL,
  `f_topic_code_75` varchar(10) DEFAULT NULL,
  `f_image_path_75` varchar(100) DEFAULT NULL,
  `f_topic_code_76` varchar(10) DEFAULT NULL,
  `f_image_path_76` varchar(100) DEFAULT NULL,
  `f_topic_code_77` varchar(10) DEFAULT NULL,
  `f_image_path_77` varchar(100) DEFAULT NULL,
  `f_topic_code_78` varchar(10) DEFAULT NULL,
  `f_image_path_78` varchar(100) DEFAULT NULL,
  `f_topic_code_79` varchar(10) DEFAULT NULL,
  `f_image_path_79` varchar(100) DEFAULT NULL,
  `f_topic_code_80` varchar(10) DEFAULT NULL,
  `f_image_path_80` varchar(100) DEFAULT NULL,
  `f_topic_code_81` varchar(10) DEFAULT NULL,
  `f_image_path_81` varchar(100) DEFAULT NULL,
  `f_topic_code_82` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_82` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_83` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_83` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_84` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_84` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_85` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_85` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_86` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_86` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_87` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_87` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_88` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_88` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_89` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_89` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_90` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_90` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_91` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_91` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_92` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_92` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_93` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_93` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_94` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_94` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_95` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_95` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_96` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_96` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_97` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_97` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_98` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_98` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_99` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_99` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_100` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_100` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_101` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_101` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsce1_image`
--

LOCK TABLES `tbl_qsce1_image` WRITE;
/*!40000 ALTER TABLE `tbl_qsce1_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_qsce1_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsce1_topic_detail`
--

DROP TABLE IF EXISTS `tbl_qsce1_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsce1_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `f_topic_detail_th` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_topic_detail_en` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_topic_status` int NOT NULL,
  PRIMARY KEY (`f_topic_id`),
  UNIQUE KEY `tbl_dca1_topic_detail` (`f_topic_code`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsce1_topic_detail`
--

LOCK TABLES `tbl_qsce1_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_qsce1_topic_detail` DISABLE KEYS */;
INSERT INTO `tbl_qsce1_topic_detail` VALUES (1,1000,'QSCE01','Goods Receiving / Chilled products : The temperature has to be between 3 °C to 7 °C. ','Goods Receiving / Chilled products : The temperature has to be between 3 °C to 7 °C. ',1),(4,1000,'QSCE02','Goods Receiving / Frozen products : The temperature has to be between  -8 °C to -14 °C. ','Goods Receiving / Frozen products : The temperature has to be between  -8 °C to -14 °C. ',1),(5,1000,'QSCE03','Goods Receiving / Expiration date is shown on every single product received. ','Goods Receiving / Expiration date is shown on every single product received. ',1),(6,1000,'QSCE04','Goods Receiving / FIFO (First-In, First-Out) has been applied to use with all ingredients. ','Goods Receiving / FIFO (First-In, First-Out) has been applied to use with all ingredients. ',1),(7,1000,'QSCE05','Storage / Chilled products are stored in a refrigerator at a temperature of 2 °C to 5 °C and are well-organized.','Storage / Chilled products are stored in a refrigerator at a temperature of 2 °C to 5 °C and are well-organized.',1),(8,1000,'QSCE06','Storage / Frozen products are stored in a freezer at a temperature of -12 °C to -18 °C and are well-organized. ','Storage / Frozen products are stored in a freezer at a temperature of -12 °C to -18 °C and are well-organized. ',1),(9,1000,'QSCE07','Storage / Ice cream products are stored in a freezer at a temperature of -18 °C to -22 °C and are well-organized. ','Storage / Ice cream products are stored in a freezer at a temperature of -18 °C to -22 °C and are well-organized. ',1),(10,1000,'QSCE08','Storage / Daydot label has been attached to every product. ','Storage / Daydot label has been attached to every product. ',1),(11,1000,'QSCE09','Storage / No expired goods left in the kitchen. ','Storage / No expired goods left in the kitchen. ',1),(12,1000,'QSCE10','Preparation / Cutting boards are being used hygienically (for meat / vegetables use must be separated).','Preparation / Cutting boards are being used hygienically (for meat / vegetables use must be separated).',1),(13,1000,'QSCE11','Preparation / Seasoning containers are clean and in good condition.','Preparation / Seasoning containers are clean and in good condition.',1),(14,1000,'QSCE12','Preparation / Staffs use different measuring spoons for different seasoning. ','Preparation / Staffs use different measuring spoons for different seasoning. ',1),(15,1000,'QSCE13','Preparation / Kitchen utensils are clean and in ready to use condition, not broken or damaged. No unwanted objects on the tools.','Preparation / Kitchen utensils are clean and in ready to use condition, not broken or damaged. No unwanted objects on the tools.',1),(16,1000,'QSCE14','Preparation / After using equipments such as knives, cutting boards, pans and pots, all must be well-cleaned. ','Preparation / After using equipments such as knives, cutting boards, pans and pots, all must be well-cleaned. ',1),(17,1000,'QSCE15','Cooking / Cooking process has been followed accordingly to the company standard and no contamination.','Cooking / Cooking process has been followed accordingly to the company standard and no contamination.',1),(18,1000,'QSCE16','Cooking / Quality of all ingredients and prepration materials meet the company\'s standard (quantity, color, size, smoothness, roughness, odor, and taste) For example, Chilli, Onion and RTU seafood sauce. 			','Cooking / Quality of all ingredients and prepration materials meet the company\'s standard (quantity, color, size, smoothness, roughness, odor, and taste) For example, Chilli, Onion and RTU seafood sauce. 			',1),(19,1000,'QSCE17','Cooking / All sauce\'s taste & odor & color are perfectly fine with sufficient amount. For example, RTU satay sauce, RTU Tom Yum base, RTU all purpose sauce, etc.','Cooking / All sauce\'s taste & odor & color are perfectly fine with sufficient amount. For example, RTU satay sauce, RTU Tom Yum base, RTU all purpose sauce, etc.',1),(20,1000,'QSCE18','Cooking / While serving, temperature of the dish must meet company\'s standard.','Cooking / While serving, temperature of the dish must meet company\'s standard.',1),(21,1000,'QSCE19','Cooking / The presentation of food, desserts and drinks is appropriate in quantity and the appearance is up to standard.','Cooking / The presentation of food, desserts and drinks is appropriate in quantity and the appearance is up to standard.',1),(22,1000,'QSCE20','Checking / Food Styling and food appearance must meet company\'s standard.','Checking / Food Styling and food appearance must meet company\'s standard.',1),(23,1000,'QSCE21','Checking / Drinks & Desserts Styling and appearance must meet company\'s standard.','Checking / Drinks & Desserts Styling and appearance must meet company\'s standard.',1),(24,1000,'QSCE22','Checking / Staffs serve correct sauce pairing with correct dish.','Checking / Staffs serve correct sauce pairing with correct dish.',1),(25,2000,'QSCE23','Dressing / Staffs put on a name tag on the right side of the chest (Lady nara on the left) every time while working.','Dressing / Staffs put on a name tag on the right side of the chest (Lady nara on the left) every time while working.',1),(26,2000,'QSCE24','Dressing / Female staffs wears a hair net while working (if short hair must be Short hair neatly styled) and wears appropriate make-up. For Male staff doesn\'t grow beard and long hair.','Dressing / Female staffs wears a hair net while working (if short hair must be Short hair neatly styled) and wears appropriate make-up. For Male staff doesn\'t grow beard and long hair.',1),(27,2000,'QSCE25','Dressing / All staffs\' nails are clean and short and Female staffs are not allowed to wear nail polish.','Dressing / All staffs\' nails are clean and short and Female staffs are not allowed to wear nail polish.',1),(28,2000,'QSCE26','Dressing / Every kitchen staff wears a hair net and an apron while working.','Dressing / Every kitchen staff wears a hair net and an apron while working.',1),(29,2000,'QSCE27','Personality and Posture in the restaurant / Staff greets the customers properly, with a sincere tone, turns to face the customers and bows politely.','Personality and Posture in the restaurant / Staff greets the customers properly, with a sincere tone, turns to face the customers and bows politely.',1),(30,2000,'QSCE28','Personality and Posture in the restaurant / Staffs demonstrate correct postures during work (standing, walking, service).','Personality and Posture in the restaurant / Staffs demonstrate correct postures during work (standing, walking, service).',1),(31,2000,'QSCE29','Personality and Posture in the restaurant / Staff thanked the customers properly and in a sincere tone.','Personality and Posture in the restaurant / Staff thanked the customers properly and in a sincere tone.',1),(32,2000,'QSCE30','Personality and Posture in the restaurant / Staffs use trays correctly when serving and remove items from tables (serving trays do not extend into customer tables).','Personality and Posture in the restaurant / Staffs use trays correctly when serving and remove items from tables (serving trays do not extend into customer tables).',1),(33,2000,'QSCE31','Personality and Posture in the restaurant / Staffs smile and make eye contact with customers while talking to them.','Personality and Posture in the restaurant / Staffs smile and make eye contact with customers while talking to them.',1),(34,2000,'QSCE32','Customers Greetings / There are staffs who work as receptionists at all times.','Customers Greetings / There are staffs who work as receptionists at all times.',1),(35,2000,'QSCE33','Customers Greetings / Greeting customers within 30 seconds when they arrive at the store. Use the 10/5 rule (Wai, Smile & Eye contact). Say hello and call the customer\'s name (if you know their name).','Customers Greetings / Greeting customers within 30 seconds when they arrive at the store. Use the 10/5 rule (Wai, Smile & Eye contact). Say hello and call the customer\'s name (if you know their name).',1),(36,2000,'QSCE34','Customers Greetings / The receptionist (waiter/cashier who standing in front of the store) makes eye contact with the customer, smiles and says, \"Sawasdee ka / krub, welcome to Nara ka / krub\" and simultaneously Wai (which is a Thai greeting). Then ask \"How many people are there today? Or, hello... you, sir/madam.\" Then invite the customer to the table that has been prepared.\"','Customers Greetings / The receptionist (waiter/cashier who standing in front of the store) makes eye contact with the customer, smiles and says, \"Sawasdee ka / krub, welcome to Nara ka / krub\" and simultaneously Wai (which is a Thai greeting). Then ask \"How many people are there today? Or, hello... you, sir/madam.\" Then invite the customer to the table that has been prepared.\"',1),(37,2000,'QSCE35','Customers Greetings / Staffs Walk the customer to the table with a cheerful gesture at a distance of no more than 1 meter and look back at them from time to time. When reaching the table that the customer is satisfied with, move the chair to facilitate the customer, starting with children, the elderly, and women in that order.','Customers Greetings / Staffs Walk the customer to the table with a cheerful gesture at a distance of no more than 1 meter and look back at them from time to time. When reaching the table that the customer is satisfied with, move the chair to facilitate the customer, starting with children, the elderly, and women in that order.',1),(38,2000,'QSCE36','Customers Greetings / Presenting the menu according to the number of customers. Enter from the right hand side and hand it to the elderly first, followed by women, children, men, or in clockwise order. Say, \"May I present the menu, sir/madam?\" and inform the customers of the promotions for that month.','Customers Greetings / Presenting the menu according to the number of customers. Enter from the right hand side and hand it to the elderly first, followed by women, children, men, or in clockwise order. Say, \"May I present the menu, sir/madam?\" and inform the customers of the promotions for that month.',1),(39,2000,'QSCE37','Customers Greetings / The receptionist can explain the menu, eating manners and promotions to customers.','Customers Greetings / The receptionist can explain the menu, eating manners and promotions to customers.',1),(40,2000,'QSCE38','Food and Beverages Serving / The menu is described accurately, completely and clearly. The food order by the customer are reviewed completely and correctly.','Food and Beverages Serving / The menu is described accurately, completely and clearly. The food order by the customer are reviewed completely and correctly.',1),(41,2000,'QSCE39','Food and Beverages Serving / Staffs serve the food with a smiling face and inform the customers of the name of the drink/food when serving.','Food and Beverages Serving / Staffs serve the food with a smiling face and inform the customers of the name of the drink/food when serving.',1),(42,2000,'QSCE40','Food and Beverages Serving / Always serve food using a serving tray.	','Food and Beverages Serving / Always serve food using a serving tray.	',1),(43,2000,'QSCE41','Food and Beverages Serving / Serving regular drinks to customers within 3-5 minutes and blended drinks within 6-10 minutes after customers order (in normal circumstances) and serve on the right side of the customer.','Food and Beverages Serving / Serving regular drinks to customers within 3-5 minutes and blended drinks within 6-10 minutes after customers order (in normal circumstances) and serve on the right side of the customer.',1),(44,2000,'QSCE42','Food and Beverages Serving / Serving the first dish within 15 minutes after receiving the order from the customer and serve on the right side of the customer.','Food and Beverages Serving / Serving the first dish within 15 minutes after receiving the order from the customer and serve on the right side of the customer.',1),(45,2000,'QSCE43','Food and Beverages Serving / Always inform customers of any dish that takes 20 minutes or more to cook.','Food and Beverages Serving / Always inform customers of any dish that takes 20 minutes or more to cook.',1),(46,2000,'QSCE44','Food and Beverages Serving / Checking that the customer has received the complete order. If it is found that the customer has not received the complete order, apologizing to the customer and promptly follow up on the food.','Food and Beverages Serving / Checking that the customer has received the complete order. If it is found that the customer has not received the complete order, apologizing to the customer and promptly follow up on the food.',1),(47,2000,'QSCE45','Food and Beverages Serving / Staffs handle containers and Utensils correctly.','Food and Beverages Serving / Staffs handle containers and Utensils correctly.',1),(48,2000,'QSCE46','Food and Beverages Serving / The drinks and food served are in accordance with the restaurant\'s standards and served correctly to the table that was ordered.','Food and Beverages Serving / The drinks and food served are in accordance with the restaurant\'s standards and served correctly to the table that was ordered.',1),(49,2000,'QSCE47','Food and Beverages Serving / Refill drinks for customers when the glass is ¼ full and always ask the customer first.','Food and Beverages Serving / Refill drinks for customers when the glass is ¼ full and always ask the customer first.',1),(50,2000,'QSCE48','Food and Beverages Serving / Every time a staff member walks past a customer\'s table and finds an empty plate, they must immediately collect it, and must always ask permission from the customer first. They must not collect it if the customer asks for permission, except for drinking glasses, which must not be collected until the customer has left the table.','Food and Beverages Serving / Every time a staff member walks past a customer\'s table and finds an empty plate, they must immediately collect it, and must always ask permission from the customer first. They must not collect it if the customer asks for permission, except for drinking glasses, which must not be collected until the customer has left the table.',1),(51,2000,'QSCE49','Food and Beverages Serving / The drinks and food served are in accordance with the restaurant\'s standards and served correctly to the table that was ordered.','Food and Beverages Serving / The drinks and food served are in accordance with the restaurant\'s standards and served correctly to the table that was ordered.',1),(52,2000,'QSCE50','Food and Beverages Serving / Ask the customer about their satisfaction with their drinks/food after all the food has been served and ask if they would like anything else.','Food and Beverages Serving / Ask the customer about their satisfaction with their drinks/food after all the food has been served and ask if they would like anything else.',1),(53,2000,'QSCE51','Food and Beverages Serving / Every time a staff member walks past a customer\'s table and finds an empty plate, they must immediately collect it, and must always ask permission from the customer first. Do not collect it if the customer complains. Do not collect a glass of water until the customer has left the table.','Food and Beverages Serving / Every time a staff member walks past a customer\'s table and finds an empty plate, they must immediately collect it, and must always ask permission from the customer first. Do not collect it if the customer complains. Do not collect a glass of water until the customer has left the table.',1),(54,2000,'QSCE52','Food and Beverages Serving / If the customer wants to order more, staffs have to receive the order immediately. Or if they can\'t receive it, inform the customer as follows \"Please wait a moment.\" And another staff member must come to receive the order within 1 minute.','Food and Beverages Serving / If the customer wants to order more, staffs have to receive the order immediately. Or if they can\'t receive it, inform the customer as follows \"Please wait a moment.\" And another staff member must come to receive the order within 1 minute.',1),(55,2000,'QSCE53','Unused plates,Table Clearing and Billing Procedures / utensils, and scraps of paper are removed from customer tables, including clearing dishes before serving desserts.','Unused plates,Table Clearing and Billing Procedures / utensils, and scraps of paper are removed from customer tables, including clearing dishes before serving desserts.',1),(56,2000,'QSCE54','Unused plates,Table Clearing and Billing Procedures / Offer a menu of tea and coffee drinks after receiving the dessert menu.','Unused plates,Table Clearing and Billing Procedures / Offer a menu of tea and coffee drinks after receiving the dessert menu.',1),(57,2000,'QSCE55','All plates and utensils must be cleared within 2-5 minutes after the customer leaves the table. Tables should be cleared and set within 5 minutes.','All plates and utensils must be cleared within 2-5 minutes after the customer leaves the table. Tables should be cleared and set within 5 minutes.',1),(58,2000,'QSCE56','Unused plates,Table Clearing and Billing Procedures / Arrange condiments and utensils on the table correctly. Do not set the table while it is still wet.','Unused plates,Table Clearing and Billing Procedures / Arrange condiments and utensils on the table correctly. Do not set the table while it is still wet.',1),(59,2000,'QSCE57','Unused plates,Table Clearing and Billing Procedures / The table and chairs are placed in the right position. The cushions are firm and not placed up-right.','Unused plates,Table Clearing and Billing Procedures / The table and chairs are placed in the right position. The cushions are firm and not placed up-right.',1),(60,2000,'QSCE58','Unused plates,Table Clearing and Billing Procedures / The bill must be checked for the correctness of the items and prices before sending the bill to the customer and the staff can explain the various discount promotions correctly.			','Unused plates,Table Clearing and Billing Procedures / The bill must be checked for the correctness of the items and prices before sending the bill to the customer and the staff can explain the various discount promotions correctly.			',1),(61,2000,'QSCE59','Unused plates,Table Clearing and Billing Procedures / While customers\'re leaving the store and meet any staff (any position), That staffs will say thank you and invite them to come back and use the service again, while raising your hands in a polite and friendly manner.			','Unused plates,Table Clearing and Billing Procedures / While customers\'re leaving the store and meet any staff (any position), That staffs will say thank you and invite them to come back and use the service again, while raising your hands in a polite and friendly manner.			',1),(62,2000,'QSCE60','Manager on Duty / There will be a small meeting before starting the shift, briefing on advantages and improvements, reviewing various promotions or any special food/products to be sold.','Manager on Duty / There will be a small meeting before starting the shift, briefing on advantages and improvements, reviewing various promotions or any special food/products to be sold.',1),(63,2000,'QSCE61','Manager on Duty / The manager on duty takes the lead in asking about customer needs and satisfaction.','Manager on Duty / The manager on duty takes the lead in asking about customer needs and satisfaction.',1),(64,2000,'QSCE62','Manager on Duty / The manager on duty has appropriate training and guidance for employees. OJT','Manager on Duty / The manager on duty has appropriate training and guidance for employees. OJT',1),(65,3000,'QSCE63','Front of store lights and signs are in good condition, functioning normally and clean (except for shops that are outdoors, normally the lights are not turned on during the day)','Front of store lights and signs are in good condition, functioning normally and clean (except for shops that are outdoors, normally the lights are not turned on during the day)',1),(66,3000,'QSCE64','Storefront and Surrounding Area / Promotional media and other signs are in good condition, clean, well organized, in appropriate positions, and have updated information (logo signs, light signs, and various indicators).	','Storefront and Surrounding Area / Promotional media and other signs are in good condition, clean, well organized, in appropriate positions, and have updated information (logo signs, light signs, and various indicators).	',1),(67,3000,'QSCE65','Storefront and Surrounding Area / The floor, glass, ceiling, and walls in front of the shop are clean. The TV (if any) works well and there is no dust on it.','Storefront and Surrounding Area / The floor, glass, ceiling, and walls in front of the shop are clean. The TV (if any) works well and there is no dust on it.',1),(68,3000,'QSCE66','Storefront and Surrounding Area / The menu stand and reception podium are clean and ready to use. There are enough business cards for customers.','Storefront and Surrounding Area / The menu stand and reception podium are clean and ready to use. There are enough business cards for customers.',1),(69,3000,'QSCE67','Storefront and Surrounding Area / The entrance area, customer waiting area and cashier room are clean and tidy.','Storefront and Surrounding Area / The entrance area, customer waiting area and cashier room are clean and tidy.',1),(70,3000,'QSCE68','Cleanliness and Tidiness inside the shop / The lighting in the shop is sufficient. All the light bulbs are all installed.','Cleanliness and Tidiness inside the shop / The lighting in the shop is sufficient. All the light bulbs are all installed.',1),(71,3000,'QSCE69','Cleanliness and Tidiness inside the shop / Playing Nara music playlist as provided by the company at a volume level that is neither too loud nor too soft.','Cleanliness and Tidiness inside the shop / Playing Nara music playlist as provided by the company at a volume level that is neither too loud nor too soft.',1),(72,3000,'QSCE70','Cleanliness and Tidiness inside the shop / The air temperature in the shop is cool and comfortable, not too cold or too hot. The temperature is set according to the company\'s standard of 25 degrees +/- 2.','Cleanliness and Tidiness inside the shop / The air temperature in the shop is cool and comfortable, not too cold or too hot. The temperature is set according to the company\'s standard of 25 degrees +/- 2.',1),(73,3000,'QSCE71','Cleanliness and Tidiness inside the shop / Air Return, Fresh Air, and curtain vents are always cleaned.','Cleanliness and Tidiness inside the shop / Air Return, Fresh Air, and curtain vents are always cleaned.',1),(74,3000,'QSCE72','Cleanliness and Tidiness inside the shop / The walls and ceilings in the shop are not dirty/not messy/not covered with cobwebs.','Cleanliness and Tidiness inside the shop / The walls and ceilings in the shop are not dirty/not messy/not covered with cobwebs.',1),(75,3000,'QSCE73','Cleanliness and Tidiness inside the shop / While mopping the floor in the shop and the floor is found to be wet, a slippery warning sign must be displayed and the sign must be put away if the floor is found to be dry.','Cleanliness and Tidiness inside the shop / While mopping the floor in the shop and the floor is found to be wet, a slippery warning sign must be displayed and the sign must be put away if the floor is found to be dry.',1),(76,3000,'QSCE74','Cleanliness and Tidiness inside the shop / The floors and walkways in the shop area are clean, there is no dirt on the floor, and the floor is not wet.','Cleanliness and Tidiness inside the shop / The floors and walkways in the shop area are clean, there is no dirt on the floor, and the floor is not wet.',1),(77,3000,'QSCE75','Cleanliness and Tidiness inside the shop / The table, chairs, seat cushions, and pillows are always clean and ready to use. There is no musty smell, stains, or damage.','Cleanliness and Tidiness inside the shop / The table, chairs, seat cushions, and pillows are always clean and ready to use. There is no musty smell, stains, or damage.',1),(78,3000,'QSCE76','Cleanliness and Tidiness inside the shop / The service station area is clean, tidy, dust-free, and organized according to the specified format.	','Cleanliness and Tidiness inside the shop / The service station area is clean, tidy, dust-free, and organized according to the specified format.	',1),(79,3000,'QSCE77','Cleanliness and Tidiness inside the shop / All containers and equipments must be clean, ready to use, in good condition, and not used incorrectly.','Cleanliness and Tidiness inside the shop / All containers and equipments must be clean, ready to use, in good condition, and not used incorrectly.',1),(80,3000,'QSCE78','Cleanliness and Tidiness inside the shop / All glassware is clean and free of food residue or any dirt.','Cleanliness and Tidiness inside the shop / All glassware is clean and free of food residue or any dirt.',1),(81,3000,'QSCE79','Cleanliness and Tidiness inside the shop / Foodout, sauce and condiment preparation points must be clean and free of stains, and containers must be cleaned before refilling each time.','Cleanliness and Tidiness inside the shop / Foodout, sauce and condiment preparation points must be clean and free of stains, and containers must be cleaned before refilling each time.',1),(82,3000,'QSCE80','Cleanliness and Tidiness inside the shop / All trash cans are step-type (except for the trash can under the food pit), clean, no stains, no bad smell, no rotten trash left overnight, and are disposed of regularly.','Cleanliness and Tidiness inside the shop / All trash cans are step-type (except for the trash can under the food pit), clean, no stains, no bad smell, no rotten trash left overnight, and are disposed of regularly.',1),(83,3000,'QSCE81','Cleanliness and Tidiness inside the shop / Equipment and liquids used around the sink are sufficient and clean.','Cleanliness and Tidiness inside the shop / Equipment and liquids used around the sink are sufficient and clean.',1),(84,3000,'QSCE82','Cleanliness and Tidiness inside the shop / Cleanliness is maintained and the temperature of all types of refrigerators is checked regularly.','Cleanliness and Tidiness inside the shop / Cleanliness is maintained and the temperature of all types of refrigerators is checked regularly.',1),(85,3000,'QSCE83','Cleanliness and Tidiness inside the shop / The area above and below the bar is clean and neatly organized.','Cleanliness and Tidiness inside the shop / The area above and below the bar is clean and neatly organized.',1),(86,3000,'QSCE84','Cleanliness and Tidiness inside the shop / The upper and lower areas of the kitchen\'s condiment shelves and other items are clean and neatly organized, with items clearly separated into categories.','Cleanliness and Tidiness inside the shop / The upper and lower areas of the kitchen\'s condiment shelves and other items are clean and neatly organized, with items clearly separated into categories.',1),(87,3000,'QSCE85','Cleanliness and Tidiness inside the shop / The hood works normally, it is not too loud, and the hood mask has no stubborn grease stains.','Cleanliness and Tidiness inside the shop / The hood works normally, it is not too loud, and the hood mask has no stubborn grease stains.',1),(88,3000,'QSCE86','Cleanliness and Tidiness inside the shop / There is a clear classification of cloths for wiping cutting boards, kitchen tables, plates, bowls, glasses, and customer tables.','Cleanliness and Tidiness inside the shop / There is a clear classification of cloths for wiping cutting boards, kitchen tables, plates, bowls, glasses, and customer tables.',1),(89,3000,'QSCE87','Cleanliness and Tidiness inside the shop / The sink is clean and free of food scraps or other leftover ingredients.','Cleanliness and Tidiness inside the shop / The sink is clean and free of food scraps or other leftover ingredients.',1),(90,3000,'QSCE88','Cleanliness and Tidiness inside the shop / The sink/dishwasher is clean inside and out and works well, including the grease tank, which is free of grease.','Cleanliness and Tidiness inside the shop / The sink/dishwasher is clean inside and out and works well, including the grease tank, which is free of grease.',1),(91,3000,'QSCE89','Cleanliness and Tidiness inside the shop / No trash or food scraps remain in the kitchen drain.','Cleanliness and Tidiness inside the shop / No trash or food scraps remain in the kitchen drain.',1),(92,3000,'QSCE90','Cleanliness and Tidiness inside the shop / The kitchen floor is clean, not slippery, has no water leaks or seepage, and can drain water well when washing the kitchen floor.','Cleanliness and Tidiness inside the shop / The kitchen floor is clean, not slippery, has no water leaks or seepage, and can drain water well when washing the kitchen floor.',1),(93,3000,'QSCE91','Cleanliness and Tidiness inside the shop / Staffs clean the kitchen drain every time after closing the kitchen and have a Big Cleaing schedule for grease stains.','Cleanliness and Tidiness inside the shop / Staffs clean the kitchen drain every time after closing the kitchen and have a Big Cleaing schedule for grease stains.',1),(94,3000,'QSCE92','Cleanliness and Tidiness inside the shop / Rubber bands aren\'t found in the kitchen and bar area.','Cleanliness and Tidiness inside the shop / Rubber bands aren\'t found in the kitchen and bar area.',1),(95,3000,'QSCE93','Cleanliness and Tidiness inside the shop / No flies, rat smell, cockroaches, other disease vectors, or unpleasant odors were found.','Cleanliness and Tidiness inside the shop / No flies, rat smell, cockroaches, other disease vectors, or unpleasant odors were found.',1),(96,3000,'QSCE94','Cleanliness and Tidiness inside the shop / There is a cleaning schedule and it is followed as specified: Daily/Weekly/Monthly/Big Cleaning.','Cleanliness and Tidiness inside the shop / There is a cleaning schedule and it is followed as specified: Daily/Weekly/Monthly/Big Cleaning.',1),(97,3000,'QSCE95','Safety / No flammable objects, materials, containers or equipment shall be located in an area where there is a flame or heat.	','Safety / No flammable objects, materials, containers or equipment shall be located in an area where there is a flame or heat.	',1),(98,3000,'QSCE96','Safety / The condition of the equipment, electrical appliances, and various electrical wires in the shop are in a good condition that ready for use efficiently.','Safety / The condition of the equipment, electrical appliances, and various electrical wires in the shop are in a good condition that ready for use efficiently.',1),(99,3000,'QSCE97','Safety / Electrical system, gas system, and air conditioning system control cabinets are operating normally.','Safety / Electrical system, gas system, and air conditioning system control cabinets are operating normally.',1),(100,3000,'QSCE98','Safety / Cleanliness and Tidiness inside the shop / There is a clear classification of cloths for wiping cutting boards, kitchen tables, plates, bowls, glasses, and customer tables.','Safety / Cleanliness and Tidiness inside the shop / There is a clear classification of cloths for wiping cutting boards, kitchen tables, plates, bowls, glasses, and customer tables.',1),(101,3000,'QSCE99','Safety / The kitchen ventilation system is adequate for kitchen working conditions.','Safety / The kitchen ventilation system is adequate for kitchen working conditions.',1),(102,3000,'QSCE100','Safety / The placement of store items does not obstruct entrances/exits or emergency doors.','Safety / The placement of store items does not obstruct entrances/exits or emergency doors.',1),(103,3000,'QSCE101','Safety / Staffs wear closed-toe shoes that cover the heel and toes tightly (to facilitate walking in the store and greatly reduce the risk of sharp objects or hot objects falling on the feet)			','Safety / Staffs wear closed-toe shoes that cover the heel and toes tightly (to facilitate walking in the store and greatly reduce the risk of sharp objects or hot objects falling on the feet)			',1);
/*!40000 ALTER TABLE `tbl_qsce1_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsce2_checklist`
--

DROP TABLE IF EXISTS `tbl_qsce2_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsce2_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_36` int NOT NULL,
  `f_comment_36` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_37` int NOT NULL,
  `f_comment_37` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_38` int NOT NULL,
  `f_comment_38` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_39` int NOT NULL,
  `f_comment_39` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_40` int NOT NULL,
  `f_comment_40` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_41` int NOT NULL,
  `f_comment_41` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_42` int NOT NULL,
  `f_comment_42` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_43` int NOT NULL,
  `f_comment_43` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_44` int NOT NULL,
  `f_comment_44` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_45` int NOT NULL,
  `f_comment_45` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_46` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_46` int NOT NULL,
  `f_comment_46` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_47` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_47` int NOT NULL,
  `f_comment_47` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_48` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_48` int NOT NULL,
  `f_comment_48` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_49` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_49` int NOT NULL,
  `f_comment_49` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_50` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_50` int NOT NULL,
  `f_comment_50` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_51` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_51` int NOT NULL,
  `f_comment_51` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_52` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_52` int NOT NULL,
  `f_comment_52` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_53` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_53` int NOT NULL,
  `f_comment_53` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_54` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_54` int NOT NULL,
  `f_comment_54` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_55` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_55` int NOT NULL,
  `f_comment_55` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_56` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_56` int NOT NULL,
  `f_comment_56` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_57` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_57` int NOT NULL,
  `f_comment_57` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_58` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_58` int NOT NULL,
  `f_comment_58` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_59` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_59` int NOT NULL,
  `f_comment_59` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_60` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_60` int NOT NULL,
  `f_comment_60` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_61` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_61` int NOT NULL,
  `f_comment_61` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_62` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_62` int NOT NULL,
  `f_comment_62` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_63` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_63` int NOT NULL,
  `f_comment_63` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_64` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_64` int NOT NULL,
  `f_comment_64` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_65` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_65` int NOT NULL,
  `f_comment_65` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_66` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_66` int NOT NULL,
  `f_comment_66` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_67` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_67` int NOT NULL,
  `f_comment_67` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_68` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_68` int NOT NULL,
  `f_comment_68` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_69` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_69` int NOT NULL,
  `f_comment_69` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_70` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_70` int NOT NULL,
  `f_comment_70` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_71` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_71` int NOT NULL,
  `f_comment_71` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_72` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_72` int NOT NULL,
  `f_comment_72` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_73` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_73` int NOT NULL,
  `f_comment_73` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_74` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_74` int NOT NULL,
  `f_comment_74` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_75` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_75` int NOT NULL,
  `f_comment_75` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_76` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_76` int NOT NULL,
  `f_comment_76` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_77` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_77` int NOT NULL,
  `f_comment_77` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_78` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_78` int NOT NULL,
  `f_comment_78` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_79` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_79` int NOT NULL,
  `f_comment_79` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_80` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_80` int NOT NULL,
  `f_comment_80` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_81` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_81` int NOT NULL,
  `f_comment_81` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_82` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_82` int NOT NULL,
  `f_comment_82` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_83` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_83` int NOT NULL,
  `f_comment_83` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_84` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_84` int NOT NULL,
  `f_comment_84` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_85` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_85` int NOT NULL,
  `f_comment_85` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_86` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_86` int NOT NULL,
  `f_comment_86` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_87` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_87` int NOT NULL,
  `f_comment_87` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_88` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_88` int NOT NULL,
  `f_comment_88` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_89` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_89` int NOT NULL,
  `f_comment_89` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_90` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_90` int NOT NULL,
  `f_comment_90` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_91` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_91` int NOT NULL,
  `f_comment_91` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_92` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_92` int NOT NULL,
  `f_comment_92` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_93` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_93` int NOT NULL,
  `f_comment_93` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_94` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_94` int NOT NULL,
  `f_comment_94` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_95` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_95` int NOT NULL,
  `f_comment_95` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_96` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_96` int NOT NULL,
  `f_comment_96` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_97` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_97` int NOT NULL,
  `f_comment_97` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_98` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_98` int NOT NULL,
  `f_comment_98` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_99` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_99` int NOT NULL,
  `f_comment_99` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_100` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_100` int NOT NULL,
  `f_comment_100` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_101` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_101` int NOT NULL,
  `f_comment_101` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsce2_checklist`
--

LOCK TABLES `tbl_qsce2_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_qsce2_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_qsce2_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsce2_image`
--

DROP TABLE IF EXISTS `tbl_qsce2_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsce2_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_36` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_36` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_37` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_37` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_38` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_38` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_39` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_39` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_40` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_40` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_41` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_41` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_42` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_42` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_43` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_43` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_44` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_44` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_45` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_45` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_46` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_46` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_47` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_47` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_48` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_48` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_49` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_49` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_50` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_50` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_51` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_51` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_52` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_52` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_53` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_53` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_54` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_54` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_55` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_55` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_56` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_56` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_57` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_57` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_58` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_58` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_59` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_59` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_60` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_60` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_61` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_61` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_62` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_62` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_63` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_63` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_64` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_64` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_65` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_65` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_66` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_66` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_67` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_67` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_68` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_68` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_69` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_69` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_70` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_70` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_71` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_71` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_72` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_72` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_73` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_73` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_74` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_74` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_75` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_75` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_76` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_76` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_77` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_77` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_78` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_78` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_79` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_79` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_80` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_80` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_81` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_81` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_82` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_82` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_83` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_83` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_84` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_84` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_85` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_85` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_86` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_86` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_87` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_87` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_88` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_88` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_89` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_89` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_90` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_90` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_91` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_91` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_92` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_92` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_93` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_93` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_94` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_94` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_95` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_95` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_96` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_96` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_97` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_97` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_98` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_98` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_99` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_99` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_100` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_100` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_101` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image_path_101` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsce2_image`
--

LOCK TABLES `tbl_qsce2_image` WRITE;
/*!40000 ALTER TABLE `tbl_qsce2_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_qsce2_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qsce2_topic_detail`
--

DROP TABLE IF EXISTS `tbl_qsce2_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qsce2_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `f_topic_detail_th` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_topic_detail_en` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_topic_status` int NOT NULL,
  PRIMARY KEY (`f_topic_id`),
  UNIQUE KEY `tbl_dca1_topic_detail` (`f_topic_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qsce2_topic_detail`
--

LOCK TABLES `tbl_qsce2_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_qsce2_topic_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_qsce2_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qscmbe1_checklist`
--

DROP TABLE IF EXISTS `tbl_qscmbe1_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qscmbe1_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_comment_1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_comment_2` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_comment_3` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_comment_4` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_comment_5` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_comment_6` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_comment_7` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_comment_8` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_comment_9` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_comment_11` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_comment_12` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_comment_13` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_comment_14` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_comment_15` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_comment_17` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_comment_18` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_comment_19` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_comment_20` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_comment_21` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_comment_22` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_comment_23` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_comment_24` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_comment_25` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_comment_26` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_comment_27` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_comment_28` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment_29` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_30` int NOT NULL,
  `f_comment_30` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_31` int NOT NULL,
  `f_comment_31` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_32` int NOT NULL,
  `f_comment_32` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_33` int NOT NULL,
  `f_comment_33` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_34` int NOT NULL,
  `f_comment_34` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_35` int NOT NULL,
  `f_comment_35` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qscmbe1_checklist`
--

LOCK TABLES `tbl_qscmbe1_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_qscmbe1_checklist` DISABLE KEYS */;
INSERT INTO `tbl_qscmbe1_checklist` VALUES (1,'101808522','401','101808522','2025-09-25','QSCMBE01',1,'','QSCMBE02',1,'','QSCMBE03',1,'','QSCMBE04',1,'','QSCMBE05',1,'','QSCMBE06',1,'','QSCMBE07',1,'','QSCMBE08',1,'','QSCMBE09',1,'','QSCMBE10',1,'','QSCMBE11',1,'','QSCMBE12',1,'','QSCMBE13',1,'','QSCMBE14',1,'','QSCMBE15',1,'','QSCMBE16',1,'','QSCMBE17',1,'','QSCMBE18',1,'','QSCMBE19',1,'','QSCMBE20',2,'เก็บไรผมให้เรียบร้อย','QSCMBE21',1,'','QSCMBE22',1,'','QSCMBE23',1,'','QSCMBE24',1,'','QSCMBE25',1,'','QSCMBE26',1,'','QSCMBE27',1,'','QSCMBE28',1,'','QSCMBE29',1,'','QSCMBE30',1,'','QSCMBE31',1,'','QSCMBE32',1,'','QSCMBE33',1,'','QSCMBE34',0,'ของร้านไม่มี','QSCMBE35',1,'');
/*!40000 ALTER TABLE `tbl_qscmbe1_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qscmbe1_image`
--

DROP TABLE IF EXISTS `tbl_qscmbe1_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qscmbe1_image` (
  `f_image_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_topic_code_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_6` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_7` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_9` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_10` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_11` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_12` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_13` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_14` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_16` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_19` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_20` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_21` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_22` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_23` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_24` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_25` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_26` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_27` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_28` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_29` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_30` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_31` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_32` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_33` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_34` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_topic_code_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `f_image_path_35` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qscmbe1_image`
--

LOCK TABLES `tbl_qscmbe1_image` WRITE;
/*!40000 ALTER TABLE `tbl_qscmbe1_image` DISABLE KEYS */;
INSERT INTO `tbl_qscmbe1_image` VALUES (1,1,'101808522',401,'2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_qscmbe1_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_qscmbe1_topic_detail`
--

DROP TABLE IF EXISTS `tbl_qscmbe1_topic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_qscmbe1_topic_detail` (
  `f_topic_id` int NOT NULL AUTO_INCREMENT,
  `f_category_code` int NOT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_detail_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_detail_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_status` bit(1) NOT NULL,
  PRIMARY KEY (`f_topic_id`,`f_topic_code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_qscmbe1_topic_detail`
--

LOCK TABLES `tbl_qscmbe1_topic_detail` WRITE;
/*!40000 ALTER TABLE `tbl_qscmbe1_topic_detail` DISABLE KEYS */;
INSERT INTO `tbl_qscmbe1_topic_detail` VALUES (1,1,'qscmbe01','ไม่รับสินค้าที่ไม่ตรงตามบริษัทกำหนด','ไม่รับสินค้าที่ไม่ตรงตามบริษัทกำหนด',_binary ''),(2,1,'qscmbe02','ผลิตภัณฑ์ และ วัตถุดิบทุกชนิดจะต้องระบุวันหมดอายุอย่างชัดเจน ไม่มีวัตถุดิบหมดอายุอยู่ในครัว','ผลิตภัณฑ์ และ วัตถุดิบทุกชนิดจะต้องระบุวันหมดอายุอย่างชัดเจน ไม่มีวัตถุดิบหมดอายุอยู่ในครัว',_binary ''),(3,1,'qscmbe03','วัตถุดิบเก็บในตู้เย็น 2 °C  ถึง 5°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ','วัตถุดิบเก็บในตู้เย็น 2 °C  ถึง 5°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ',_binary ''),(4,1,'qscmbe04','วัตถุดิบเก็บในตู้แช่แข็ง -12 °C  ถึง -18°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ','วัตถุดิบเก็บในตู้แช่แข็ง -12 °C  ถึง -18°C  จัดเก็บอย่างถูกต้อง เป็นระเบียบ',_binary ''),(5,1,'qscmbe05','วัตถุดิบต่างๆ ใช้งานตามลำดับ FIFO (มาก่อนใช้ก่อน) ','วัตถุดิบต่างๆ ใช้งานตามลำดับ FIFO (มาก่อนใช้ก่อน) ',_binary ''),(6,2,'qscmbe06','มีการล้างวัตถุดิบตามขั้นตอนการทำความสะอาด และใช้ผลิตภัณฑ์ตามที่บริษัทกำหนดไว้','มีการล้างวัตถุดิบตามขั้นตอนการทำความสะอาด และใช้ผลิตภัณฑ์ตามที่บริษัทกำหนดไว้',_binary ''),(7,2,'qscmbe07','ภาชนะใส่เครื่องปรุงสะอาด และอยู่ในสภาพดี','ภาชนะใส่เครื่องปรุงสะอาด และอยู่ในสภาพดี',_binary ''),(8,8,'qscmbe08','มีช้อนตวงสำหรับเครื่องปรุงแต่ละอย่าง ไม่ใช้ปะปนกัน','มีช้อนตวงสำหรับเครื่องปรุงแต่ละอย่าง ไม่ใช้ปะปนกัน',_binary ''),(9,2,'qscmbe09','อุปกรณ์ในครัวสะอาด และพร้อมใช้งานไม่ชำรุดหรือแตกหัก ไม่มีวัตถุแปลกปลอมบนอุปกรณ์','อุปกรณ์ในครัวสะอาด และพร้อมใช้งานไม่ชำรุดหรือแตกหัก ไม่มีวัตถุแปลกปลอมบนอุปกรณ์',_binary ''),(10,2,'qscmbe10','อุปกรณ์ต่างๆ เช่น มีด เขียง กระทะ หม้อ เมื่อใช้งานเสร็จมีการทำความสะอาด','อุปกรณ์ต่างๆ เช่น มีด เขียง กระทะ หม้อ เมื่อใช้งานเสร็จมีการทำความสะอาด',_binary ''),(11,3,'qscmbe11','ขั้นตอนการปรุงถูกต้องตามสูตรมาตรฐาน และไม่มีสิ่งปนเปื้อนในอาหาร','ขั้นตอนการปรุงถูกต้องตามสูตรมาตรฐาน และไม่มีสิ่งปนเปื้อนในอาหาร',_binary ''),(12,3,'qscmbe12','วัตถุดิบตรงตามคุณภาพที่กำหนดไว้ ปริมาณ สี ขนาด ความละเอียด ความหยาบ กลิ่น รสชาติ  เป็นไปตามมาตรฐานของบริษัท','วัตถุดิบตรงตามคุณภาพที่กำหนดไว้ ปริมาณ สี ขนาด ความละเอียด ความหยาบ กลิ่น รสชาติ  เป็นไปตามมาตรฐานของบริษัท',_binary ''),(13,3,'qscmbe13','รสชาติ กลิ่น สีของซอสทุกชนิดเป็นปกติและมีจำนวนเพียงพอ','รสชาติ กลิ่น สีของซอสทุกชนิดเป็นปกติและมีจำนวนเพียงพอ',_binary ''),(14,3,'qscmbe14','ระยะเวลาการปรุง (Cooking Time) ตามมาตรฐานไม่เกิน 5 นาที','ระยะเวลาการปรุง (Cooking Time) ตามมาตรฐานไม่เกิน 5 นาที',_binary ''),(15,4,'qscmbe15','การจัดแต่งจานอาหารมีปริมาณที่เหมาะสม รูปลักษณ์เป็นไปตามมาตรฐาน','การจัดแต่งจานอาหารมีปริมาณที่เหมาะสม รูปลักษณ์เป็นไปตามมาตรฐาน',_binary ''),(16,4,'qscmbe16','การจัดเครื่องเคียงครบถ้วน ภาชนะที่ใส่สะอาด','การจัดเครื่องเคียงครบถ้วน ภาชนะที่ใส่สะอาด',_binary ''),(17,4,'qscmbe17','อุณหภูมิของอาหารที่เสิร์ฟถูกต้อง (อาหารร้อนเสิร์ฟร้อน)','อุณหภูมิของอาหารที่เสิร์ฟถูกต้อง (อาหารร้อนเสิร์ฟร้อน)',_binary ''),(18,5,'qscmbe18','พนักงานกล่าวทักทาย และเสนอขายอาหาร','พนักงานกล่าวทักทาย และเสนอขายอาหาร',_binary ''),(19,5,'qscmbe19','พนักงานแต่งกายถูกต้องตามระเบียบที่บริษัทกำหนด สะอาด เรียบร้อย','พนักงานแต่งกายถูกต้องตามระเบียบที่บริษัทกำหนด สะอาด เรียบร้อย',_binary ''),(20,5,'qscmbe20','พนักงานทุกคนต้องเล็บสั้น ไม่มีหนวดเครา (ชาย) เส้นผมเก็บเรียบร้อยอยู่เสมอ  ','พนักงานทุกคนต้องเล็บสั้น ไม่มีหนวดเครา (ชาย) เส้นผมเก็บเรียบร้อยอยู่เสมอ  ',_binary ''),(21,5,'qscmbe21','มีรอยยิ้ม และการสบตาลูกค้าในระหว่างการพูดคุยกับลูกค้า','มีรอยยิ้ม และการสบตาลูกค้าในระหว่างการพูดคุยกับลูกค้า',_binary ''),(22,5,'qscmbe22','พนักงานกล่าวขอบคุณลูกค้า ด้วยน้ำเสียงจริงใจ','พนักงานกล่าวขอบคุณลูกค้า ด้วยน้ำเสียงจริงใจ',_binary ''),(23,6,'qscmbe23','ไฟหน้าร้านและป้ายไฟต่างๆ อยู่ในสภาพดีและสะอาด','ไฟหน้าร้านและป้ายไฟต่างๆ อยู่ในสภาพดีและสะอาด',_binary ''),(24,6,'qscmbe24','พื้น กระจก ฝ้าเพดาน ผนัง อุปกรณ์ต่างๆ บริเวณหน้าร้านสะอาด ','พื้น กระจก ฝ้าเพดาน ผนัง อุปกรณ์ต่างๆ บริเวณหน้าร้านสะอาด ',_binary ''),(25,7,'qscmbe25','ผนังและเพดานในร้านไม่มีคราบสกปรก ไม่เลอะเทอะ ไม่มีหยากไย่','ผนังและเพดานในร้านไม่มีคราบสกปรก ไม่เลอะเทอะ ไม่มีหยากไย่',_binary ''),(26,7,'qscmbe26','ขอบยางตู้เย็นครัวสะอาด ไม่มีคราบสกปรก ','ขอบยางตู้เย็นครัวสะอาด ไม่มีคราบสกปรก ',_binary ''),(27,7,'qscmbe27','ภายในครัวมีความสะอาด เรียบร้อย จัดของเป็นระเบียบอยู่เสมอ','ภายในครัวมีความสะอาด เรียบร้อย จัดของเป็นระเบียบอยู่เสมอ',_binary ''),(28,7,'qscmbe28','เครื่องดูดควันใช้งานได้เป็นปกติ หน้ากากเครื่องดูดควันไม่มีคราบไขมันฝังแน่น','เครื่องดูดควันใช้งานได้เป็นปกติ หน้ากากเครื่องดูดควันไม่มีคราบไขมันฝังแน่น',_binary ''),(29,7,'qscmbe29','มีการทำความสะอาดบ่อดักไขมันทุกวัน','มีการทำความสะอาดบ่อดักไขมันทุกวัน',_binary ''),(30,7,'qscmbe30','พื้นครัว ไม่มีน้ำรั่ว น้ำซึม สามารถระบายน้ำได้ดี','พื้นครัว ไม่มีน้ำรั่ว น้ำซึม สามารถระบายน้ำได้ดี',_binary ''),(31,7,'qscmbe31','ไม่พบแมลงวัน,กลิ่นหนู,แมลงสาบ พาหะนำโรคอื่นๆ และกลิ่นไม่พึ่งประสงค์','ไม่พบแมลงวัน,กลิ่นหนู,แมลงสาบ พาหะนำโรคอื่นๆ และกลิ่นไม่พึ่งประสงค์',_binary ''),(32,8,'qscmbe32','ไม่มีสิ่งของ วัสดุ ภาชนะ หรืออุปกรณ์ที่ติดไฟง่ายตั้งอยู่ในบริเวณที่มีเปลวไฟหรือความร้อน','ไม่มีสิ่งของ วัสดุ ภาชนะ หรืออุปกรณ์ที่ติดไฟง่ายตั้งอยู่ในบริเวณที่มีเปลวไฟหรือความร้อน',_binary ''),(33,8,'qscmbe33','สภาพของอุปกรณ์ เครื่องใช้ไฟฟ้า ปลั๊กไฟ รวมทั้งสายไฟต่างๆ ในร้านอยู่ในสภาพพร้อมใช้งานอย่างมีประสิทธิภาพ','สภาพของอุปกรณ์ เครื่องใช้ไฟฟ้า ปลั๊กไฟ รวมทั้งสายไฟต่างๆ ในร้านอยู่ในสภาพพร้อมใช้งานอย่างมีประสิทธิภาพ',_binary ''),(34,8,'qscmbe34','ถังดับเพลิงอยู่ในสภาพพร้อมใช้งาน ติดตั้งในพื้นที่ที่สามารถหยิบใช้ได้สะดวกรวดเร็ว พนักงานได้รับการอบรมการใช้','ถังดับเพลิงอยู่ในสภาพพร้อมใช้งาน ติดตั้งในพื้นที่ที่สามารถหยิบใช้ได้สะดวกรวดเร็ว พนักงานได้รับการอบรมการใช้',_binary ''),(35,8,'qscmbe35','การจัดวางของไม่กีดขวางทางเข้า-ออก หรือประตูฉุกเฉิน','การจัดวางของไม่กีดขวางทางเข้า-ออก หรือประตูฉุกเฉิน',_binary '');
/*!40000 ALTER TABLE `tbl_qscmbe1_topic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_bcl1`
--

DROP TABLE IF EXISTS `tbl_sum_bcl1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_bcl1` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_bcl1_id` int NOT NULL,
  `f_bcl1_sum` int NOT NULL,
  `f_bcl1_total` int DEFAULT NULL,
  `f_bcl1_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_bcl1`
--

LOCK TABLES `tbl_sum_bcl1` WRITE;
/*!40000 ALTER TABLE `tbl_sum_bcl1` DISABLE KEYS */;
INSERT INTO `tbl_sum_bcl1` VALUES (3,3,42,44,95.45,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-08-30','101808522'),(4,4,43,45,95.56,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-07','101808522'),(5,5,43,45,95.56,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-14','101808522'),(7,7,44,45,97.78,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-20','101808522'),(8,8,43,45,95.56,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-27','101808522');
/*!40000 ALTER TABLE `tbl_sum_bcl1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_dca1`
--

DROP TABLE IF EXISTS `tbl_sum_dca1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_dca1` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_dca1_id` int NOT NULL,
  `f_dca1_sum` int NOT NULL,
  `f_dca1_total` int DEFAULT NULL,
  `f_dca1_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_dca1`
--

LOCK TABLES `tbl_sum_dca1` WRITE;
/*!40000 ALTER TABLE `tbl_sum_dca1` DISABLE KEYS */;
INSERT INTO `tbl_sum_dca1` VALUES (231,5,60,66,90.91,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-08-20','102301138'),(232,6,58,66,87.88,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-08-21','102301138'),(233,7,41,60,68.33,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','203','Co Ltd Central wOrld','2025-08-21','202501013'),(234,8,44,47,93.62,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','119','Angmorr-Thonglor','2025-08-21','102301138'),(235,9,60,66,90.91,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-08-23','102301138'),(236,10,51,54,94.44,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','125','The Emsphere','2025-08-23','101405020'),(237,11,60,65,92.31,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','107','NARA Siam Paragon','2025-08-23','101405020'),(238,12,56,64,87.50,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','103','NARA Central World','2025-08-24','101405020'),(239,13,56,64,87.50,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','103','NARA Central World','2025-08-24','101405020'),(240,14,40,61,65.57,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-08-25','202501013'),(241,15,58,66,87.88,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-08-25','100806024'),(242,16,65,66,98.48,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','106','NARA EmQuartier','2025-08-25','101405020'),(243,17,64,66,96.97,'101807511','วรรณภา  จริยะมา','Wannapa  Jariyama','116','NARA One Nimman','2025-08-26','101808522'),(244,18,51,58,87.93,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-08-26','100806024'),(246,20,59,65,90.77,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','105','NARA Embassy','2025-08-27','100806024'),(247,21,58,59,98.31,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','124','Sook siam','2025-08-30','102301138'),(248,22,61,66,92.42,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-08-31','102301138'),(249,23,54,59,91.53,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-08-31','100806024'),(250,24,53,55,96.36,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','125','The Emsphere','2025-09-01','101405020'),(251,25,59,66,89.39,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-01','100806024'),(252,26,46,50,92.00,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','119','Angmorr-Thonglor','2025-09-02','102301138'),(258,32,63,66,95.45,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-09-02','102301138'),(259,33,61,66,92.42,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','105','NARA Embassy','2025-09-02','100806024'),(261,35,57,66,86.36,'101807511','วรรณภา  จริยะมา','Wannapa  Jariyama','116','NARA One Nimman','2025-09-03','101808522'),(262,36,61,66,92.42,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-03','102301138'),(263,37,61,66,92.42,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-03','100806024'),(266,40,58,65,89.23,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','103','NARA Central World','2025-09-03','101405020'),(271,45,57,66,86.36,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','106','NARA EmQuartier','2025-09-03','101405020'),(272,46,55,64,85.94,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','107','NARA Siam Paragon','2025-09-04','101405020'),(273,47,40,61,65.57,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-08-25','202501013'),(274,48,47,60,78.33,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-09-04','202501013'),(275,49,63,66,95.45,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-05','102301138'),(276,50,47,60,78.33,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-09-04','202501013'),(277,51,48,60,80.00,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','203','Co Ltd Central wOrld','2025-09-05','202501013'),(278,52,51,59,86.44,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-09-06','100806024'),(279,53,48,50,96.00,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','119','Angmorr-Thonglor','2025-09-06','102301138'),(280,54,60,66,90.91,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-08','100806024'),(281,55,60,66,90.91,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-09-08','102301138'),(282,56,57,58,98.28,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','124','Sook siam','2025-09-08','102301138'),(283,57,34,59,57.63,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','204','Co Ltd Emsphere','2025-09-08','202501013'),(284,58,48,52,92.31,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','125','The Emsphere','2025-09-09','101405020'),(285,59,61,66,92.42,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','105','NARA Embassy','2025-09-09','100806024'),(287,61,0,0,0.00,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','105','NARA Embassy','2025-09-09','100806024'),(288,62,64,66,96.97,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-09-09','102301138'),(289,63,56,58,96.55,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','124','Sook siam','2025-09-10','102301138'),(290,64,62,66,93.94,'101807511','วรรณภา  จริยะมา','Wannapa  Jariyama','116','NARA One Nimman','2025-09-10','101808522'),(291,65,52,66,78.79,'102301227','ยุพาภรณ์  เกตุบุญ','Yuphaporn  KatBun','111','NARA T21 Pattaya','2025-09-10','100208002'),(292,66,52,66,78.79,'102301227','ยุพาภรณ์  เกตุบุญ','Yuphaporn  KatBun','111','NARA T21 Pattaya','2025-09-10','100208002'),(293,67,52,66,78.79,'102301227','ยุพาภรณ์  เกตุบุญ','Yuphaporn  KatBun','111','NARA T21 Pattaya','2025-09-10','100208002'),(294,68,63,66,95.45,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-10','102301138'),(295,69,60,66,90.91,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-11','100806024'),(296,70,62,66,93.94,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','107','NARA Siam Paragon','2025-09-11','101405020'),(297,71,50,51,98.04,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','119','Angmorr-Thonglor','2025-09-11','102301138'),(298,72,63,66,95.45,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-09-12','102301138'),(299,73,54,59,91.53,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-09-12','100806024'),(300,74,56,66,84.85,'101807511','วรรณภา  จริยะมา','Wannapa  Jariyama','116','NARA One Nimman','2025-09-12','101808522'),(301,75,52,57,91.23,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','203','Co Ltd Central wOrld','2025-09-13','202501013'),(302,76,58,66,87.88,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-09-13','100806024'),(303,77,52,57,91.23,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','203','Co Ltd Central wOrld','2025-09-13','202501013'),(304,78,53,58,91.38,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-09-14','202501013'),(305,79,56,66,84.85,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','103','NARA Central World','2025-09-14','101405020'),(307,81,62,66,93.94,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-09-15','102301138'),(308,82,51,57,89.47,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-09-15','100806024'),(309,83,62,66,93.94,'102301227','ยุพาภรณ์  เกตุบุญ','Yuphaporn  KatBun','111','NARA T21 Pattaya','2025-09-16','100208002'),(310,84,60,66,90.91,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-16','100806024'),(311,85,60,66,90.91,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-17','102301138'),(312,86,57,59,96.61,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-17','102301138'),(313,87,52,54,96.30,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','125','The Emsphere','2025-09-18','101405020'),(314,88,60,66,90.91,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-19','100806024'),(315,89,54,58,93.10,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-09-20','100806024'),(316,90,61,66,92.42,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','107','NARA Siam Paragon','2025-09-21','101405020'),(317,91,61,66,92.42,'101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','107','NARA Siam Paragon','2025-09-21','101405020'),(318,92,52,57,91.23,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','123','Baan Nok-Langsuan','2025-09-21','100806024'),(319,93,60,65,92.31,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','105','NARA Embassy','2025-09-22','100806024'),(320,94,49,53,92.45,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','119','Angmorr-Thonglor','2025-09-23','102301138'),(321,95,53,58,91.38,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-09-14','202501013'),(322,96,60,66,90.91,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-23','100806024'),(323,97,62,66,93.94,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','126','NARA T21 Asoke','2025-09-23','102301138'),(324,98,46,60,76.67,'202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','201','	Co Ltd Velaa','2025-09-23','202501013'),(325,99,60,66,90.91,'101807511','วรรณภา  จริยะมา','Wannapa  Jariyama','116','NARA One Nimman','2025-09-24','101808522'),(326,100,55,56,98.21,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-24','102301138'),(327,101,61,66,92.42,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','112','Icon Siam','2025-09-24','102301138'),(328,102,61,66,92.42,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-27','100806024'),(329,103,57,59,96.61,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','124','Sook siam','2025-09-27','102301138'),(330,104,61,66,92.42,'100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','101','Nara Erawan','2025-09-28','100806024'),(331,105,46,47,97.87,'102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','119','Angmorr-Thonglor','2025-09-28','102301138');
/*!40000 ALTER TABLE `tbl_sum_dca1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_qsc1`
--

DROP TABLE IF EXISTS `tbl_sum_qsc1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_qsc1` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_qsc1_id` int NOT NULL,
  `f_qsc1_sum` int NOT NULL,
  `f_qsc1_total` int DEFAULT NULL,
  `f_qsc1_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_qsc1`
--

LOCK TABLES `tbl_sum_qsc1` WRITE;
/*!40000 ALTER TABLE `tbl_sum_qsc1` DISABLE KEYS */;
INSERT INTO `tbl_sum_qsc1` VALUES (7,7,39,41,95.12,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-08-20','100101028'),(8,8,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-08-21','101808522'),(9,9,38,42,90.48,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','116','NARA One Nimman','2025-08-21','101808522'),(10,10,36,42,85.71,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-08-21','101808522'),(12,12,38,42,90.48,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','116','NARA One Nimman','2025-08-21','101808522'),(13,13,38,42,90.48,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','116','NARA One Nimman','2025-08-21','101808522'),(14,14,38,42,90.48,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','116','NARA One Nimman','2025-08-21','101808522'),(15,15,38,42,90.48,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','116','NARA One Nimman','2025-08-21','101808522'),(16,16,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','107','NARA Siam Paragon','2025-08-21','100808028'),(17,17,36,36,100.00,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','119','Angmorr-Thonglor','2025-08-21','202101002'),(18,18,37,38,97.37,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-08-22','100101028'),(19,19,36,40,90.00,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-08-22','100101028'),(20,20,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','106','NARA EmQuartier','2025-08-22','100808028'),(21,21,36,40,90.00,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-08-22','100208002'),(22,22,37,40,92.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','101','Nara Erawan','2025-08-23','100808028'),(23,23,36,39,92.31,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-08-23','100208002'),(24,24,17,22,77.27,'100808028','นิคม ตาลหอม','Nikom Tanhom','125','The Emsphere','2025-08-23','100808028'),(25,25,34,38,89.47,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','204','Co Ltd Emsphere','2025-08-24','100101028'),(26,26,35,36,97.22,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-08-24','101808522'),(27,27,36,36,100.00,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','119','Angmorr-Thonglor','2025-08-24','202101002'),(28,28,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-08-24','100808028'),(29,29,34,38,89.47,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-08-25','100101028'),(30,30,36,40,90.00,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','126','NARA T21 Asoke','2025-08-25','100208002'),(31,31,35,40,87.50,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','112','Icon Siam','2025-08-27','100208002'),(32,32,33,37,89.19,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-08-28','100101028'),(33,33,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-08-28','101808522'),(34,34,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-08-28','100808028'),(35,35,37,40,92.50,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','126','NARA T21 Asoke','2025-08-29','100208002'),(36,36,36,38,94.74,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-08-29','100101028'),(37,37,36,38,94.74,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-08-30','100101028'),(38,38,36,41,87.80,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','112','Icon Siam','2025-08-30','100208002'),(39,39,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-08-31','101808522'),(40,40,38,42,90.48,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-08-31','101808522'),(41,41,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-08-31','100808028'),(42,42,35,41,85.37,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-08-31','100208002'),(43,43,34,37,91.89,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-09-01','100101028'),(44,44,37,40,92.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','106','NARA EmQuartier','2025-09-01','100808028'),(45,45,19,20,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','125','The Emsphere','2025-09-01','100808028'),(46,46,35,41,85.37,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-02','100208002'),(47,47,35,37,94.59,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','204','Co Ltd Emsphere','2025-09-03','100101028'),(48,48,37,41,90.24,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','105','NARA Embassy','2025-09-04','100208002'),(49,49,36,41,87.80,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','126','NARA T21 Asoke','2025-09-05','100208002'),(50,50,35,37,94.59,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-09-05','100101028'),(51,51,34,39,87.18,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','112','Icon Siam','2025-09-06','100208002'),(52,52,38,42,90.48,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-07','101808522'),(53,53,36,38,94.74,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','204','Co Ltd Emsphere','2025-09-07','100101028'),(54,54,35,40,87.50,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-07','100208002'),(55,55,35,40,87.50,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-07','100208002'),(56,56,35,37,94.59,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-09-08','100101028'),(57,57,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-09','100808028'),(58,58,35,37,94.59,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-09-09','100101028'),(59,59,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','101','Nara Erawan','2025-09-09','100808028'),(60,60,23,24,95.83,'100808028','นิคม ตาลหอม','Nikom Tanhom','125','The Emsphere','2025-09-10','100808028'),(61,61,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','106','NARA EmQuartier','2025-09-10','100808028'),(62,62,35,41,85.37,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-11','100208002'),(63,63,35,36,97.22,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-09-12','100101028'),(64,64,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-12','100808028'),(65,65,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-12','101808522'),(66,66,36,40,90.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','107','NARA Siam Paragon','2025-09-12','100808028'),(67,67,35,36,97.22,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','119','Angmorr-Thonglor','2025-09-13','202101002'),(68,68,34,40,85.00,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','112','Icon Siam','2025-09-13','100208002'),(69,69,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-13','100808028'),(70,70,34,37,91.89,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-14','101808522'),(71,71,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-14','100808028'),(72,72,38,42,90.48,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-14','101808522'),(73,73,35,40,87.50,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','126','NARA T21 Asoke','2025-09-15','100208002'),(74,74,35,36,97.22,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-09-15','100101028'),(75,75,35,37,94.59,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-15','101808522'),(76,76,35,37,94.59,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','203','Co Ltd Central wOrld','2025-09-17','100101028'),(77,77,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-18','101808522'),(78,78,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-18','100808028'),(79,79,36,37,97.30,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-09-18','100101028'),(80,80,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','101','Nara Erawan','2025-09-19','100808028'),(81,81,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-19','100808028'),(82,82,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-20','101808522'),(83,83,34,41,82.93,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-20','100208002'),(84,84,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','106','NARA EmQuartier','2025-09-21','100808028'),(85,85,35,37,94.59,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-21','101808522'),(86,86,40,42,95.24,'111910006','สุประภา  ศรีศิริ','Suprapa  Srisiri','116','NARA One Nimman','2025-09-21','101808522'),(87,87,37,41,90.24,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-21','100208002'),(88,88,22,23,95.65,'100808028','นิคม ตาลหอม','Nikom Tanhom','125','The Emsphere','2025-09-21','100808028'),(89,89,35,40,87.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','107','NARA Siam Paragon','2025-09-22','100808028'),(90,90,36,41,87.80,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','111','NARA T21 Pattaya','2025-09-22','100208002'),(91,91,34,36,94.44,'100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','201','	Co Ltd Velaa','2025-09-22','100101028'),(92,92,35,37,94.59,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-22','101808522'),(93,93,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-24','100808028'),(94,94,35,41,85.37,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','126','NARA T21 Asoke','2025-09-25','100208002'),(95,95,21,22,95.45,'100808028','นิคม ตาลหอม','Nikom Tanhom','125','The Emsphere','2025-09-25','100808028'),(96,96,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','101','Nara Erawan','2025-09-25','100808028'),(97,97,36,37,97.30,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','123','Baan Nok-Langsuan','2025-09-26','101808522'),(98,98,38,40,95.00,'100808028','นิคม ตาลหอม','Nikom Tanhom','106','NARA EmQuartier','2025-09-26','100808028'),(99,99,37,40,92.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','107','NARA Siam Paragon','2025-09-27','100808028'),(100,100,39,40,97.50,'100808028','นิคม ตาลหอม','Nikom Tanhom','103','NARA Central World','2025-09-27','100808028'),(101,101,36,36,100.00,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','119','Angmorr-Thonglor','2025-09-27','202101002'),(102,102,37,40,92.50,'100208002','วสันต์ นฤหายะ','Wasan Naritaya','105','NARA Embassy','2025-09-28','100208002');
/*!40000 ALTER TABLE `tbl_sum_qsc1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_qscakg1`
--

DROP TABLE IF EXISTS `tbl_sum_qscakg1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_qscakg1` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_qscakg1_id` int NOT NULL,
  `f_qscakg1_sum` int NOT NULL,
  `f_qscakg1_total` int DEFAULT NULL,
  `f_qscakg1_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_qscakg1`
--

LOCK TABLES `tbl_sum_qscakg1` WRITE;
/*!40000 ALTER TABLE `tbl_sum_qscakg1` DISABLE KEYS */;
INSERT INTO `tbl_sum_qscakg1` VALUES (1,1,32,35,91.43,'887766993','Staff AKG','Staff AKG','255','AKG Central Dusit','2025-09-11','887766993'),(2,2,33,35,94.29,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','252','AKG Thapra','2025-09-11','202101002'),(3,3,32,35,91.43,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','254','AKG Ngamwongwan','2025-09-14','202101002'),(4,4,32,35,91.43,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','256','AKG Siam Paragon','2025-09-16','202101002'),(5,5,35,35,100.00,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','251','AKG Hugthai','2025-09-16','202101002'),(6,6,33,34,97.06,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','251','AKG Hugthai','2025-09-25','202101002'),(7,7,30,34,88.24,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','256','AKG Siam Paragon','2025-09-25','202101002'),(8,8,31,34,91.18,'202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','257','AKG Central Pinkao','2025-09-26','202101002');
/*!40000 ALTER TABLE `tbl_sum_qscakg1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_qsce1`
--

DROP TABLE IF EXISTS `tbl_sum_qsce1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_qsce1` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_qsce1_id` int NOT NULL,
  `f_qsce1_sum` int NOT NULL,
  `f_qsce1_total` int DEFAULT NULL,
  `f_qsce1_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_qsce1`
--

LOCK TABLES `tbl_sum_qsce1` WRITE;
/*!40000 ALTER TABLE `tbl_sum_qsce1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sum_qsce1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_qsce2`
--

DROP TABLE IF EXISTS `tbl_sum_qsce2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_qsce2` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_qsce2_id` int NOT NULL,
  `f_qsce2_sum` int NOT NULL,
  `f_qsce2_total` int DEFAULT NULL,
  `f_qsce2_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_qsce2`
--

LOCK TABLES `tbl_sum_qsce2` WRITE;
/*!40000 ALTER TABLE `tbl_sum_qsce2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sum_qsce2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sum_qscmbe1`
--

DROP TABLE IF EXISTS `tbl_sum_qscmbe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sum_qscmbe1` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_qscmbe1_id` int NOT NULL,
  `f_qscmbe1_sum` int NOT NULL,
  `f_qscmbe1_total` int DEFAULT NULL,
  `f_qscmbe1_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_branch_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date NOT NULL,
  `f_area_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sum_qscmbe1`
--

LOCK TABLES `tbl_sum_qscmbe1` WRITE;
/*!40000 ALTER TABLE `tbl_sum_qscmbe1` DISABLE KEYS */;
INSERT INTO `tbl_sum_qscmbe1` VALUES (1,1,33,34,97.06,'101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','401','MBE Central Dusit','2025-09-25','101808522');
/*!40000 ALTER TABLE `tbl_sum_qscmbe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_btc_checklist`
--

DROP TABLE IF EXISTS `tbl_training_btc_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_btc_checklist` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_function_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_cert_approve` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  `f_btc_code_1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_1` int NOT NULL,
  `f_btc_code_2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_2` int NOT NULL,
  `f_btc_code_3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_3` int NOT NULL,
  `f_btc_code_4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_4` int NOT NULL,
  `f_btc_code_5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_5` int NOT NULL,
  `f_btc_code_6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_6` int NOT NULL,
  `f_btc_code_7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_7` int NOT NULL,
  `f_btc_code_8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_8` int NOT NULL,
  `f_btc_code_9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_9` int NOT NULL,
  `f_btc_code_10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_10` int NOT NULL,
  `f_comment_10` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_btc_code_11` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_11` int NOT NULL,
  `f_btc_code_12` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_12` int NOT NULL,
  `f_btc_code_13` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_13` int NOT NULL,
  `f_btc_code_14` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_14` int NOT NULL,
  `f_btc_code_15` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_15` int NOT NULL,
  `f_btc_code_16` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_16` int NOT NULL,
  `f_comment_16` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_btc_code_17` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_17` int NOT NULL,
  `f_btc_code_18` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_18` int NOT NULL,
  `f_btc_code_19` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_19` int NOT NULL,
  `f_btc_code_20` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_20` int NOT NULL,
  `f_btc_code_21` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_21` int NOT NULL,
  `f_btc_code_22` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_22` int NOT NULL,
  `f_btc_code_23` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_23` int NOT NULL,
  `f_btc_code_24` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_24` int NOT NULL,
  `f_btc_code_25` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_25` int NOT NULL,
  `f_btc_code_26` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_26` int NOT NULL,
  `f_btc_code_27` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_27` int NOT NULL,
  `f_btc_code_28` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_28` int NOT NULL,
  `f_btc_code_29` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_score_29` int NOT NULL,
  `f_comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`),
  UNIQUE KEY `f_id_2` (`f_id`),
  UNIQUE KEY `f_id_3` (`f_id`),
  UNIQUE KEY `f_id_4` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_btc_checklist`
--

LOCK TABLES `tbl_training_btc_checklist` WRITE;
/*!40000 ALTER TABLE `tbl_training_btc_checklist` DISABLE KEYS */;
INSERT INTO `tbl_training_btc_checklist` VALUES (1,'102301065',NULL,'101','Dessert and Bar Checklist','2025-09-23','BTC01',1,'BTC02',0,'BTC03',0,'BTC04',0,'BTC05',0,'BTC06',0,'BTC07',0,'BTC08',0,'BTC09',0,'BTC10',0,NULL,'BTC11',0,'BTC12',0,'BTC13',0,'BTC14',0,'BTC15',0,'BTC16',0,NULL,'BTC17',0,'BTC18',0,'BTC19',0,'BTC20',0,'BTC21',0,'BTC22',0,'BTC23',0,'BTC24',0,'BTC25',0,'BTC26',0,'BTC27',0,'BTC28',0,'BTC29',0,'GOOD COMMENT|',NULL),(2,'102301188',NULL,'101','Dessert and Bar Checklist','2025-09-17','BTC01',1,'BTC02',1,'BTC03',1,'BTC04',1,'BTC05',1,'BTC06',1,'BTC07',1,'BTC08',1,'BTC09',1,'BTC10',1,NULL,'BTC11',0,'BTC12',0,'BTC13',0,'BTC14',0,'BTC15',0,'BTC16',0,NULL,'BTC17',0,'BTC18',0,'BTC19',0,'BTC20',0,'BTC21',0,'BTC22',0,'BTC23',0,'BTC24',0,'BTC25',0,'BTC26',0,'BTC27',0,'BTC28',0,'BTC29',0,'ดีมาก|ต้องปรับปรุง||',NULL),(3,'102501153',NULL,'112','Dessert and Bar Checklist','2025-08-30','BTC01',1,'BTC02',1,'BTC03',1,'BTC04',1,'BTC05',1,'BTC06',1,'BTC07',1,'BTC08',1,'BTC09',1,'BTC10',1,NULL,'BTC11',1,'BTC12',1,'BTC13',1,'BTC14',1,'BTC15',1,'BTC16',1,NULL,'BTC17',1,'BTC18',1,'BTC19',1,'BTC20',1,'BTC21',1,'BTC22',1,'BTC23',1,'BTC24',1,'BTC25',1,'BTC26',1,'BTC27',1,'BTC28',1,'BTC29',1,'|',NULL);
/*!40000 ALTER TABLE `tbl_training_btc_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_cert`
--

DROP TABLE IF EXISTS `tbl_training_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_cert` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_cert_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_cert_detail_th` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_cert_detail_en` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_cert`
--

LOCK TABLES `tbl_training_cert` WRITE;
/*!40000 ALTER TABLE `tbl_training_cert` DISABLE KEYS */;
INSERT INTO `tbl_training_cert` VALUES (1,'CERTO01',' Professional Beverage & Bar Operations Training',' Professional Beverage & Bar Operations Training',1),(4,'CERTO02',' Professional Kitchen &  Operations Training',' Professional Kitchen &  Operations Training',1),(5,'CERTO03',' Professional Dessert & Operations Training',' Professional Dessert & Operations Training',1),(6,'CERTO04',' Professional Service & Operations Training',' Professional Service & Operations Training',1),(8,'CERTO05',' Professional IT & Knowlege Training',' Professional IT & Knowlege Training',1);
/*!40000 ALTER TABLE `tbl_training_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_cert_approve`
--

DROP TABLE IF EXISTS `tbl_training_cert_approve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_cert_approve` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_cert_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_course_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_cert_approve` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_training_date` datetime DEFAULT NULL,
  `f_branch_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_cert_approve`
--

LOCK TABLES `tbl_training_cert_approve` WRITE;
/*!40000 ALTER TABLE `tbl_training_cert_approve` DISABLE KEYS */;
INSERT INTO `tbl_training_cert_approve` VALUES (1,'CERTO01','PBBO01','ชัยวัฒน์ เปลี่ยนศิลาทอง','102401253','2025-08-01 00:00:00','105',1),(2,'CERTO01','PBBO02','ชัยวัฒน์ เปลี่ยนศิลาทอง','102401253','2025-08-01 00:00:00','105',1),(3,'CERTO01','PBBO03','ชัยวัฒน์ เปลี่ยนศิลาทอง','102401253','2025-08-01 00:00:00','105',1),(4,'CERTO01','PBBO04','ชัยวัฒน์ เปลี่ยนศิลาทอง','102401253','2025-08-01 00:00:00','105',1),(5,'CERTO01','PBBO05','ชัยวัฒน์ เปลี่ยนศิลาทอง','102401253','2025-08-01 00:00:00','105',1),(6,'CERTO01','PBBO06','ชัยวัฒน์ เปลี่ยนศิลาทอง','102401253','2025-08-01 00:00:00','105',1);
/*!40000 ALTER TABLE `tbl_training_cert_approve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_course`
--

DROP TABLE IF EXISTS `tbl_training_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_course` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_cert_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_course_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_course_detail_th` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_course_detail_en` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_date_create` datetime DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `tbl_trainning_cert_unique` (`f_course_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_course`
--

LOCK TABLES `tbl_training_course` WRITE;
/*!40000 ALTER TABLE `tbl_training_course` DISABLE KEYS */;
INSERT INTO `tbl_training_course` VALUES (1,'CERTO01','PBBO01','Module 1: Orientation & Bar Fundamentals(Day1)','Module 1: Orientation & Bar Fundamentals(Day1)','2025-08-01 00:00:00',1),(2,'CERTO01','PBBO02','Module 2: Beverage Preparation & Recipe Training(Day2)','Module 2: Beverage Preparation & Recipe Training(Day2)','2025-08-01 00:00:00',1),(3,'CERTO01','PBBO03','Module 3: Bar Operation (Day3)','Module 3: Bar Operation (Day3)','2025-08-01 00:00:00',1),(4,'CERTO01','PBBO04','Module 4: Bar Opening & Inventory Management (Day4)','Module 4: Bar Opening & Inventory Management (Day4)','2025-08-01 00:00:00',1),(5,'CERTO01','PBBO05','Module 5: Hands-on Bar Operation (Day5)','Module 5: Hands-on Bar Operation (Day5)','2025-08-01 00:00:00',1),(6,'CERTO01','PBBO06','Module 6: Program Wrap-up (Final)','Module 6: Program Wrap-up (Final)','2025-08-01 00:00:00',1),(8,'CERTO05','ITBO01','Module 1: Know Intranet (First Day)','Module 1: รู็จัก Intranet (First Day)','2025-08-01 00:00:00',1),(9,'CERTO05','ITBO02','Module 2: Know POS (Second Day)','Module 2: รู็จัก POS (Second Day)','2025-08-01 00:00:00',1),(10,'CERTO05','ITBO03','Module 3: Know Trobleshooting (Final)','Module 3: แก้ปัญหาได้ (Final)','2025-08-01 00:00:00',1);
/*!40000 ALTER TABLE `tbl_training_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_detail`
--

DROP TABLE IF EXISTS `tbl_training_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_detail` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_cert_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_eva_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_eva_prefix` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_name_th` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_name_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_detail`
--

LOCK TABLES `tbl_training_detail` WRITE;
/*!40000 ALTER TABLE `tbl_training_detail` DISABLE KEYS */;
INSERT INTO `tbl_training_detail` VALUES (1,'CERTO01','BARTC01','btc','อธิบายถึง ชื่อเรียก วิธีใช้พื้นฐานของอุปกรณ์บาร์เบื้องต้นได้','อธิบายถึง ชื่อเรียก วิธีใช้พื้นฐานของอุปกรณ์บาร์เบื้องต้นได้',1),(2,'CERTO01','BARTC02','btc','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด Blended Juices, Fresh Juices ได้','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด Blended Juices, Fresh Juices ได้',1),(3,'CERTO01','BARTC03','btc','สุ่มทำเมนูหมวด Blened Juices 1 เมนู','สุ่มทำเมนูหมวด Blened Juices 1 เมนู',1),(4,'CERTO01','BARTC04','btc','สุ่มทำเมนูหมวด Blened Juices 1 เมนู','สุ่มทำเมนูหมวด Blened Juices 1 เมนู',1),(5,'CERTO01','BARTC05','btc','สุ่มทำเมนูหมวด Fresh Juices  1 เมนู','สุ่มทำเมนูหมวด Fresh Juices  1 เมนู',1),(6,'CERTO01','BARTC06','btc','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด Cocktails ได้','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด Cocktails ได้',1),(7,'CERTO01','BARTC07','btc','อธิบายถึง ส่วนผสมของ Cocktail  ได้ถูกต้อง เช่น เมนูนี้ใช้ เหล้า ผลไม้ น้ำเชื่อม ชนิดใดและทำวิธีใด','อธิบายถึง ส่วนผสมของ Cocktail  ได้ถูกต้อง เช่น เมนูนี้ใช้ เหล้า ผลไม้ น้ำเชื่อม ชนิดใดและทำวิธีใด',1),(8,'CERTO01','BARTC08','btc','สุ่มทำเมนูหมวด Cocktails 1 เมนู','สุ่มทำเมนูหมวด Cocktails 1 เมนู',1),(9,'CERTO01','BARTC09','btc','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด Mocktails ได้','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด Mocktails ได้',1),(10,'CERTO01','BARTC10','btc','อธิบายถึง ส่วนผสมของ Mocktail ได้ถูกต้อง เช่น เมนูนี้ใช้ ผลไม้ น้ำเชื่อม ชนิดใด และทำวิธีใด','อธิบายถึง ส่วนผสมของ Mocktail ได้ถูกต้อง เช่น เมนูนี้ใช้ ผลไม้ น้ำเชื่อม ชนิดใด และทำวิธีใด',1),(11,'CERTO01','BARTC11','btc','สุ่มทำเมนูหมวด Mocktails 1 เมนู','สุ่มทำเมนูหมวด Mocktails 1 เมนู',1),(12,'CERTO01','BARTC12','btc','สุ่มทำเมนูหมวด Mocktails 1 เมนู','สุ่มทำเมนูหมวด Mocktails 1 เมนู',1),(13,'CERTO01','BARTC13','btc','อธิบายเมนูหมวด ชาร้อน กาแฟร้อน ได้ครบถ้วนถูกต้อง','อธิบายเมนูหมวด ชาร้อน กาแฟร้อน ได้ครบถ้วนถูกต้อง',1),(14,'CERTO01','BARTC14','btc','สุ่มทำเมนูหมวด น้ำสมุนไพร ชาเย็น 1 เมนู','สุ่มทำเมนูหมวด น้ำสมุนไพร ชาเย็น 1 เมนู',1),(15,'CERTO01','BARTC15','btc','สุ่มทำเมนูหมวด น้ำสมุนไพร ชาเย็น 1 เมนู','สุ่มทำเมนูหมวด น้ำสมุนไพร ชาเย็น 1 เมนู',1),(16,'CERTO01','BARTC16','btc','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวดขนมหวานได้','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวดขนมหวานได้',1),(17,'CERTO01','BARTC17','btc','สุ่มทำเมนูหมวด ขนมหวาน 1 เมนู','สุ่มทำเมนูหมวด ขนมหวาน 1 เมนู',1),(18,'CERTO01','BARTC18','btc','สุ่มทำเมนูหมวด ขนมหวาน 1 เมนู','สุ่มทำเมนูหมวด ขนมหวาน 1 เมนู',1),(19,'CERTO01','BARTC19','btc','เปิดบาร์รอบเช้าได้ถูกต้อง ครบถ้วนและเสร็จทันเปิดร้าน','เปิดบาร์รอบเช้าได้ถูกต้อง ครบถ้วนและเสร็จทันเปิดร้าน',1),(20,'CERTO01','BARTC20','btc','ถอด และ ประกอบเครื่องสลัชชี่ได้อย่างถูกต้อง','ถอด และ ประกอบเครื่องสลัชชี่ได้อย่างถูกต้อง',1),(21,'CERTO01','BARTC21','btc','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด สลัชชี่ ได้','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด สลัชชี่ ได้',1),(22,'CERTO01','BARTC22','btc','สุ่มทำเมนูหมวด สลัชชี่ 1 เมนู','สุ่มทำเมนูหมวด สลัชชี่ 1 เมนู',1),(23,'CERTO01','BARTC23','btc','ผสมแป้งขนมครกได้ถูกต้องตาม Recipe','ผสมแป้งขนมครกได้ถูกต้องตาม Recipe',1),(24,'CERTO01','BARTC24','btc','สามารถทำขนมครกได้ถูกต้อง สวยงาม ตามมาตรฐาน','สามารถทำขนมครกได้ถูกต้อง สวยงาม ตามมาตรฐาน',1),(25,'CERTO01','BARTC25','btc','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด ขนมครก ได้','สามารถจดจำ ชื่อ หน้าตา ของเมนูต่างๆในหมวด ขนมครก ได้',1),(26,'CERTO01','BARTC26','btc','สุ่มทำเมนูหมวด ขนมครก 1 เมนู','สุ่มทำเมนูหมวด ขนมครก 1 เมนู',1),(27,'CERTO01','BARTC27','btc','มีความเข้าใจเกี่ยวกับระบบการสั่งของของทางร้าน','มีความเข้าใจเกี่ยวกับระบบการสั่งของของทางร้าน',1),(28,'CERTO01','BARTC28','btc','มีความเข้าใจเกี่ยวกับการตัดพาร์ประจำวัน','มีความเข้าใจเกี่ยวกับการตัดพาร์ประจำวัน',1),(29,'CERTO01','BARTC29','btc','ปิดร้านไดอย่างถูกต้อง สะอาด เป็นไปตามมาตฐาน','ปิดร้านไดอย่างถูกต้อง สะอาด เป็นไปตามมาตฐาน',1);
/*!40000 ALTER TABLE `tbl_training_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_function`
--

DROP TABLE IF EXISTS `tbl_training_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_function` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_function_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `f_function_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `tbl_training1_function` (`f_function_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_function`
--

LOCK TABLES `tbl_training_function` WRITE;
/*!40000 ALTER TABLE `tbl_training_function` DISABLE KEYS */;
INSERT INTO `tbl_training_function` VALUES (1,'DEPT01','Operation',1),(2,'DEPT02','Kitchen',1),(3,'DEPT03','Bar',1),(4,'DEPT04','Dessert',1);
/*!40000 ALTER TABLE `tbl_training_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_result`
--

DROP TABLE IF EXISTS `tbl_training_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_result` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_course_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_function_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_trainer_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_cert_approve` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_training_result` int DEFAULT NULL,
  `f_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_datetime` date DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_result`
--

LOCK TABLES `tbl_training_result` WRITE;
/*!40000 ALTER TABLE `tbl_training_result` DISABLE KEYS */;
INSERT INTO `tbl_training_result` VALUES (13,'102501153','PBBO01','TN01','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-25'),(14,'102501153','PBBO01','TN02','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-25'),(15,'102501153','PBBO01','TN03','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-25'),(16,'102501153','PBBO01','TN04','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-25'),(17,'102501153','PBBO02','TN05','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-26'),(18,'102501153','PBBO02','TN06','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-26'),(19,'102501153','PBBO02','TN07','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-26'),(20,'102501153','PBBO02','TN08','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-26'),(21,'102501153','PBBO02','TN09','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-26'),(22,'102501153','PBBO03','TN10','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-27'),(23,'102501153','PBBO03','TN11','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-27'),(24,'102501153','PBBO03','TN12','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-27'),(25,'102501153','PBBO04','TN13','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-28'),(26,'102501153','PBBO04','TN14','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-28'),(27,'102501153','PBBO05','TN15','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-29'),(28,'102501153','PBBO05','TN16','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-29'),(29,'102501153','PBBO05','TN17','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-29'),(30,'102501153','PBBO05','TN18','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-29'),(31,'102501153','PBBO06','TN19','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-30'),(32,'102501153','PBBO06','TN20','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-30'),(33,'102501153','PBBO06','TN21','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-30'),(34,'102501153','PBBO06','TN22','DEPT03','ชัยวัฒน์','ชัยวัฒน์',NULL,NULL,NULL,'2025-08-30');
/*!40000 ALTER TABLE `tbl_training_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_staff`
--

DROP TABLE IF EXISTS `tbl_training_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_staff` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_name_th` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_name_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_nickname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_position` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_branch_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_function_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_staff`
--

LOCK TABLES `tbl_training_staff` WRITE;
/*!40000 ALTER TABLE `tbl_training_staff` DISABLE KEYS */;
INSERT INTO `tbl_training_staff` VALUES (1,'102201176','นายจิรยุทธ แก้วสาขา','Mr.Jirayut Kaewsakha','โฟลค','Bar Staff','angmorr - Bar',119,'DEPT03',1),(2,'101703191','น.ส.กันทิมา  ธนะบริหาร','Miss Kantima Thanaborrihan','ป๊อบ','Captain Cashier','angmorr - Service',119,'DEPT01',1),(3,'102201125','น.ส.กัญญารัตน์ จิตรวิบูลย์','Ms.Kanyarat Jitviboon','เบนซ์','Cashier ','angmorr - Service',119,'DEPT01',1),(4,'102301009','นาย อัง ซอ มิ้ว','Mr.Aung Zaw Myo','มิ้ว','Public Area Cleaner','angmorr - Service',119,'DEPT01',1),(5,'102301047','น.ส.คิน ตาน นวย','Ms.Khin Than Nwe','น้อย','Public Area Cleaner','angmorr - Service',119,'DEPT01',1),(6,'102201015','นายวัชรพล แดงด้วง','Mr. Watcharaphon Daengduang','นัท','Restaurant Manager','angmorr - Service',119,'DEPT01',1),(7,'102201137','น.ส.ภัทรวดี กาญจนะถาวร','Ms.Phattarawadee Kanchanathawon','ปาลิน','Service Attendant','angmorr - Service',119,'DEPT01',1),(8,'102301076','น.ส.อารีย์รัตน์ รอบรู้','Ms.Arrerat Robru','โบว์','Service Attendant','angmorr - Service',119,'DEPT01',1),(9,'102301129','น.ส.เกศรินทร์ สีลาทอง','Ms.Kessarin Silathong','แจ๋ว','Bar Staff','Central World - Bar',103,'DEPT03',1),(10,'102401240','นายชัยณรงค์ อินทร์เพชร์','Mr.Chainarong Inphet','จอม','Bar Staff','Central World - Bar',103,'DEPT03',1),(11,'102501115','นายนิรันดร์ รักชาติยิ่ง','Mr.Niran Rakchatying','รัน','Bar Staff','Central World - Bar',103,'DEPT03',1),(12,'101303064','นายอนันตศักดิ์  ทามะฤทธิ์','Mr. Anantasak  Thamarith','จ่อย','Bar Supervisor ','Central World - Bar',103,'DEPT03',1),(13,'102301050','นายจอ ซิน เวย','Mr.Kyaw Zin Wai','จอ','Steward','Central World - Bar',103,'DEPT03',1),(14,'101506064','น.ส.นุชจรี  นาคทอง','Miss Nucharee  Nakthong','ทราย','Assistant Restaurant Manager','Central World - Service',103,'DEPT01',1),(15,'102301266','นายไซ พวง','Mr.Sai Paung','เปา','Busser','Central World - Service',103,'DEPT01',1),(16,'102301322','นายอ่อง ซิน อู','Mr.Aung Zin OO','เอก','Busser','Central World - Service',103,'DEPT01',1),(17,'102401016','นายซิ่น จ่อ','Mr.Khin Kyaw','โจ','Busser','Central World - Service',103,'DEPT01',1),(18,'102401085','นายชาน ลาเว','Mr.Chan Lawe','วี','Busser','Central World - Service',103,'DEPT01',1),(19,'102401161','นายโม มิน เมี๊ยะ','Mr.Myo Min Myat','','Busser','Central World - Service',103,'DEPT01',1),(20,'102401212','นายซอ ซา เพียน','Mr.Saw Sar Pyan','','Busser','Central World - Service',103,'DEPT01',1),(21,'102401213','นายซอ เอ็ด ซุซ ติ','Mr.Saw Eh Sud Thit','','Busser','Central World - Service',103,'DEPT01',1),(22,'102301074','น.ส.กัลย์ศรัณย์ แซ่อึ้ง','Ms.Kansaran Saeung','อุ๊','Cashier','Central World - Service',103,'DEPT01',1),(23,'102301287','น.ส.วินิดา สายคำ ','Ms.Winida Saikham','คูณ','Cashier','Central World - Service',103,'DEPT01',1),(24,'101908944','น.ส.สุภัทตรา  สังข์ชลาธาร','Miss Supattra  Sangchalathan','หญิง','Restaurant Captain','Central World - Service',103,'DEPT01',1),(25,'102201140','นายธนพล มีเปี่ยม','Mr.Tanapol Meepaim','เบนซ์','Restaurant Captain','Central World - Service',103,'DEPT01',1),(26,'101211056','น.ส.สมสุข  วงเวียน','Miss Somsuk  Wongwian','โขง','Restaurant Manager','Central World - Service',103,'DEPT01',1),(27,'101411032','น.ส.หนึ่งฤทัย  บุญชาญ','Miss Nungruthai  Boonchan','ฝ้าย','Restaurant Supervisor','Central World - Service',103,'DEPT01',1),(28,'101506065','น.ส.วันวิสา  พุ่มเจริญวัฒนา','Miss Wanwisa  Phumcharoenwatta','จิ๊บ','Restaurant Supervisor','Central World - Service',103,'DEPT01',1),(29,'102201128','น.ส.วิไลวรรณ สุนันตะ','Ms.Wilaiwan Sunanta','โอนิว','Service Attendant','Central World - Service',103,'DEPT01',1),(30,'102201147','น.ส.รัฐนันท์ พูลสวัสดิ์','Ms.Rattanan Poolsawat','ยุ้ย','Service Attendant','Central World - Service',103,'DEPT01',1),(31,'102201178','น.ส.วิไลลักษณ์ สุนันตะ','Ms.Wilailak Sunanta','ปอป้อม','Service Attendant','Central World - Service',103,'DEPT01',1),(32,'102301282','น.ส.พิยดา หมายสุข','Ms.Phiyada Maisuk','ขิม','Service Attendant','Central World - Service',103,'DEPT01',1),(33,'102401166','น.ส.Phoemphea Sopheann','Ms.Phoemphea Sopheann','พิมพ์','Service Attendant','Central World - Service',103,'DEPT01',1),(34,'102401211','น.ส.ดาราวลี ใจทัศน์','Ms.Darawalee Jaithat','แยม','Service Attendant','Central World - Service',103,'DEPT01',1),(35,'102401267','น.ส.จริยาพร สมจิตต์','Ms.Chariyaphon Somjit','แตงโม','Service Attendant','Central World - Service',103,'DEPT01',1),(36,'102501059','น.ส.ศศิพร นิระบุตร','Ms.Sasiporn Nirabut','นุกเกอร์','Service Attendant','Central World - Service',103,'DEPT01',1),(37,'102501109','น.ส.กิตติยา มงคลจักรวาฬ ','Ms.Kittiya Mongkhonchakkawan','อั้ม','Service Attendant','Central World - Service',103,'DEPT01',1),(38,'102501132','น.ส.นาขวัญ สายเทพ','Ms.Nakhuan Saithep','หลิงหลิง','Service Attendant','Central World - Service',103,'DEPT01',1),(39,'102501152','น.ส.สิริกร ยอดบุรุษ','Ms.Sirikon Yotburut','กิ่ง','Service Attendant','Central World - Service',103,'DEPT01',1),(40,'102401107','น.ส.กัสสมา จันทร์มา','Ms.Kassama Janma','ฟ้า','Bar Staff','Embassy - Bar',105,'DEPT03',1),(41,'102401253','น.ส.พรทิพย์ จราวิทย์','Ms.Pornthip Jarawit','หมวย','Bar Staff','Embassy - Bar',105,'DEPT03',1),(42,'102501073','นายวิรัตน์ ภูมิวิจิตร','Mr.Wirat Phumwichit','ฟลุค','Bar Staff','Embassy - Bar',105,'DEPT03',1),(43,'101709263','น.ส.ดวงพร  งามเสน่ห์','Miss Daungporn  Ngamsanae','ดวง','Captain Cashier','Embassy - Service',105,'DEPT01',1),(44,'111911036','น.ส.กัลยาพร  จำปาสุข','Miss Kanlayaporn  Champhasuk','แหวว','Captain Cashier','Embassy - Service',105,'DEPT01',1),(45,'102301195','น.ส.จีอานส ฟลอราเดล เดโทยาโท ดอลล่า','Ms.Gianes Floradele Detoyato Dolar ','ดอลล่า','Hostess','Embassy - Service',105,'DEPT01',1),(46,'102201028','น.ส.สุดารัตน์  คงเมือง','Miss Sudarat  Khongmueang','เวย์','Restaurant Captain','Embassy - Service',105,'DEPT01',1),(47,'102501098','น.ส.จุฑามาศ เอกตาแสง','Ms.Chutamat Ektaseang','หมิว','Restaurant Captain','Embassy - Service',105,'DEPT01',1),(48,'101809556','น.ส.ประพาพ์รัตน์  สังฆธรรม','Miss  Praparat  Sangkatham','ปู','Restaurant Manager','Embassy - Service',105,'DEPT01',1),(49,'101804404','น.ส.สนธยา  จันทร์รวม','Miss Sontaya  Chanruam','สน','Restaurant Supervisor','Embassy - Service',105,'DEPT01',1),(50,'101904843','นายบุญเลิศ  เกชิต','Mr. Bunloed  Kechit','AON','Service Attendant','Embassy - Service',105,'DEPT01',1),(51,'102401141','น.ส.วรกานต์ จันทมาส','Ms.Worakarn Chantamas','กานต์ ','Service Attendant','Embassy - Service',105,'DEPT01',1),(52,'102501052','น.ส.พรชิตา ห้าวสพโชค','Ms.Pornchita Haosopchok','ออย','Service Attendant','Embassy - Service',105,'DEPT01',1),(53,'102501092','น.ส.สุธิดา ภูแล','Ms.Suthida Phulae','สุ','Service Attendant','Embassy - Service',105,'DEPT01',1),(54,'102401084','นายเน ลิน แทต','Mr.Nay Lin Htat','แสง','Bar Staff','Emquartier - Bar',106,'DEPT03',1),(55,'102401187','น.ส.นิตดา เทียมภักดี','Ms.Nitda Thiampakdee','นิด   ','Bar Staff','Emquartier - Bar',106,'DEPT03',1),(56,'101503052','น.ส.พรรณทิภา  บุตรนาโก','Miss Pantipa  Butnako','วัน','Bar Supervisor ','Emquartier - Bar',106,'DEPT03',1),(57,'101612147','นายทองพูน  บัวนาค','Mr.Tongpoon Buanak','พูน','Assistant Restaurant Manager','Emquartier - Service',106,'DEPT01',1),(58,'102401067','นายคุน เน จอ','Mr.Khun Nay Kyaw','เนจอ','Busser','Emquartier - Service',106,'DEPT01',1),(59,'102401091','นายคุน เห็ด นาย อู','Mr.Khun Htet Naing Oo','','Busser','Emquartier - Service',106,'DEPT01',1),(60,'102401183','น.ส.นาว ซาน วาน เอ','Ms.Naw San San Aye','','Busser','Emquartier - Service',106,'DEPT01',1),(61,'100805021','นางพรวิภา  อ้นไชยะ','Mrs. Pornvipa  Onchaiya','หน่อย','Captain Cashier','Emquartier - Service',106,'DEPT01',1),(62,'102401097','น.ส.มณีพร ปรากฎรัฐ','Ms.Maniporn Prakodrat','แพร','Cashier','Emquartier - Service',106,'DEPT01',1),(63,'101609111','นายธนายุทธ  เขื่อนเพชร','Mr. Thanayoot Keunphet','โน้ต','Restaurant Captain','Emquartier - Service',106,'DEPT01',1),(64,'112011152','น.ส.รุ่งทิพย์  ชื่นอารมย์','Miss Rungthip  Chuenaroom','รุ่ง','Restaurant Captain','Emquartier - Service',106,'DEPT01',1),(65,'100811032','นายมงคล  ถุงแก้ว','Mr. Mongkol   Toongkaew','โย','Restaurant Manager','Emquartier - Service',106,'DEPT01',1),(66,'102301017','น.ส.วาสนา โมรัฐเถียร','Ms.Wasana Moratthiar','แจง','Restaurant Supervisor','Emquartier - Service',106,'DEPT01',1),(67,'102401038','น.ส.นิศรา คำษาวงค์','Ms.Nisara Khumsawong','นิด   ','Restaurant Supervisor','Emquartier - Service',106,'DEPT01',1),(68,'101901694','น.ส.รัชนี  ศรีรักษ์','Miss Ratchanee  Srirak','อิ๋ม','Service Attendant','Emquartier - Service',106,'DEPT01',1),(69,'102301336','น.ส.กงใจ อภัยพันธ์','Ms.Kongjai Aphaipan','ใจ','Service Attendant','Emquartier - Service',106,'DEPT01',1),(70,'102401027','น.ส.ดิ การิ ซาน','Ms.Digari San','เค','Bar Staff','Emsphere - Bar',125,'DEPT03',1),(71,'102401151','น.ส.พิรดา โสลุน','Ms.Phirada Solun','ออย','Bar Staff','Emsphere - Bar',125,'DEPT03',1),(72,'102501154','นายธีระชาติ บรรจงจิต','Mr.Teerachat Banjengjit','แน็ด','Cashier','Emsphere - Service',125,'DEPT01',1),(73,'102201145','นายกันยกร ทองป้อง','Mr.Kanyakorn Thongpong','ออมสิน','Restaurant Captain / Cashier','Emsphere - Service',125,'DEPT01',1),(74,'102301001','น.ส.พัชริดา ครองเพ็ชร','Ms.Patcharida Kongpet','ตังค์','Bar Staff','Erawan - Bar',101,'DEPT03',1),(75,'102501041','น.ส.ลักษิกา พานแก้ว','Ms.Laksika Phankaeo','เกม','Bar Staff ','Erawan - Bar',101,'DEPT03',1),(76,'112012157','น.ส.ประกายกานต์  ช้างอ่ำ','Miss Prakaikan  Chang-am','เนย','Bar Supervisor ','Erawan - Bar',101,'DEPT03',1),(77,'102301188','นายอ่อง คาย','Mr.Aung Khaing','คาย','Steward','Erawan - Bar',101,'DEPT03',1),(78,'102501100','น.ส.บังอร  ทิพย์คุณ','Ms.Bangoon  Thipakhun','แป้ง','Assistant Restaurant Manager','Erawan - Service',101,'DEPT01',1),(79,'102301312','นายปัน ยา อู','Mr.Share Ya OO','ขวัญ','Busser','Erawan - Service',101,'DEPT01',1),(80,'102301313','น.ส.นอ อา ลา','Ms.Naw Al Lar','แอน','Busser','Erawan - Service',101,'DEPT01',1),(81,'102301260','น.ส.กาญจนา ศักดาศุภโภคิน','Ms.Kanjana Sakdasuphaphokhin','กาญ','Cashier','Erawan - Service',101,'DEPT01',1),(82,'102201132','น.ส.เมทนี ทองดุศรี','Ms.Methanee Thongdusri','หญิง','Cashier ','Erawan - Service',101,'DEPT01',1),(83,'102501148','น.ส.พรนภา เหง้าละคร','Ms.Pornnapa Hngaolakorn','ทีนทีน','Hostess','Erawan - Service',101,'DEPT01',1),(84,'101811648','น.ส.วัชลี  ผูกทอง','Miss  Wachalee  Pookthong','หมวย','Restaurant Captain','Erawan - Service',101,'DEPT01',1),(85,'102301268','น.ส.จิราภา บุญทะสิม','Ms.Chirpa Boontasim','สายไหม','Restaurant Captain','Erawan - Service',101,'DEPT01',1),(86,'102301065','น.ส.ปรัศนีย์ บุญตอง','Ms. Pratsanee  Buntoong','นุ้ย','Restaurant Manager','Erawan - Service',101,'DEPT01',1),(87,'101509074','น.ส.ดาวิกา  วิระบรรณ์','Miss Dawika  Wiraban','จิน','Restaurant Supervisor','Erawan - Service',101,'DEPT01',1),(88,'102301139','น.ส.ศุภาวิรัตน์ สุขจ้อย ','Ms.Supawirat Sookjoy','อ้อม','Service Attendant','Erawan - Service',101,'DEPT01',1),(89,'102301280','น.ส.ดารารัตน์ บุญสาลี','Ms.Dararat Boonsalee','หญิง','Service Attendant','Erawan - Service',101,'DEPT01',1),(90,'102301325','นายณภษร จงกล','Mr.Napasorn Chonggol','แสน','Service Attendant','Erawan - Service',101,'DEPT01',1),(91,'102301351','น.ส.กัลยา น้อยหิรัญ','Ms.Kallaya Noyhirun','ฟาง','Service Attendant','Erawan - Service',101,'DEPT01',1),(92,'102401111','น.ส.วิไล ใต้ชมภู','Ms.Vilai Taichomphoo','หนุน','Service Attendant','Erawan - Service',101,'DEPT01',1),(93,'102401208','น.ส.กัญญารัตน์ ดาหนองเป็ด','Ms.Kanyarat Danongped','โอลีฟ','Bar Staff','Icon Siam - Bar',112,'DEPT03',1),(94,'102501075','น.ส.วริญญา สีแดงน้อย','Ms.Warinya Seedaengnoi','ป่าน','Bar Staff','Icon Siam - Bar',112,'DEPT03',1),(95,'102501153','นายภาณุพันธ์ หุ่นวงศ์ธรรม','Mr.Panupan Hunwongtham','ตะวัน','Bar staff','Icon siam - Bar',112,'DEPT01',1),(96,'102301259','น.ส.นภารัตน์ อุปมา','Ms.Naparat Uppama','แคปซูล','Cashier','Icon Siam - Service',112,'DEPT01',1),(97,'102501077','น.ส.ฐิติมา แซ่ตั้ง','Ms.Thitima Saetang','จูน','Cashier','Icon Siam - Service',112,'DEPT01',1),(98,'102501064','นายชาญชล ตั้งก่อพันธุ์','Mr.Chanchol Tangkorphun','อาร์ต','Food Runner','Icon Siam - Service',112,'DEPT01',1),(99,'102501078','น.ส.เนาวรัตน์ ชุณหะโสภา','Ms.Naowarat Chunahasopa','เดียร์ ','Food Runner','Icon Siam - Service',112,'DEPT01',1),(100,'102401120','นายวิทวัฒน์ ยะเปียง','Mr.Witthawat Yapiang','มอส','Restaurant Captain','Icon Siam - Service',112,'DEPT01',1),(101,'102501110','น.ส.อภิญญา บุราคร','Ms.Aphinya Boorakorn','พร','Restaurant Captan','Icon Siam - Service',112,'DEPT01',1),(102,'102501083','น.ส.กุลริศา จันทา','Ms.Kunrisa Junta','หยาด','Restaurant Manager','Icon Siam - Service',112,'DEPT01',1),(103,'102201088','น.ส.ณัฐธิดา มณีบู่','Ms.Natthida Maneeboo','แตงกวา','Service Attendant','Icon Siam - Service',112,'DEPT01',1),(104,'102401215','น.ส.นันทนา อุทัยทิพย์','Ms.Nantana Autaitip','แป้ง','Service Attendant','Icon Siam - Service',112,'DEPT01',1),(105,'102501042','น.ส.กัญญาภัค จันมา','Ms.Kanyaphak Chanma','กุ้ง','Service Attendant','Icon Siam - Service',112,'DEPT01',1),(106,'102501074','น.ส.ฐาปนีย์ นวลเพ็ญ','Ms.Tapanee Nualpen','หยก','Service Attendant','Icon Siam - Service',112,'DEPT01',1),(107,'102501126','น.ส.ทิพาภรณ์ บุญปาน','Ms.Thiphaphon Bunpan','นิ้ง','Service Attendant','Icon Siam - Service',112,'DEPT01',1),(108,'102301037','นายดนุพงษ์ ภูผา','Mr.Danupong Phoopa','เดียร์ ','Bar Staff','One Nimman - Bar',116,'DEPT03',1),(109,'101507079','นายเกรียงศักดิ์  วงนันใจ','Mr. Kriangsak Uaongchai','ก้อย','Bar Supervisor ','One Nimman - Bar',116,'DEPT03',1),(110,'101207054','นายเอกสิทธิ์  นิสสัย','Mr. Ekkasit  Nissai','บาว','Assistant Restaurant Manager','One Nimman - Service',116,'DEPT01',1),(111,'101609110','น.ส.วัชรี  จึงสุทธิวงษ์','Miss Watcharee Chuengsuttiwong','โอปอล','Captain Cashier','One Nimman - Service',116,'DEPT01',1),(112,'102501024','นายวัชรพงษ์ มหพรสิทธิ์','Mr.Watcharapong Mahaponsit','โอม','Cashier','One Nimman - Service',116,'DEPT01',1),(113,'111910006','น.ส.สุประภา  ศรีศิริ','Miss Suprapa  Srisiri','ยุ้ย','Restaurant Manager','One Nimman - Service',116,'DEPT01',1),(114,'101901706','น.ส.ญาณี  วิริยขลุ่ยทอง','Miss Yanee  Viriyakluithong','อั๊ง','Restaurant Supervisor','One Nimman - Service',116,'DEPT01',1),(115,'101805429','นายชาลิตา  บัวไข','Mr. Chalita  Buakhai','ดรีม','Service Attendant','One Nimman - Service',116,'DEPT01',1),(116,'102301085','นายชาครีย์ อารักษ์','Mr.Chakree Arak','ฮอน','Service Attendant','One Nimman - Service',116,'DEPT01',1),(117,'102301133','นายสิทธิชัย ชะมาประโคน','Mr.Sittichai Chamaprakhon','เจ','Service Attendant','One Nimman - Service',116,'DEPT01',1),(118,'102301158','น.ส.ปฏิพร พหลยุทธ','Ms.Patipon Pahonyoot','อ้อ','Service Attendant','One Nimman - Service',116,'DEPT01',1),(119,'102401052','น.ส.แพรวนภา คำอ้าย','Ms.Preawnapa Kham-ai','','Service Attendant','One Nimman - Service',116,'DEPT01',1),(120,'102501010','นายดุลยวัต พงศ์รัตนไพศาล','Mr.Dulyawat Phongrattanapaisal','เทพ','Service Attendant','One Nimman - Service',116,'DEPT01',1),(121,'102501018','น.ส.พิมพ์ประกาย คูหา','Ms.Phimprakai Khuha','เหวย','Service Attendant','One Nimman - Service',116,'DEPT01',1),(122,'102201177','น.ส.นทีกานต์ เม่นทองคำ','Ms.Nateekarn Mentongkam','ล่า','Bar Staff','Paragon - Bar',107,'DEPT03',1),(123,'101711330','น.ส.จิราพร  บัวเหมือน','Miss Jiraporn  Buamuean','จุ๋ม','Senior Bar','Paragon - Bar',107,'DEPT03',1),(124,'100411101','นายปฏิพัทธิ์  ตาลหอม','Mr. Pathipat  Talhom','เด่น','Senior Bar Supervisor ','Paragon - Bar',107,'DEPT03',1),(125,'102301049','นายลู มิน อ่อง ','Mr.Lu Min Aung','เหน่ง','Steward','Paragon - Bar',107,'DEPT03',1),(126,'112011153','นายกฤษณะ  ถิ่นพุดซา','Mr. Kritsana  Thinpudsa','กอล์ฟ','Assistant Restaurant Manager ','Paragon - Service',107,'DEPT01',1),(127,'102201067','น.ส.ธิดารัตน์ นพพิบูลย์','Ms.Tidarat Noppiboon','อ้อย','Cashier','Paragon - Service',107,'DEPT01',1),(128,'102201120','นายเจษฎา พรมวรรณ์','Mr.Jetsada Promwan','เบนซ์','Restaurant Captain','Paragon - Service',107,'DEPT01',1),(129,'102301211','นายกมล ทามะฤทธิ์','Mr.Kamol Tamarit','แคส','Restaurant Captain','Paragon - Service',107,'DEPT01',1),(130,'102101016','น.ส.ณัชชามนต์ ไหมทอง','Ms. Nuchamon Maithong','ติ๋ว','Restaurant Manager','Paragon - Service',107,'DEPT01',1),(131,'102201064','นายศักดา เกษอินทร์','Mr.Sakda Getin','นัท','Restaurant Supervisor','Paragon - Service',107,'DEPT01',1),(132,'102501099','น.ส.เจนจิรา สบบง','Miss Janjira Sobbong','เจน','Restaurant Supervisor','Paragon - Service',107,'DEPT01',1),(133,'102301149','นายนริส สิงกวย','Mr.Naris Singuay','ท็อป','Service Attendant','Paragon - Service',107,'DEPT01',1),(134,'102401007','นายอภินันท์ สุขประเสริฐ','Mr.Aphinan Sukprasert','อีฟ','Service Attendant','Paragon - Service',107,'DEPT01',1),(135,'102501026','น.ส.พิมพิกา ศิลาพัฒน์','Ms.Pimpika Silaphat','นุ่น','Service Attendant','Paragon - Service',107,'DEPT01',1),(136,'102501120','น.ส.สุดารัตน์ ทาจู','Ms.Sudarat Thachu','แป้ง','Service Attendant','Paragon - Service',107,'DEPT01',1),(137,'102501144','น.ส.พจมาลย์  ไกรษี','Ms.Pojjaman Kraisee','มัท','Service Attendant','Paragon - Service',107,'DEPT01',1),(138,'102501155','น.ส.ธัญชนก ขุนสุวรรณ','Ms.Thanchanok Khunsywan','มะนาว','Service Attendant','Paragon - Service',107,'DEPT01',1),(139,'102501121','น.ส.นุสรา เพ็งเภา','Ms.Nutsara Paengpao','มิ้นท์','Bar Staff','Sook Siam - Bar',124,'DEPT03',1),(140,'102501157','น.ส.สุภาพร พรหมมา','Ms.Supaporn Promma','ปอย','Bar staff','Sook Siam - Bar',124,'DEPT03',1),(141,'102501106','น.ส.พิมพ์วิภา แสนอู','Ms. Phimwipa Sean-au','ตุ้ยนุ้ย','Cashier','Sook Siam - Service',124,'DEPT01',1),(142,'102201094','น.ส.สุชาดา พุ่มเกิด','Ms.Suchada Poomkeld','ปาล์มมี่','Service Attendant','Sook Siam - Service',124,'DEPT01',1),(143,'102201217','นางธันยากานต์ โชติสนธิ์','Mrs.Thanyakan Chotison','กบ','Bakery Staff','Taste of Home - Bar',123,'DEPT03',1),(144,'102501097','น.ส.กาญจนา มณีรัตน์','Ms.Kanjana Maneerat','อุ้ยอ้าย','Bar Staff','Taste of Home - Bar',123,'DEPT03',1),(145,'102501096','น.ส.พิรพร ทบร้อย','Ms. Piraporn Tobroy','เบียร์','Captain Bar','Taste of Home - Bar',123,'DEPT03',1),(146,'102101033','น.ส.สวรส บุญวิมาน','Ms.Sowaros Boonwiman','เปิ้ล','Senior Bakery Supervisor','Taste of Home - Bar',123,'DEPT03',1),(147,'102301359','น.ส.แตะ แตะ ข่าย','Ms.Htet Htet Khaing','ชมพู่','Busser','Taste of Home - Service',123,'DEPT01',1),(148,'102401049','นายประพันธ์ ประพันธ์','Mr.Prapun Prapun','ไมค์','Busser','Taste of Home - Service',123,'DEPT01',1),(149,'102301271','นายภูมิพันธ์ เอี่ยมปรเมศวร์','Mr.Poomipan  Aiumporames','จอม','General Manager','Taste of Home - Service',123,'DEPT01',1),(150,'102201093','นายขวัญพัฒน์ ทิณรัตน์','Mr.Khwanphat Thinnarat','แก้ว','Hostess','Taste of Home - Service',123,'DEPT01',1),(151,'101909961','นายพุฒิพงศ์ สุราทิพย์','Mr.Puttiphong  Surathip','ทีม','Restaurant Captain','Taste of Home - Service',123,'DEPT01',1),(152,'102301240','นายสราวุธ แสนวงษ์','Mr.Sarawut Saenwong','หนึ่ง','Restaurant Captain','Taste of Home - Service',123,'DEPT01',1),(153,'102201096','นางขวัญดาว ประดับวัน','Mrs.Khuandaw Pradabwan','ขวัญ','Restaurant Captain/Cashier','Taste of Home - Service',123,'DEPT01',1),(154,'100501109','นายกิตติพัทธิ์  กันทะกะ','Mr. Kittipatch  Kuntaka','โอ','Restaurant Manager','Taste of Home - Service',123,'DEPT01',1),(155,'102301235','น.ส.ปาณิศษา ยุบลชู','Ms.Panitsa Yubonchoo','แอมป์','Restaurant Supervisor','Taste of Home - Service',123,'DEPT01',1),(156,'102301206','นายวันสัก เซิน','Mr.Vansak Seun','สัก','Bar Staff','Terminal 21 - Bar',111,'DEPT03',1),(157,'102401181','น.ส.กรรณิกาญน์ แสงพฤกษ์','Ms.Kannikan Saengphuek','นา','Bar Staff','Terminal 21 - Bar',111,'DEPT03',1),(158,'102501002','นายณัชพล แสงอรุณ','Mr.Nachaphon Sangaroon','เวฟ','Bar Staff','Terminal 21 - Bar',111,'DEPT03',1),(159,'102501114','น.ส.กฤษณา บุญหนัก','Ms.Kitsana Bunnak','กลอย','Bar Staff','Terminal 21 - Bar',111,'DEPT03',1),(160,'102201172','น.ส.ชไมพร วงษ์ชาลี','Ms.Chamaiporn Wongchalee','จอย','Cashier ','Terminal 21 - Service',111,'DEPT01',1),(161,'101808524','น.ส.สำราญ  แสนราช','Miss Samran  Sanrach','เจี้ยบ','Restaurant Captain','Terminal 21 - Service',111,'DEPT01',1),(162,'102301014','น.ส.ปนัดดา พรมโท','Ms.Panatda Phomto','ออย','Restaurant Captain','Terminal 21 - Service',111,'DEPT01',1),(163,'101505062','นายฉัตรชัย  กัณหา','Mr. Chatchai  Khanha','แก๊บ','Restaurant Manager','Terminal 21 - Service',111,'DEPT01',1),(164,'101809571','น.ส.เสาวลักษณ์  ธงยศ','Miss Saowaluk  Thongyos','จุ๊ฟ','Restaurant Supervisor','Terminal 21 - Service',111,'DEPT01',1),(165,'102201118','น.ส.ชลธิชา สีฤทธิ์','Ms.Chonthicha Sirit','เจน','Service Attendant','Terminal 21 - Service',111,'DEPT01',1),(166,'102301145','น.ส.อภิญญา จินารักษ์','Ms.Apinya Jinarak','เฟรม','Service Attendant','Terminal 21 - Service',111,'DEPT01',1),(167,'102401243','นายพัชรพล ภูมิสุข','Mr.Phatcharaphon Phumsuk','มิ','Service Attendant','Terminal 21 - Service',111,'DEPT01',1),(168,'102501006','น.ส.วรรณิภา บุญสม','Ms.Wannipha Boonsom','เมย์','Service Attendant','Terminal 21 - Service',111,'DEPT01',1),(169,'102501123','น.ส.จิราวรรณ สันตะลับ','Ms.Chirawan Santalap','หยก','Service Attendant','Terminal 21 - Service',111,'DEPT01',1),(170,'102501124','น.ส.วิลาสินี เฉียงเมือง','Ms.Vilasinee Chiangmueang','ปีใหม่','Service Attendant','Terminal 21 - Service',111,'DEPT01',1),(171,'102401092','น.ส.ปราณี พัตราจันทร์','Ms.Pranee Pattrajan','กุ้ง','Bar Staff','Terminal 21 Asok - Bar',126,'DEPT03',1),(172,'102401112','น.ส.ธนารัตน์ สุรวิด','Ms.Tanarat Surawit','ลูกปู','Bar Staff','Terminal 21 Asok - Bar',126,'DEPT03',1),(173,'102501080','นายอานนท์ พันธ์ใหญ่','Mr.Arnon Panyai','ปาล์ม','Bar Staff','Terminal 21 Asok - Bar',126,'DEPT03',1),(174,'100803020','นายชานุวัฒ  เผ่าพงษา','Mr. Chanuwat  Propongsa','เอก','Senior Bar Supervisor ','Terminal 21 Asok - Bar',126,'DEPT03',1),(175,'102201024','น.ส.ณัฏฐิณี ศรีพลมาตย์','Ms. Nattinee Sriphonmart','ติ๊ก','Assistant Restaurant Manager','Terminal 21 Asok - Service',126,'DEPT01',1),(176,'102201062','น.ส.พัชรินทร์ มาประกอบ','Ms.Phacharin Maprakob','อ้อม','Cashier','Terminal 21 Asok - Service',126,'DEPT01',1),(177,'102401076','น.ส.อ้อน วาดวงษ์','Ms.Aon Wadwong','อ้อน','Cashier ','Terminal 21 Asok - Service',126,'DEPT01',1),(178,'102401258','นายไซ ออง เตะ','Mr.Sai Aung Thet','','Hostess','Terminal 21 Asok - Service',126,'DEPT01',1),(179,'102301152','นายสมเกียรติ  พรมทวี','Mr. Somkiat   Promthawee','เอ','Restaurant Manager','Terminal 21 Asok - Service',126,'DEPT01',1),(180,'102401114','นายเพียง พิว','Mr.Pyae Phyo','แสง','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(181,'102401132','น.ส.มิ ข่าย ซา วิน','Ms.Mi Khaing Zar Win','สา','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(182,'102401140','น.ส.สุพัตชา เวทนา','Ms.Supatcha Watana','จ๊ะจ๋า','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(183,'102401145','น.ส.พิมลพรรณ เรืองรำไพรกูล','Ms.Phimonpan Rueanramphaikun','แพรว','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(184,'102401175','นายธวัชชัย ลุนจันทา','Mr.Thawatchai Lunjanta','หรั่ง','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(185,'102501125','น.ส.นัดดา อินประดิษฐ','Ms.Nadda Inpradit','ป่าน','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(186,'102501134','น.ส.ภารินีย์ จิตต์ชื่น','Ms.Parinee Jitchuen','ซี','Service Attendant','Terminal 21 Asok - Service',126,'DEPT01',1),(187,'201912031','นายสมชาย  ลือนันต๊ะ','Mr. Somchai  Luenanta','โอ๊ต','Captain Bar','CO LIMITED Emsphere - Bar',204,'DEPT03',1),(188,'202001039','น.ส.วาสนา  อำมะเหียะ','Miss Wadsana  Amahia','อุ๊','Restaurant Captain/Cashier','CO LIMITED Emsphere - Service',204,'DEPT01',1),(189,'202003051','นายนรวีร์  ไตรดวงเงิน','Mr. Norawee  Triduangngen','หนุ่ย','Bar Supervisor','CO LIMITED Langsuan - Bar',201,'DEPT03',1),(190,'202006057','นายนิพนธ์  ประกอบศรี','Mr. Nipon  Prakobsri','หนุ่ม','Assistant Restaurant Manager','CO LIMITED Langsuan - Service',201,'DEPT01',1),(191,'202011062','น.ส.อนัญญา  สมภักดี','Miss Ananya  Sompakdee','ปลา','Restaurant Captain','CO LIMITED Central World - Service',203,'DEPT01',1),(192,'202011065','น.ส.สวั่น  กุ้งกลางดอน','Miss Sawan Kungklangdom','มะรุม','Cashier','CO LIMITED Langsuan - Service',201,'DEPT01',1),(193,'202011067','น.ส.ปาจรีย์  พลศักดิ์ขวา','Miss Pajaree  Phonsakkhwa','ตาล','Service Attendant','CO LIMITED Langsuan - Service',201,'DEPT01',1),(194,'202101022','นายกรวิชญ์ มณีรัตน์','Mr. Korawit Manirat','ต้อง','Restaurant Captain','CO LIMITED Emsphere - Service',204,'DEPT01',1),(195,'202101029','นายพิพัฒน์ วงษ์จริต','Mr. Pipat Wongjaring','พัด','Bar Staff','CO LIMITED Central World - Bar',203,'DEPT03',1),(196,'202101030','นายจรัล ชมจันทร์','Mr. Jaran Chomjun','ทัด','Restaurant Captain','CO LIMITED Langsuan - Service',201,'DEPT01',1),(197,'202201012','น.ส.สุธิดา  คามจังหาร','Miss  Suthida  Kamjangharn','อาร์ท','Service Attendant','CO LIMITED Langsuan - Service',201,'DEPT01',1),(198,'202201015','น.ส.อภิญญา  ภูถาวร','Miss  Apinya  Puthaworn','จ๋า','Restaurant Supervisor','CO LIMITED Emsphere - Service',204,'DEPT01',1),(199,'202201016','นายปฏิภาณ ทรัพย์ศิริ ','Mr. Patipan Sapsiri','ภูมิ','Service Attendant','CO LIMITED Langsuan - Service',201,'DEPT01',1),(200,'202201017','น.ส.ทรงพร สุมนศร','Miss Songporn Sumonson','มายด์','Service Attendant','CO LIMITED Langsuan - Service',201,'DEPT01',1),(201,'202201018','น.ส.นิสา  สำเร็จผล','Ms.Nisa Samreatphon','จิ๊บ','Assistant Restaurant Manager','CO LIMITED Emsphere - Service',204,'DEPT01',1),(202,'202201020','น.ส.มนัสชนก  นะวะทิตย์','Ms. Manuschanok  Nawatit','กล้วย','Restaurant Captain','CO LIMITED Central World - Service',203,'DEPT01',1),(203,'202201029','น.ส.วิมลรัตน์ ศรีทัศน์','Ms. Wimolrat Srithat','อิ๋ว','Restaurant Manager','CO LIMITED Central World - Service',203,'DEPT01',1),(204,'202201035','น.ส.เลน','Ms.Lenh','โบว์','Service Attendant','CO LIMITED Central World - Service',203,'DEPT01',1),(205,'202301006','นายจักรกฤษ โนนพรมราช','Mr.Jakkrid Nonpromrach','เกม','Service Attendant','CO LIMITED Central World - Service',203,'DEPT01',1),(206,'202301016','น.ส.รัชนีกร อุทา','Ms.Ratchanikon Autha','หนิง','Cashier','CO LIMITED Central World - Service',203,'DEPT01',1),(207,'202301017','น.ส.พรพรรณ ไชยมงคล','Ms.Pornphan Chaimogkol','ใบเตย','Cashier','CO LIMITED Central World - Service',203,'DEPT01',1),(208,'202301021','น.ส.อัมพร จงเจริญ','Ms.Amporn Jongjaraen','อัน','Service Attendant','CO LIMITED Central World - Service',203,'DEPT01',1),(209,'202301038','นายศราวุฒิ เผือคำภู','Mr.Sarawut  Phueakhamphu','ไวน์','Bar Staff','CO LIMITED Langsuan - Bar',201,'DEPT03',1),(210,'202301041','น.ส.วรัญญา เพ็งนวม','Ms. Waranya Phengnuam','วินนี่','Restaurant Manager','CO LIMITED Langsuan - Service',201,'DEPT01',1),(211,'202301053','น.ส.ชรินดา โต๊ะหลี','Ms.Charinda Toalee','มีน','Service Attendant','CO LIMITED Langsuan - Service',201,'DEPT01',1),(212,'202301072','น.ส.จุฑามาศ นางาม','Ms.Chuthamat Nangam','อุ๋มอิ๋ม','Cashier','CO LIMITED Langsuan - Service',201,'DEPT01',1),(213,'202301073','นายศรีรัตน์ นางาม','Mr.Sirat Nangam','แชมป์','Service Attendant','CO LIMITED Emsphere - Service',204,'DEPT01',1),(214,'202301080','นายอุ ทัน โช','Mr.Oo Tun Shwe','โกโก้','Busser','CO LIMITED Central World - Service',203,'DEPT01',1),(215,'202301084','น.ส.เมทินี ศรีรักษ์','Ms. Matinee Srirak','เม','Restaurant Manager','CO LIMITED Emsphere - Service',204,'DEPT01',1),(216,'202301086','น.ส.วรฤทัย บุญยอด','Ms.Woraruethai Boonyod','ทัย','Service Attendant','CO LIMITED Central World - Service',203,'DEPT01',1),(217,'202401002','น.ส.เฮ็น เฮ็น วา','Ms.Hnin Hnin War','นีวา','Service Attendant','CO LIMITED Emsphere - Service',204,'DEPT01',1),(218,'202401006','น.ส.จูรี มี','Ms.July Moe','จู','Busser','CO LIMITED Emsphere - Service',204,'DEPT01',1),(219,'202401007','นายออง เมียว เฮเท','Mr.Aung Myo Htet','อ่อง','Busser','CO LIMITED Emsphere - Service',204,'DEPT01',1),(220,'202401009','นายซอ เอา ซอ ทวย','Mr.Saw Aung Zaw Htwe','poe','Busser','CO LIMITED Central World - Service',203,'DEPT01',1),(221,'202401016','นางSaychay Khounsaknalath','Mr.Saychay Khounsaknalath','ใจ','Busser','CO LIMITED Langsuan - Service',201,'DEPT01',1),(222,'202401017','นายมิว มิน ซาน','Mr.Myo Min San','บอย','Busser','CO LIMITED Emsphere - Service',204,'DEPT01',1),(223,'202401019','น.ส.เบญวรรณ จิตรถวิล','Ms. Benjawan chitthahwin','พัด','Bar Staff','CO LIMITED Central World - Bar',203,'DEPT03',1),(224,'202401024','น.ส.ศศิธร โกมลเสน','Ms.Sasitorn Komonsen','ปุ๊ก','Cashier','CO LIMITED Emsphere - Service',204,'DEPT01',1),(225,'202401032','นายณัฐวุฒิ เรืองสมบัติ','Mr.Nattawut Rueangsombat','นัท','Bar Staff','CO LIMITED Emsphere - Bar',204,'DEPT03',1),(226,'202401035','น.ส.นัง โม โม เอ','Ms.Nang Mo Mo aye','','Busser','CO LIMITED Langsuan - Service',201,'DEPT01',1),(227,'202401039','นายตาวดา ปี','Mr.Thawdar Pyae','','Busser','CO LIMITED Emsphere - Service',204,'DEPT01',1),(228,'202401042','น.ส.ชู้ ปาน โม','Ms.Su Pan Moe','','Busser','CO LIMITED Langsuan - Service',201,'DEPT01',1),(229,'202401044','น.ส.วรัญญา ศรีคำภา','Ms. Waranya Srikhampha','บีม','Service Attendant','CO LIMITED Emsphere - Service',204,'DEPT01',1),(230,'202401045','น.ส.สุธิตา สีสุข','Ms.Suttita Seesuk','นุนา','Service Attendant','CO LIMITED Central World - Service',203,'DEPT01',1),(231,'202401046','น.ส.นัน คิน เลย์ ไน','Ms. Nan Khin Lay Nge','ฟ้า','Service Attendant','CO LIMITED Emsphere - Service',204,'DEPT01',1),(232,'202401047','นายอลงกรณ์ อุดมพิพัฒน์','Mr. Alonkorn Udompipat','เต้','Service Attendant','CO LIMITED Langsuan - Service',201,'DEPT01',1),(233,'202401048','นายสอง อาสาสุก','Mr. Song Asasouk','สอง','Busser','CO LIMITED Langsuan - Service',201,'DEPT01',1),(234,'202401062','น.ส.กฤติภร เรืองกฤษ','Ms. Kittiporn Ruangkit','ต้า','Bar Staff','CO LIMITED Langsuan - Bar',201,'DEPT03',1),(235,'202501008','น.ส.นงนภัส วรกิจพาณิชย์','Ms.Nongnaphat Worakitphanit','นง','Service Attendant','CO LIMITED Emsphere - Service',204,'DEPT01',1),(236,'202501009','น.ส.นันท์นภัส วรกิจพาณิชย์','Ms.Nannaphas Worakitphanit','นันท์','Service Attendant','CO LIMITED Emsphere - Service',204,'DEPT01',1),(237,'202501010','น.ส.นฤมล สีสว่าง','Ms.Narumon Seesawang','มายด์','Bar Staff','CO LIMITED Emsphere - Bar',204,'DEPT03',1),(238,'102501164','นาย สิทธินนท์ สัจจมั่น','Mr. Sittinon Satjaman','แทน','Bar Staff','Emsphere - Bar',125,'DEPT03',1);
/*!40000 ALTER TABLE `tbl_training_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_sum`
--

DROP TABLE IF EXISTS `tbl_training_sum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_sum` (
  `f_sum_id` int NOT NULL AUTO_INCREMENT,
  `f_checklist_id` int NOT NULL,
  `f_eva_prefix` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_sum` int NOT NULL,
  `f_total` int DEFAULT NULL,
  `f_percentage` decimal(10,2) DEFAULT NULL,
  `f_user_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_branch_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_datetime` date NOT NULL,
  `f_cert_approve` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`f_sum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_sum`
--

LOCK TABLES `tbl_training_sum` WRITE;
/*!40000 ALTER TABLE `tbl_training_sum` DISABLE KEYS */;
INSERT INTO `tbl_training_sum` VALUES (3,3,'btc',29,29,100.00,'102501153','นายภาณุพันธ์ หุ่นวงศ์ธรรม','Mr.Panupan Hunwongtham','112','0000-00-00','');
/*!40000 ALTER TABLE `tbl_training_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_topic`
--

DROP TABLE IF EXISTS `tbl_training_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_topic` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_course_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_topic_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_topic_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `f_function_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_sequence` int DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_topic`
--

LOCK TABLES `tbl_training_topic` WRITE;
/*!40000 ALTER TABLE `tbl_training_topic` DISABLE KEYS */;
INSERT INTO `tbl_training_topic` VALUES (1,'PBBO01','TN01','ทำความรู้จักอุปกรณ์ต่างๆภายในบาร์ เช่น อุปร์กรณ์ทำ Cocktail Slushy เครื่องปั่นน้ำผลไม้ เป็นต้น','DEPT03',1,1),(2,'PBBO01','TN02','เรียนรู้และปฏิบัติการเตรียมวัตถุดิบต่างๆที่ต้องเตรียมระหว่างวัน เช่น การเตรียมผลไม้ ต้มชา ชงชา เป็นต้น','DEPT03',1,1),(3,'PBBO01','TN03','เรียนรู้และปฏิบัติเมนูต่างๆตาม Recipe ทั้งเครื่องดื่มและขนมหวาน ร่วมกับพนักงานบาร์','DEPT03',1,1),(4,'PBBO01','TN04','เรียนรู้ทำความเข้าใจการปิดบาร์ เช่น การล้างทำความสะอาดอุปกรณ์ การเก็บวัตถุดิปและอุปกรณ์ ','DEPT03',1,1),(5,'PBBO02','TN05','เรียนรู้ทำความเข้าใจการปิดบาร์ เช่น การล้างทำความสะอาดอุปกรณ์ การเก็บวัตถุดิปและอุปกรณ์ ','DEPT03',2,1),(6,'PBBO02','TN06','ทบทวนเมนูและวิธีการเตรียมวัตถุดิบต่างๆของวันที่ 1 ','DEPT03',2,1),(7,'PBBO02','TN07','ช่วยเตรียมวัตถุดิบต่างๆที่ต้องเตรียมเพิ่มเติม','DEPT03',2,1),(8,'PBBO02','TN08','เรียนรู้และปฏิบัติเมนูต่างๆตาม Recipe ทั้งเครื่องดื่มและขนมหวาน เพิ่มเติมร่วมกับพนักงานบาร์','DEPT03',2,1),(9,'PBBO02','TN09','ปิดบาร์ให้เป็นไปตามวิธีและขั้นตอนที่ถูกต้อง ร่วมกับพนักงานบาร์','DEPT03',2,1),(10,'PBBO03','TN10','ทบทวนเมนูและขั้นตอนการเตรียมวัตถุดิบต่างๆ ของวันที่ 1 และ 2','DEPT03',3,1),(11,'PBBO03','TN11','ปฏิบัติงานในบาร์ให้ถูกต้องตาม Recipe และขั้นตอนต่างๆในระว่างวัน','DEPT03',3,1),(12,'PBBO03','TN12','ปิดบาร์ให้เป็นไปตามวิธีและขั้นตอนที่ถูกต้อง ร่วมกับพนักงานบาร์','DEPT03',3,1),(13,'PBBO04','TN13','เข้ากะเช้าเพื่อเรียนรู้วิธีการเปิดบาร์ในทุกขั้นตอนร่วมกับพนักงานบาร์','DEPT03',4,1),(14,'PBBO04','TN14','เรียนรู้วิธีการสั่งวัตถุดิบต่างๆเช่น สโตร์ ครัวหวาน Supplier ตลาดสด เป็นต้น','DEPT03',4,1),(15,'PBBO05','TN15','ปฏิบัติงานในบาร์ให้ถูกต้องตาม Recipe และขั้นตอนต่างๆในระว่างวัน','DEPT03',5,1),(16,'PBBO05','TN16','เข้ากะเช้าเพื่อเรียนรู้วิธีการเปิดบาร์ในทุกขั้นตอนร่วมกับพนักงานบาร์','DEPT03',5,1),(17,'PBBO05','TN17','ทบทวนและทดลองสั่งวัตถุดิบต่างๆด้วยตนเอง','DEPT03',5,1),(18,'PBBO05','TN18','ปฏิบัติงานในบาร์ให้ถูกต้องตาม Recipe และขั้นตอนต่างๆในระว่างวัน','DEPT03',5,1),(19,'PBBO06','TN19','เข้ากะเช้าเพื่อทำการเปิดบาร์ให้ถูกต้องตามขั้นตอนด้วยตนเอง','DEPT03',6,1),(20,'PBBO06','TN20','ทบทวนขั้นตอนและวิธีการปฏิบัติงานภายในบาร์ ตั้งแต่เปิดถึงปิดร้าน','DEPT03',6,1),(21,'PBBO06','TN21','ทบทวน Recipe ของเครื่องดื่มและขนมหวานต่างๆตามที่ได้เรียนรู้และปฏิบัติมา 5 วัน','DEPT03',6,1),(22,'PBBO06','TN22','สุ่มเทสเมนูที่ขายดี หรือ มีความซับซ้อนในการทำ เพื่อทดสอบ','DEPT03',6,1);
/*!40000 ALTER TABLE `tbl_training_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training_trainner`
--

DROP TABLE IF EXISTS `tbl_training_trainner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_training_trainner` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_trainer_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_course_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_user_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_training_date` datetime DEFAULT NULL,
  `f_branch_code` int DEFAULT NULL,
  `f_status` int DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training_trainner`
--

LOCK TABLES `tbl_training_trainner` WRITE;
/*!40000 ALTER TABLE `tbl_training_trainner` DISABLE KEYS */;
INSERT INTO `tbl_training_trainner` VALUES (1,'เฉลิมเดช มานะเสถียร','PBBO01','102401253','2025-08-01 00:00:00',105,1),(2,'นายอรรจน์ บำรุงพงษ์','PBBO02','102401253','2025-08-01 00:00:00',105,1),(3,'อัครนันท์ รณชิตพานิชยกิจ','PBBO03','102401253','2025-08-01 00:00:00',105,1),(4,'นนธี  นาเสือวัน','PBBO04','102401253','2025-08-01 00:00:00',105,1),(5,'ภาคภูมิ โฉมฉาย','PBBO05','102401253','2025-08-01 00:00:00',105,1),(6,'ภาคภูมิ โฉมฉาย','PBBO06','102401253','2025-08-01 00:00:00',105,1);
/*!40000 ALTER TABLE `tbl_training_trainner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_naragroup`
--

DROP TABLE IF EXISTS `tbl_user_naragroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_naragroup` (
  `f_user_id` int NOT NULL AUTO_INCREMENT,
  `f_user_code` varchar(10) NOT NULL,
  `f_area_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `f_user_name_th` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_user_name_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `f_password` varchar(50) NOT NULL,
  `f_department` varchar(10) NOT NULL,
  `f_position` varchar(50) NOT NULL,
  `f_user_login` varchar(50) NOT NULL,
  `f_branch_code` int NOT NULL,
  `f_permittion_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`f_user_id`,`f_user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_naragroup`
--

LOCK TABLES `tbl_user_naragroup` WRITE;
/*!40000 ALTER TABLE `tbl_user_naragroup` DISABLE KEYS */;
INSERT INTO `tbl_user_naragroup` VALUES (1,'100208002','100208002','วสันต์ นฤหายะ','Wasan Naritaya','nara1234','OP','Area Service Manager','wasant@naracuisine.com',888,'1'),(2,'102301161','102301161','ภาคภูมิ โฉมฉาย','Pakpoom Chomchay','nara1234','IT','IT Director','pakpoom@naracuisine.com',777,'5'),(3,'111910007','111910007','นนธี  นาเสือวัน','Nontee Nasueawan','nara1234','IT','Senior IT Specialist','nontee@naracuisine.com',777,NULL),(4,'102301201','102301201','เฉลิมเดช มานะเสถียร','chalearmdet manasatien','nara1234','IT','Senior BA&App support','chalearmdet.m@naracuisine.com',777,NULL),(5,'102401259','102401259','นายอรรจน์ บำรุงพงษ์','Atch Bumrungpong','nara1234','IT','Senior IT Support ','atch.b@naracuisine.com',777,NULL),(6,'102401262','102401262','อัครนันท์ รณชิตพานิชยกิจ','Aukkaranan Ronnachitphanitchayakit','nara1234','IT','Senior Supervisor','aukkaranan@naracuisine.com',777,NULL),(7,'101808522','101808522','ศศิธร  เจียรสกุล','Sasithorn Jierasakul','nara1234','OP','Area Service Manager','sasithorn@naracuisine.com',888,'14'),(8,'100808028','100808028','นิคม ตาลหอม','Nikom Tanhom','nara1234','OP','Area Service Manager','nikom@naracuisine.com',888,'1'),(9,'202101002','202101002','อภิสิทธิ์ ลักษิตานนท์','Apisit Luksitanon','nara1234','OP','Area Service Manager','apisit@naracuisine.com',888,'12'),(10,'100101','100808028','นารา เอราวัณ','Nara Erawan','nara1234','OP','Branch','naraerawan@naracuisine.com',101,NULL),(11,'100103','100808028','นารา เซ็นทรัลเวิลด์','NARA Central World','nara1234','OP','Branch','naracentralworld@naracuisine.com',103,NULL),(12,'100105','100208002','นารา เซ็นทรัลแอมบาสซี','NARA Embassy','nara1234','OP','Branch','naraembassy@naracuisine.com',105,NULL),(13,'100106','100808028','นารา เอ็มควอเทียร์','NARA EmQuartier','nara1234','OP','Branch','naraemquartier@naracuisine.com',106,NULL),(14,'100107','100808028','นารา สยามพารากอน','NARA Siam Paragon','nara1234','OP','Branch','narasiamparagon@naracuisine.com',107,NULL),(15,'100111','100208002','นารา เทอมินอล 21 พัทยา','NARA T21 Pattaya','nara1234','OP','Branch','narapattaya@naracuisine.com',111,NULL),(16,'100112','100208002','ไอคอนสยาม','Icon Siam','nara1234','OP','Branch','naraiconsiam@naracuisine.com',112,NULL),(17,'100116','101808522','นารา วันนิมมาน','NARA One Nimman','nara1234','OP','Branch','naraonenimman@naracuisine.com',116,NULL),(18,'100119','202101002','อั้งม้อ-ทองหล่อ','Angmorr-Thonglor','nara1234','OP','Branch','angmorr@naracuisine.com',119,NULL),(19,'100123','101808522','บ้านนอก-หลังสวน','Baan Nok-Langsuan','nara1234','OP','Branch','baannok.ls@naracuisine.com',123,NULL),(20,'100124','100208002','สุขสยาม','Sook siam','nara1234','OP','Branch','narasooksiam@naracuisine.com',124,NULL),(21,'100125','100808028','ดิ เอ็มสเฟียร์','The Emsphere','nara1234','OP','Branch','naraemsphere@naracuisine.com',125,NULL),(22,'100126','100208002','นารา เทอมินอล 21 อโศก','NARA T21 Asoke','nara1234','OP','Branch','narat21asok@naracuisine.com',126,NULL),(23,'102501054','102501054','สุวัฒน์ กุลไพจิตร','Suvat Kulpaichit','nara1234','COO','COO','suvat.k@naracuisine.com',777,'5'),(24,'101211056','100808028','สมสุข  วงเวียน','Somsuk Wongwian','nara1234','OP','RM','rm.ctw@naracuisine.com',103,'4'),(25,'101506064','100808028','นุชจรี นาคทอง','Nucharee Nakthong','nara1234','OP','Ass.RM','service.ctw@naracuisine.com',103,'4'),(26,'102301074','100808028','กัลย์ศรัณย์ แซ่อึ้ง','Kansaran Saeung','nara1234','OP','Cashier','cashier.ctw@naracuisine.com',103,NULL),(27,'100806026','100808028','อำนวย นามวงศ์','Amnuay Namwong','nara1234','OP','Sous Chef','kitchen.ctw@naracuisine.com',103,NULL),(28,'102301065','100808028','ปรัศนีย์ บุญตอง','Pratsanee Buntoong','nara1234','OP','RM','rm.erw@naracuisine.com',101,'4'),(29,'102501100','100808028','บังอร ทิพย์คุณ','Bangoon Thipkhun','nara1234','OP','Ass.RM','service.erw@naracuisine.com',101,'4'),(30,'102301260','100808028','กาญจนา ศักดาศุภโภคิน','Kanjana Sakdasuphaphokhin','nara1234','OP','Cashier','cashier.erw@naracuisine.com',101,NULL),(31,'112012157','100808028','ประกายกานต์ ช้างอ่ำ','Prakaikan Changam','nara1234','OP','Bar Supervisor','bar.erw@naracuisine.com',101,NULL),(32,'101710314','100808028','ยูกิ โสภาเลิศ','Yuki Sopaloert','nara1234','OP','Demi CDP','kitchen.erw@naracuisine.com',101,NULL),(33,'102101016','100808028','ณัชชามนต์ ไหมทอง','Nutchamon Maithong','nara1234','OP','RM','rm.spg@naracuisine.com',107,'4'),(34,'112011153','100808028','กฤษณะ ถิ่นพุดซา','Kritsana Thinpudsa','nara1234','OP','Ass.RM','service.spg@naracuisine.com',107,'4'),(35,'102201067','100808028','ธิดารัตน์ นพพิบูลย์','Tidarat noppiboon','nara1234','OP','Cashier','cashier.spg@naracuisine.com',107,NULL),(36,'101405018','100808028','ภัททิรา ลาจันทร์','Pattira Lachan','nara1234','OP','Sous Chef','kitchen.spg@naracuisine.com',107,NULL),(37,'100411101','100808028','ปฏิพัทธิ์ ตาลหอม','Patipat Talhom','nara1234','OP','Senior Bar Supervisor','bar.spg@naracuisine.com',107,NULL),(38,'101303064','100808028','อนันตศักดิ์ ทามะฤทธิ์','Anantasak Tramarith','nara1234','OP','Bar Supervisor','bar.ctw@naracuisine.com',103,NULL),(39,'101809556','100208002','ประพาพ์รัตน์  สังฆธรรม','Praparat  Sangkatham','nara1234','OP','RM','rm.emb@naracuisine.com',105,'4'),(40,'101804404','100208002','สนธยา จันทร์รวม','Sontaya Chanruam','nara1234','OP','Supervisor','service.spg@naracuisine.com',105,NULL),(41,'111911036','100208002','กัลยาพร จำปาสุข','Kanlayaporn Jampasook','nara1234','OP','Captain Cashier','cashier.spg@naracuisine.com',105,NULL),(42,'102401253','100208002','พรทิพย์ จราวิทย์','Pornthip Jarawit','nara1234','OP','Bar Staff','kitchen.spg@naracuisine.com',105,NULL),(43,'101907900','100208002','ธนพล  อาจปาสา','Tanapol Arjpasa','nara1234','OP','CDP','bar.spg@naracuisine.com',105,NULL),(44,'100811032','100808028','มงคล  ถุงแก้ว','Mongkol Toongkaew','nara1234','OP','RM','mongkol@naracuisine.com',106,'4'),(45,'101612147','100808028','ทองพูน บัวนาค','Tongpoon Buanak','nara1234','OP','Ass.RM','service.emq@naracuisine.com',106,'4'),(46,'101612147','100808028','มณีพร ปรากฏรัต','Maneeporn Prakodrat','nara1234','OP','Cashier','cashier.emq@naracuisine.com',106,NULL),(47,'101503052','100808028','พรรณทิภา บุตรนาโก','Pantipa Butnako','nara1234','OP','Bar Supervisor','bar.emq@naracuisine.com',106,NULL),(48,'102401059','100808028','สิทธิศักดิ์ พิชญวงศ์หิรัญ','Sittisak Pitchayawoinghiran','nara1234','OP','Sous Chef','kitchen.emq@naracuisine.com',106,NULL),(49,'102301152','100208002','สมเกียรติ  พรมทวี','Somkiat   Promthawee','nara1234','OP','RM','somkiet@naracuisine.com',126,'4'),(50,'102201024','100208002','ณัฏฐิณี ศรีพลมาตย์','Nattinee Sriphonmart','nara1234','OP','Ass.RM','service.t21a@naracuisine.com',126,'4'),(51,'102401076','100208002','อ้อน วาดวงษ์','Aon  Wadwong','nara1234','OP','Cashier','cashier.t21a@naracuisine.com',126,NULL),(52,'100803020','100208002','ชานุวัฒ เผ่าพงษา','Chanuwat Phopongsa','nara1234','OP','Senior Bar Supervisor','bar.t21a@naracuisine.com',126,NULL),(53,'102401127','100208002','ชำนาญ รอดถาวร','Chamnarn  Rodthawon','nara1234','OP','CDP','kitchen.t21a@naracuisine.com',126,NULL),(54,'100125001','100808028','RM EMSP','RM EMSP','nara1234','OP','RM','rm.ems@naracuisine.com',125,'4'),(55,'102201145','100808028','Kanyakorn thongpong','กันยกร ทองป้อง','nara1234','OP','Captain Cashier','service.ems@naracuisine.com',125,NULL),(56,'',NULL,'Cashire EMSP','Cashire EMSP','nara1234','OP','Cashier','cashier.ems@naracuisine.com',125,NULL),(57,'102401151','100808028','พิรดา โสลุน','Phirada Solun','nara1234','OP','Bar Supervisor','bar.ems@naracuisine.com',125,NULL),(58,'101903776','100808028','อรญา สุขสำโรง ','Oraya sooksamrong','nara1234','OP','Sous Chef','kitchen.ems@naracuisine.com',125,NULL),(59,'111910006','101808522','สุประภา  ศรีศิริ','Suprapa  Srisiri','nara1234','OP','RM','suprapa@naracuisine.com',116,'10'),(60,'101207054','101808522','เอกสิทธิ์  นิสสัย','Ekkasit  Nissai','nara1234','OP','Ass.RM','service.onm@naracuisine.com',116,'4'),(61,'101609110','101808522','วัชรี  จึงสุทธิวงษ์','Watcharee  Chuengsuttiwong','nara1234','OP','Captain Cashier','cashier.onm@naracuisine.com',116,NULL),(62,'101507079','101808522','เกรียงศักดิ์  วงนันใจ','Kriangsak  Uaongnanchai','nara1234','OP','Bar Supervisor','bar.onm@naracuisine.com',116,NULL),(63,'101807511','101808522','วรรณภา  จริยะมา','Wannapa  Jariyama','nara1234','OP','Sous Chef','kitchen.onm@naracuisine.com',116,'11'),(64,'101505062','100208002','ฉัตรชัย  กัณหา','Chatchai  Khanha','nara1234','OP','RM','chatchai@naracuisine.com',111,'4'),(65,'101809571','100208002','เสาวลักษณ์  ธงยศ','Saowaluk    ThongYos','nara1234','OP','Supervisor','service.t21p@naracuisine.com',111,NULL),(66,'102201172','100208002','ชไมพร  วงษ์ชาลี','Chamaiporn   Wongchalee','nara1234','OP','Cashier','cashier.t21p@naracuisine.com',111,NULL),(67,'102301206','100208002','วันสัก เซิน','Vansak  Seun','nara1234','OP','Bar Staff','bar.t21p@naracuisine.com',111,NULL),(68,'102301227','100208002','ยุพาภรณ์  เกตุบุญ','Yuphaporn  KatBun','nara1234','OP','Demi CDP','kitchen.t21p@naracuisine.com',111,'11'),(69,'102501083','100208002','กุลริศา จันทา','Kunrisa Junta','nara1234','OP','RM','rm.icon@naracuisine.com',112,'4'),(70,'102201138','100208002','เสาวลักษณ์ ทองรอง','Soawaluck Tongrong','nara1234','OP','Supervisor','service.icon@naracuisine.com',112,NULL),(71,'102301259','100208002','นภารัตน์ อุปมา','Naparat Uppama','nara1234','OP','Cashier','cashier.icon@naracuisine.com',112,NULL),(72,'102501051','100208002','วรรณภร แสนนาม','Wannaporn Seannam','nara1234','OP','Captain Bar','bar.icon@naracuisine.com',112,NULL),(73,'101103037','100208002','วรรณนพ ชัยสิทธิ์ ','Wannop Chaisit','nara1234','OP','Sous Chef','kitchen.icon@naracuisine.com',112,NULL),(74,'',NULL,'RM ISS','RM ISS','nara1234','OP','RM','rm.iss@naracuisine.com',124,'4'),(75,'102201094','100208002','สุชาดา พุ่มเกิด','Suchada Poomkeld','nara1234','OP','Service Attendant','service.iss@naracuisine.com',124,NULL),(76,'102501106','100208002','พิมพ์วิภา แสนอู','Phimwipa Saen-au','nara1234','OP','Cashier','cashier.iss@naracuisine.com',124,NULL),(77,'','','สีสุพัน ผุยมะนีวัน','Sisouphanh Phouymanivanh','nara1234','OP','Bar Staff','bar.iss@naracuisine.com',124,NULL),(78,'102201161','100208002','ชัชสรัญ สุเทียม','Chatsaran Suthiam','nara1234','OP','Demi Chef','kitchen.iss@naracuisine.com',124,NULL),(79,'100501109','101808522','กิตติพัทธิ์  กันทะกะ','Kittipatch  Kuntaka','nara1234','OP','RM','rm.bbnb@naracuisine.com',123,'4'),(80,'102301235','101808522','ปาณิศษา ยุบลชู','Panitsa Yubonchoo','nara1234','OP','Supervisor','service.bbnb@naracuisine.com',123,NULL),(81,'102201096','101808522','ขวัญดาว ประดับวัน','Khuandaw Pardabwan','nara1234','OP','Captain Cashier','cashier.bbnb@naracuisine.com',123,NULL),(82,'102501096','101808522','พิรพร ทบร้อย','Piraporn   Tobroy','nara1234','OP','Branch','bar.bbnb@naracuisine.com',123,NULL),(83,'102301335','101808522','มัณทนา สีแสง','Mantana Seesaeng','nara1234','OP','Commis II','kitchen.bbnb@naracuisine.com',123,NULL),(84,'102201015','202101002','วัชรพล แดงด้วง','Watcharaphon  Daengduag','nara1234','OP','RM','rm.amo@naracuisine.com',119,'4'),(85,'101703191','202101002','กันทิมา ธนะบริหาร','Kantima Thanaborrihan','nara1234','OP','Captain Cashier','service.amo@naracuisine.com',119,NULL),(86,'102201125','202101002','กัญญารัตน์ จิตรวิบูลย์','Kanyarat  Jitviboon','nara1234','OP','Cashier','cashier.amo@naracuisine.com',119,NULL),(87,'102201176','202101002','จิรยุทธ  แก้วสาขา','Jirayut  kaewsakha','nara1234','OP','Bar Staff','bar.amo@naracuisine.com',119,NULL),(88,'102201025','202101002','อภินันท์ สุขอรุณ','aphinan sukarun','nara1234','OP','Commis II','kitchen.omo@naracuisine.com',119,NULL),(89,'100101028','100101028','วุฒิภัทร สุรินทร์','wuttiphat surin','nara1234','OP','Area Service Manager','wuttiphat.s@naracuisine.com',888,'1'),(90,'202201029','100101028','วิมลรัตน์ ศรีทัศน์','Wimolrat srithat','nara1234','OP','RM','wimolrat.sr@naracuisine.com',203,'4'),(91,'202011062','100101028','อนัญญา สมภักดี','Ananya Sompakdee','nara1234','OP','Captain','service.coctw@naracuisine.com',203,NULL),(92,'202301017','100101028','พรพรรณ ไชยมงคล','Pornphan Chaimomgkol','nara1234','OP','Cashier','cashier.coctw@naracuisine.com',203,NULL),(93,'202101029','100101028','พิพัฒน์ วงษ์จริต','Pipat Wongjarit','nara1234','OP','Bar Staff','bar.coctw@naracuisine.com',203,NULL),(94,'202201022','100101028','อาภรณ์ สุดทำ','Arporn Suttum','nara1234','OP','Demi CDP','kitchen.coctw@naracuisine.com',203,NULL),(95,'202301041','100101028','วรัญญา เพ็งนวม ','Waranya Phengnuam','nara1234','OP','RM','waranya.ph@naracuisine.com',201,'4'),(96,'202006057','100101028','นิพนธ์  ประกอบศรี','Nipon Prakobsri','nara1234','OP','Ass.RM','service.cols@naracuisine.com',201,'4'),(97,'202301072','100101028','จุฑามาศ  นางาม','Juthamat Na-ngam','nara1234','OP','Cashier','cashier.cols@naracuisine.com',201,NULL),(98,'202003051','100101028','นรวีร์  ไตรดวงเงิน','Norawee Traiduang-ngen','nara1234','OP','Bar Supervisor','bar.cols@naracuisine.com',201,NULL),(99,'202401043','100101028','เอกพันธ์  กุดแถลง','Eakkapan Kudtalang','nara1234','OP','Sous Chef','kitchen.cols@naracuisine.com',201,NULL),(100,'202301084','100101028','เมทินี  ศรีรักษ์','Matinee Srirak','nara1234','OP','RM','matinee.coems@naracuisine.com',204,'4'),(101,'202201018','100101028','นิสา สำเร็จผล','Nisa Samreatphol','nara1234','OP','Ass.RM','service.coems@naracuisine.com',204,'4'),(102,'202001039','100101028','วาสนา อำมะเหียะ','Wadsana Amahia','nara1234','OP','Cashier','cashier.coems@naracuisine.com',204,NULL),(103,'201912031','100101028','สมชาย ลือนันต๊ะ','Somchi Luenanta','nara1234','OP','Captain Bar','bar.coems@naracuisine.com',204,NULL),(104,'202401033','100101028','วิชุดา เยรัมย์','Wichuda Yearam','nara1234','OP','Demi Chef','kitchen.coems@naracuisine.com',204,NULL),(105,'101601089','101601089','มานา  แก้วแท้','Manar Kaewtae','nara1234','OP','Group Executive Chef','manar@naracuisine.com',666,'3'),(107,'100806024','100806024','วัชระ  อินทรมณฑล','Watchara Intaramonton','nara1234','OP','Area Head Chef','watchara@naracuisine.com',666,'3'),(108,'101405020','101405020','นิวัติ  พับวังกล่ำ','Niwat  Pinbwangkam','nara1234','OP','Area Head Chef','niwat@naracuisine.com',666,'3'),(109,'102301138','102301138','ชัชทวี แสงมลฑา','Chatthawee Sangmontha','nara1234','OP','Area Head Chef','chatthawee.s@naracuisine.com',666,'3'),(110,'202501013','202501013','ศุภกร กิตติอนุกุล','Supakorn Kittianukul','nara1234','OP','Area Head Chef','supakorn.k@naracuisine.com',666,'3'),(112,'102201018','102201018','ชัยวัฒน์ เปลี่ยนศิลาทอง','Chaiwat Pliansilathong','nara1234','OP','Ass Bar','chaiwat.p@naracuisine.com',555,'2'),(113,'123456789','123456789','John Doe','John Doe','nara1234','OP','International FS Manager','johndoe@naracuisine.com',999,'4'),(117,'101412039','101412039','Dessert and Bar Checklist','Dessert and Bar Checklist','nara1234','OP','Dessert and Bar Checklist','nara-dessertkitchen@naracuisine.com',555,'2');
/*!40000 ALTER TABLE `tbl_user_naragroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usergroup`
--

DROP TABLE IF EXISTS `tbl_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usergroup` (
  `f_group_id` int NOT NULL AUTO_INCREMENT,
  `f_group_code` int NOT NULL,
  `f_group_detail_th` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `f_group_detail_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`f_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usergroup`
--

LOCK TABLES `tbl_usergroup` WRITE;
/*!40000 ALTER TABLE `tbl_usergroup` DISABLE KEYS */;
INSERT INTO `tbl_usergroup` VALUES (1,1000,'แอเรีย เซอร์วิซ','Area Service'),(2,1001,'แอเรีย คิทเช่น','Area Kitchen'),(3,1002,'เฮด ออฟ เดสเสริท','Head of Dessert'),(4,1003,'เฮด ออฟ เบฟเวอร์เรจ','Head of Beverage'),(5,1004,'เซอร์วิซ','Service'),(6,1005,'คิทเช่น','Kitchen'),(7,1006,'เดสเสริท','Dessert'),(8,1007,'เบฟเวอร์เรจ','Beverage');
/*!40000 ALTER TABLE `tbl_usergroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-28 13:38:00
