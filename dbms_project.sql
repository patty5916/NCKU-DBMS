-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `buys_from`
--

DROP TABLE IF EXISTS `buys_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buys_from` (
  `ShopID` int NOT NULL,
  `SupplierID` int NOT NULL,
  `IngredientID` int NOT NULL,
  `Date` date NOT NULL,
  `Number` int DEFAULT NULL,
  PRIMARY KEY (`ShopID`,`SupplierID`,`IngredientID`,`Date`),
  KEY `SupplierID_idx` (`SupplierID`),
  KEY `IngredientID_idx` (`IngredientID`),
  CONSTRAINT `buy_ShopID` FOREIGN KEY (`ShopID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IngredientID` FOREIGN KEY (`IngredientID`) REFERENCES `ingredient` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SupplierID` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys_from`
--

LOCK TABLES `buys_from` WRITE;
/*!40000 ALTER TABLE `buys_from` DISABLE KEYS */;
INSERT INTO `buys_from` VALUES (1,1,1,'2022-01-01',8),(1,3,2,'2022-01-01',8),(1,5,5,'2022-01-01',20),(1,5,8,'2022-01-01',20),(1,5,9,'2022-01-01',20),(1,8,10,'2022-01-02',1000),(1,8,11,'2022-01-02',1000),(1,8,12,'2022-01-02',1000),(1,10,14,'2022-01-02',2000),(1,12,3,'2022-01-01',80),(1,12,4,'2022-01-01',80),(1,12,6,'2022-01-01',80),(1,12,13,'2022-01-01',80),(1,15,7,'2022-01-02',100),(2,2,1,'2022-01-01',10),(2,4,2,'2022-01-01',10),(2,6,5,'2022-01-02',90),(2,6,8,'2022-01-03',90),(2,8,10,'2022-01-04',1500),(2,8,11,'2022-01-04',1500),(2,8,12,'2022-01-04',1500),(2,11,14,'2022-01-06',2000),(2,12,3,'2022-01-01',100),(2,12,4,'2022-01-02',90),(2,12,6,'2022-01-02',90),(2,12,9,'2022-01-02',90),(2,12,13,'2022-01-06',100),(2,15,7,'2022-01-05',90),(3,2,1,'2022-01-08',6),(3,4,2,'2022-01-08',6),(3,7,5,'2022-01-08',40),(3,7,8,'2022-01-08',40),(3,9,10,'2022-01-09',1000),(3,9,11,'2022-01-09',1000),(3,9,12,'2022-01-09',1000),(3,10,14,'2022-01-08',1000),(3,12,3,'2022-01-06',40),(3,12,4,'2022-01-06',40),(3,12,6,'2022-01-06',40),(3,12,9,'2022-01-06',40),(3,12,13,'2022-01-06',80),(3,15,7,'2022-01-07',40),(4,1,1,'2022-01-10',8),(4,4,2,'2022-01-10',8),(4,6,5,'2022-01-10',100),(4,6,8,'2022-01-10',100),(4,9,10,'2022-01-12',1200),(4,9,11,'2022-01-12',1200),(4,9,12,'2022-01-12',1200),(4,10,14,'2022-01-11',1200),(4,14,3,'2022-01-11',100),(4,14,4,'2022-01-11',100),(4,14,6,'2022-01-10',100),(4,14,9,'2022-01-11',100),(4,14,13,'2022-01-11',100),(4,15,7,'2022-01-10',100),(5,1,1,'2022-01-03',9),(5,3,2,'2022-01-03',9),(5,7,5,'2022-01-06',100),(5,7,8,'2022-01-06',100),(5,9,10,'2022-01-03',1000),(5,9,11,'2022-01-03',1000),(5,9,12,'2022-01-03',1000),(5,11,14,'2022-01-03',1000),(5,13,3,'2022-01-06',100),(5,13,4,'2022-01-06',100),(5,13,6,'2022-01-06',100),(5,13,9,'2022-01-06',100),(5,13,13,'2022-01-06',150),(5,15,7,'2022-01-06',150),(6,2,1,'2022-01-07',10),(6,3,2,'2022-01-07',10),(6,7,5,'2022-01-07',200),(6,7,8,'2022-01-07',200),(6,8,10,'2022-01-07',1300),(6,8,11,'2022-01-07',1300),(6,8,12,'2022-01-07',1300),(6,11,14,'2022-01-07',1300),(6,13,3,'2022-01-07',200),(6,13,4,'2022-01-07',200),(6,13,6,'2022-01-07',200),(6,13,9,'2022-01-07',200),(6,13,13,'2022-01-07',200),(6,15,7,'2022-01-07',200),(7,1,1,'2022-01-04',15),(7,4,2,'2022-01-04',15),(7,5,5,'2022-01-05',400),(7,5,8,'2022-01-05',400),(7,8,10,'2022-01-03',1800),(7,8,11,'2022-01-03',1800),(7,8,12,'2022-01-03',1800),(7,11,14,'2022-01-03',1800),(7,12,3,'2022-01-03',400),(7,12,4,'2022-01-03',400),(7,12,6,'2022-01-04',400),(7,12,9,'2022-01-04',400),(7,12,13,'2022-01-04',800),(7,15,7,'2022-01-03',400),(8,2,1,'2022-01-12',20),(8,4,2,'2022-01-12',20),(8,6,5,'2022-01-11',300),(8,6,8,'2022-01-11',300),(8,8,10,'2022-01-11',1800),(8,8,11,'2022-01-11',1800),(8,8,12,'2022-01-11',1800),(8,10,14,'2022-01-11',1800),(8,13,3,'2022-01-13',300),(8,13,4,'2022-01-13',300),(8,13,6,'2022-01-13',300),(8,13,9,'2022-01-13',300),(8,14,13,'2022-01-13',500),(8,15,7,'2022-01-05',300),(9,2,1,'2022-01-02',10),(9,3,2,'2022-01-12',10),(9,7,5,'2022-01-10',100),(9,7,8,'2022-01-10',100),(9,8,10,'2022-01-10',1500),(9,8,11,'2022-01-10',1500),(9,8,12,'2022-01-10',1500),(9,11,14,'2022-01-10',1500),(9,13,3,'2022-01-08',100),(9,13,4,'2022-01-08',100),(9,13,6,'2022-01-08',100),(9,13,9,'2022-01-08',100),(9,13,13,'2022-01-08',150),(9,15,7,'2022-01-08',100),(10,1,1,'2022-01-02',12),(10,4,2,'2022-01-02',12),(10,6,5,'2022-01-05',120),(10,6,8,'2022-01-05',120),(10,9,10,'2022-01-04',2000),(10,9,11,'2022-01-04',2000),(10,9,12,'2022-01-04',2000),(10,10,14,'2022-01-04',2000),(10,14,3,'2022-01-03',120),(10,14,4,'2022-01-03',120),(10,14,6,'2022-01-03',120),(10,14,9,'2022-01-03',120),(10,14,13,'2022-01-03',600),(10,15,7,'2022-01-01',120);
/*!40000 ALTER TABLE `buys_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Position` varchar(5) DEFAULT NULL,
  `SuperEID` int DEFAULT NULL,
  `WorkSID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `WorkSID_idx` (`WorkSID`),
  KEY `SuperEID_idx` (`SuperEID`),
  CONSTRAINT `SuperEID` FOREIGN KEY (`SuperEID`) REFERENCES `employee` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `WorkSID` FOREIGN KEY (`WorkSID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'A1','0978654544',35000,'??????',NULL,1),(2,'A2','0932156154',24000,'??????',1,1),(3,'A3','0935642246',22000,'??????',1,1),(4,'A4','0933655655',20000,'??????',1,1),(5,'B1','0988512350',30000,'??????',NULL,2),(6,'B2','0955332481',20000,'??????',5,2),(7,'B3','0957894321',22000,'??????',5,2),(8,'B4','0955413688',25000,'??????',5,2),(9,'C1','0977339481',40000,'??????',NULL,3),(10,'C2','0911424897',23000,'??????',9,3),(11,'C3','0989477856',21000,'??????',9,3),(12,'C4','0962843515',26000,'??????',9,3),(13,'D1','0963252147',36000,'??????',NULL,4),(14,'D2','0932478956',27000,'??????',13,4),(15,'D3','0935646858',21000,'??????',13,4),(16,'D4','0958989858',20000,'??????',13,4),(17,'E1','0921744835',33000,'??????',NULL,5),(18,'E2','0977312548',27000,'??????',17,5),(19,'E3','0975684458',21000,'??????',17,5),(20,'E4','0992355641',20000,'??????',17,5),(21,'F1','0956132231',37000,'??????',NULL,6),(22,'F2','0936774122',25000,'??????',21,6),(23,'F3','0953214786',21000,'??????',21,6),(24,'F4','0933745555',21000,'??????',21,6),(25,'G1','0948464357',33000,'??????',NULL,7),(26,'G2','0955647951',22000,'??????',25,7),(27,'G3','0988774531',21000,'??????',25,7),(28,'G4','0945323264',20000,'??????',25,7),(29,'H1','0996351155',38000,'??????',NULL,8),(30,'H2','0974565213',24000,'??????',29,8),(31,'H3','0982111364',27000,'??????',29,8),(32,'H4','0977466665',25000,'??????',29,8),(33,'I1','0913255644',41000,'??????',NULL,9),(34,'I2','0988462533',29000,'??????',33,9),(35,'I3','0944563287',26000,'??????',33,9),(36,'I4','0915364885',22000,'??????',33,9),(37,'J1','0950165531',44000,'??????',NULL,10),(38,'J2','0987462351',23000,'??????',37,10),(39,'J3','0944658735',27000,'??????',37,10),(40,'J4','0968435168',22000,'??????',37,10);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `er_person`
--

DROP TABLE IF EXISTS `er_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `er_person` (
  `EID` int NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Relationship` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`EID`,`Name`),
  CONSTRAINT `EID` FOREIGN KEY (`EID`) REFERENCES `employee` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `er_person`
--

LOCK TABLES `er_person` WRITE;
/*!40000 ALTER TABLE `er_person` DISABLE KEYS */;
INSERT INTO `er_person` VALUES (1,'a1','0989341152','??????'),(2,'a2','0935123321','??????'),(3,'a3','0967854433','??????'),(4,'a4','0945688952','??????'),(5,'b1','0984657744','??????'),(6,'b2','0935332117','??????'),(7,'b3','0988666535','??????'),(8,'b4','0964759315','??????'),(9,'c1','0966520313','??????'),(10,'c2','0986675313','??????'),(11,'c3','0996353363','??????'),(12,'c4','0988774455','??????'),(13,'d1','0912213345','??????'),(14,'d2','0964825135','??????'),(15,'d3','0945753621','??????'),(16,'d4','0975559427','??????'),(17,'e1','0988612233','??????'),(18,'e2','0957788446','??????'),(19,'e3','0982233141','??????'),(20,'e4','0911585666','??????'),(21,'f1','0921465533','??????'),(22,'f2','0986699433','??????'),(23,'f3','0984775699','??????'),(24,'f4','0931266599','??????'),(25,'g1','0982174443','??????'),(26,'g2','0933625511','??????'),(27,'g3','0938156652','??????'),(28,'g4','0974466595','??????'),(29,'h1','0988323156','??????'),(30,'h2','0968666799','??????'),(31,'h3','0985585282','??????'),(32,'h4','0911424497','??????'),(33,'i1','0964853264','??????'),(34,'i2','0966879995','??????'),(35,'i3','0922131474','??????'),(36,'i4','0925663474','??????'),(37,'j1','0928579941','??????'),(38,'j2','0988252520','??????'),(39,'j3','0943167526','??????'),(40,'j4','0964753111','??????');
/*!40000 ALTER TABLE `er_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'????????????',100),(2,'????????????',100),(3,'??????',200),(4,'??????',300),(5,'???????????????',300),(6,'??????',100),(7,'??????',100),(8,'??????????????????',200),(9,'??????????????????',100),(10,'??????',50),(11,'??????',100),(12,'??????',50),(13,'??????',100),(14,'??????',100);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sells` (
  `ShopID` int NOT NULL,
  `TeaID` int NOT NULL,
  `Date` date NOT NULL,
  `Number` int DEFAULT NULL,
  PRIMARY KEY (`ShopID`,`TeaID`,`Date`),
  KEY `TeaID_idx` (`TeaID`),
  CONSTRAINT `sell_ShopID` FOREIGN KEY (`ShopID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TeaID` FOREIGN KEY (`TeaID`) REFERENCES `tea` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells`
--

LOCK TABLES `sells` WRITE;
/*!40000 ALTER TABLE `sells` DISABLE KEYS */;
INSERT INTO `sells` VALUES (1,1,'2022-01-28',20),(1,2,'2022-01-28',52),(1,3,'2022-01-28',30),(1,4,'2022-01-29',30),(1,5,'2022-01-28',45),(1,6,'2022-01-28',6),(1,6,'2022-01-29',50),(1,9,'2022-01-29',14),(1,10,'2022-01-29',32),(1,11,'2022-01-29',15),(2,1,'2022-02-01',10),(2,2,'2022-01-31',33),(2,3,'2022-01-30',10),(2,3,'2022-01-31',20),(2,4,'2022-01-30',50),(2,5,'2022-01-30',2),(2,5,'2022-01-31',4),(2,8,'2022-02-01',15),(2,10,'2022-01-30',43),(2,12,'2022-01-30',62),(3,1,'2022-02-02',21),(3,2,'2022-02-02',64),(3,3,'2022-02-02',33),(3,4,'2022-02-01',18),(3,5,'2022-02-01',32),(3,6,'2022-02-01',41),(3,6,'2022-02-02',21),(3,7,'2022-02-01',45),(3,9,'2022-02-01',16),(3,10,'2022-02-02',52),(4,2,'2022-02-01',35),(4,2,'2022-02-02',10),(4,3,'2022-01-30',74),(4,4,'2022-02-02',44),(4,5,'2022-01-30',15),(4,6,'2022-01-30',30),(4,7,'2022-02-02',26),(4,8,'2022-02-01',82),(4,9,'2022-02-01',46),(4,11,'2022-01-30',26),(5,1,'2022-02-01',47),(5,2,'2022-02-01',25),(5,3,'2022-02-03',6),(5,4,'2022-02-02',24),(5,5,'2022-02-02',11),(5,6,'2022-02-01',38),(5,7,'2022-02-03',47),(5,8,'2022-02-01',39),(5,8,'2022-02-02',35),(5,9,'2022-02-02',42),(6,2,'2022-02-03',23),(6,3,'2022-02-04',46),(6,4,'2022-02-05',15),(6,5,'2022-02-04',17),(6,6,'2022-02-04',20),(6,6,'2022-02-05',46),(6,7,'2022-02-05',29),(6,8,'2022-02-04',77),(6,12,'2022-02-04',50),(6,12,'2022-02-05',48),(7,1,'2022-02-01',42),(7,2,'2022-02-01',59),(7,3,'2022-01-31',65),(7,3,'2022-02-01',32),(7,4,'2022-01-31',18),(7,4,'2022-02-01',25),(7,5,'2022-01-31',33),(7,6,'2022-01-31',21),(7,9,'2022-01-31',74),(7,9,'2022-02-01',60),(8,2,'2022-01-31',66),(8,3,'2022-01-31',74),(8,4,'2022-01-30',35),(8,4,'2022-02-01',23),(8,5,'2022-01-30',15),(8,6,'2022-01-30',43),(8,9,'2022-01-30',9),(8,10,'2022-01-31',10),(8,10,'2022-02-01',51),(8,11,'2022-01-31',23),(9,1,'2022-02-02',8),(9,3,'2022-02-01',61),(9,3,'2022-02-02',32),(9,4,'2022-02-02',40),(9,4,'2022-02-03',36),(9,5,'2022-02-01',32),(9,6,'2022-02-01',55),(9,7,'2022-02-01',40),(9,8,'2022-02-01',20),(9,11,'2022-02-02',40),(9,12,'2022-02-02',10),(10,1,'2022-02-03',30),(10,3,'2022-02-03',99),(10,4,'2022-02-02',28),(10,5,'2022-02-02',97),(10,6,'2022-02-01',40),(10,6,'2022-02-02',20),(10,7,'2022-02-02',13),(10,8,'2022-02-02',65),(10,12,'2022-02-01',20),(10,12,'2022-02-02',40);
/*!40000 ALTER TABLE `sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `ManageEID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `ManageEID_idx` (`ManageEID`),
  CONSTRAINT `ManageEID` FOREIGN KEY (`ManageEID`) REFERENCES `employee` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'???????????????A','A????????????30???','48653271',1),(2,'???????????????B','B????????????35???','53548796',5),(3,'???????????????C','C????????????4???','45122336',9),(4,'???????????????D','D????????????1???','15997533',13),(5,'???????????????E','E????????????87???','52398746',17),(6,'???????????????F','F????????????976???','25814766',21),(7,'???????????????G','G????????????97???','11445768',25),(8,'???????????????H','H????????????520???','20200520',29),(9,'???????????????I','I????????????53???','54882355',33),(10,'???????????????J','J????????????612???','06121997',37);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'?????????????????????A','X????????????32???','5321468'),(2,'?????????????????????B','Y????????????68???','6459448'),(3,'?????????????????????A','X????????????33???','7322995'),(4,'?????????????????????B','Y????????????666???','6485311'),(5,'???????????????A','X????????????108???','7255914'),(6,'???????????????B','Y????????????83???','8351224'),(7,'???????????????C','Z????????????7???','3112467'),(8,'???????????????A','X????????????9???','1556842'),(9,'???????????????B','Y????????????8???','3324651'),(10,'???????????????A','X????????????85???','7885611'),(11,'???????????????B','Y????????????33???','9364101'),(12,'??????????????????A','X????????????6???','0799543'),(13,'??????????????????B','Y????????????99???','5032001'),(14,'??????????????????C','Z????????????13???','3553644'),(15,'????????????','Z????????????520???','1314520');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea`
--

DROP TABLE IF EXISTS `tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tea` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea`
--

LOCK TABLES `tea` WRITE;
/*!40000 ALTER TABLE `tea` DISABLE KEYS */;
INSERT INTO `tea` VALUES (1,'??????????????????',50),(2,'??????????????????',50),(3,'?????????????????????',60),(4,'?????????????????????',60),(5,'???????????????????????????',60),(6,'???????????????????????????',60),(7,'??????????????????????????????',70),(8,'??????????????????????????????',70),(9,'????????????????????????',60),(10,'????????????????????????',60),(11,'????????????????????????',60),(12,'????????????????????????',60);
/*!40000 ALTER TABLE `tea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08 14:18:54
