-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ticketmanagementdb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `workflow_status_ref`
--

DROP TABLE IF EXISTS `workflow_status_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workflow_status_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflowId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `rankOfStatus` int(11) NOT NULL,
  `isArchived` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE_workflow_status_ref` (`id`),
  KEY `workflowId_idx_workflow_status_ref` (`workflowId`),
  KEY `statusId_idx_workflow_status_ref` (`statusId`),
  CONSTRAINT `statusId_workflow_status_ref` FOREIGN KEY (`statusId`) REFERENCES `ticket_status` (`id`),
  CONSTRAINT `workflowId_workflow_status_ref` FOREIGN KEY (`workflowId`) REFERENCES `workflow` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_status_ref`
--

LOCK TABLES `workflow_status_ref` WRITE;
/*!40000 ALTER TABLE `workflow_status_ref` DISABLE KEYS */;
INSERT INTO `workflow_status_ref` VALUES (1,1,1,3,1),(2,1,3,2,1),(3,1,4,1,1),(4,2,1,1,1),(5,2,2,3,1),(6,2,3,2,1),(7,3,1,2,1),(8,3,4,1,1),(76,143,1,1,1),(77,143,3,2,1),(78,143,4,3,1),(79,1,1,1,1),(80,1,2,2,1),(81,1,3,3,1),(82,144,1,1,0),(83,144,4,2,0),(84,145,1,1,0),(85,145,4,2,0),(86,1,1,1,1),(87,1,2,2,1),(88,1,3,3,1),(89,146,1,1,0),(90,146,4,2,0),(91,1,1,1,1),(92,1,2,2,1),(93,1,3,3,1),(94,1,1,1,0),(95,1,2,2,0),(96,1,3,3,0),(97,2,1,1,0),(98,2,2,2,0),(99,2,3,3,0),(100,3,1,1,0),(101,3,2,2,0),(102,3,3,3,0),(103,143,1,1,1),(104,143,2,2,1),(105,143,3,3,1),(106,143,1,1,1),(107,143,2,2,1),(108,143,3,3,1),(109,143,1,1,0),(110,143,2,2,0),(111,143,3,3,0);
/*!40000 ALTER TABLE `workflow_status_ref` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-12 15:37:16
