-- MySQL dump 10.13  Distrib 5.1.71, for redhat-linux-gnu (x86_64)
--
-- Host: bioinfo-bd.mpl.ird.fr    Database: talbase
-- ------------------------------------------------------
-- Server version	5.1.67

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EBE2`
--

DROP TABLE IF EXISTS `EBE2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EBE2` (
  `EBE_ID` int(11) NOT NULL DEFAULT '0',
  `TALS_talKEY` varchar(100) NOT NULL,
  `host_gene_Info_GENE_ID` varchar(250) NOT NULL,
  `SCORE` double NOT NULL,
  `DistFromEnd` int(11) NOT NULL,
  `TABLS_start` int(11) DEFAULT NULL,
  `TABLS_stop` int(11) DEFAULT NULL,
  `TALBS_sequence` text NOT NULL,
  `Rank` int(11) NOT NULL,
  `start_EBE` int(11) DEFAULT NULL,
  `stop_EBE` int(11) DEFAULT NULL,
  `nb_snp` int(11) DEFAULT NULL,
  `host_gene_Info_host_host_code` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `EBE50`
--

DROP TABLE IF EXISTS `EBE50`;
/*!50001 DROP VIEW IF EXISTS `EBE50`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `EBE50` (
 `EBE_ID` tinyint NOT NULL,
  `TALS_talKEY` tinyint NOT NULL,
  `host_gene_Info_GENE_ID` tinyint NOT NULL,
  `SCORE` tinyint NOT NULL,
  `DistFromEnd` tinyint NOT NULL,
  `TABLS_start` tinyint NOT NULL,
  `TABLS_stop` tinyint NOT NULL,
  `TALBS_sequence` tinyint NOT NULL,
  `Rank` tinyint NOT NULL,
  `start_EBE` tinyint NOT NULL,
  `stop_EBE` tinyint NOT NULL,
  `nb_snp` tinyint NOT NULL,
  `host_gene_Info_host_host_code` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EBEsInPromoters`
--

DROP TABLE IF EXISTS `EBEsInPromoters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EBEsInPromoters` (
  `EBE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TALS_talKEY` varchar(100) NOT NULL,
  `host_gene_Info_GENE_ID` varchar(250) NOT NULL,
  `SCORE` double NOT NULL,
  `DistFromEnd` int(11) NOT NULL,
  `TABLS_start` int(11) DEFAULT NULL,
  `TABLS_stop` int(11) DEFAULT NULL,
  `TALBS_sequence` text NOT NULL,
  `Rank` int(11) NOT NULL,
  `start_EBE` int(11) DEFAULT NULL,
  `stop_EBE` int(11) DEFAULT NULL,
  `nb_snp` int(11) DEFAULT NULL,
  `host_gene_Info_host_host_code` varchar(45) NOT NULL,
  `EBEstrand` varchar(55) DEFAULT NULL,
  `chromosome` varchar(50) DEFAULT NULL,
  `gene_annotation` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`EBE_ID`,`TALS_talKEY`,`host_gene_Info_GENE_ID`,`host_gene_Info_host_host_code`),
  KEY `fk_EBEsInPromoters_TALS1_idx` (`TALS_talKEY`),
  KEY `fk_EBEsInPromoters_host_gene_Info1_idx` (`host_gene_Info_GENE_ID`,`host_gene_Info_host_host_code`),
  CONSTRAINT `fk_EBEsInPromoters_host_gene_Info1` FOREIGN KEY (`host_gene_Info_GENE_ID`, `host_gene_Info_host_host_code`) REFERENCES `host_gene_Info` (`GENE_ID`, `host_host_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EBEsInPromoters_TALS1` FOREIGN KEY (`TALS_talKEY`) REFERENCES `TALS` (`talKEY`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4380795 DEFAULT CHARSET=latin1 COMMENT='Generated by TALVEZ,Storytaller or TALGetter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GeneExpDiffData`
--

DROP TABLE IF EXISTS `GeneExpDiffData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GeneExpDiffData` (
  `host_gene_Info_GENE_ID` varchar(250) NOT NULL,
  `value1` varchar(45) DEFAULT NULL,
  `value2` varchar(45) DEFAULT NULL,
  `log2_foldchange` varchar(45) DEFAULT NULL,
  `test_stat` varchar(45) DEFAULT NULL,
  `p_value` varchar(45) DEFAULT NULL,
  `rnaseq_condition_exp_code1` varchar(50) NOT NULL,
  `rnaseq_condition_condition_code1` varchar(45) NOT NULL,
  `rnaseq_condition_exp_code2` varchar(50) NOT NULL,
  `rnaseq_condition_condition_code2` varchar(45) NOT NULL,
  PRIMARY KEY (`host_gene_Info_GENE_ID`,`rnaseq_condition_exp_code1`,`rnaseq_condition_condition_code1`,`rnaseq_condition_exp_code2`,`rnaseq_condition_condition_code2`),
  KEY `fk_GeneExpDiffData_host_gene_Info1_idx` (`host_gene_Info_GENE_ID`),
  KEY `fk_GeneExpDiffData_rnaseq_condition1_idx` (`rnaseq_condition_exp_code1`,`rnaseq_condition_condition_code1`),
  KEY `fk_GeneExpDiffData_rnaseq_condition2_idx` (`rnaseq_condition_exp_code2`,`rnaseq_condition_condition_code2`),
  CONSTRAINT `fk_GeneExpDiffData_host_gene_Info1` FOREIGN KEY (`host_gene_Info_GENE_ID`) REFERENCES `host_gene_Info` (`GENE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GeneExpDiffData_rnaseq_condition1` FOREIGN KEY (`rnaseq_condition_exp_code1`, `rnaseq_condition_condition_code1`) REFERENCES `rnaseq_condition` (`exp_code`, `condition_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GeneExpDiffData_rnaseq_condition2` FOREIGN KEY (`rnaseq_condition_exp_code2`, `rnaseq_condition_condition_code2`) REFERENCES `rnaseq_condition` (`exp_code`, `condition_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ortholog_groups`
--

DROP TABLE IF EXISTS `Ortholog_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ortholog_groups` (
  `Group_ortho` varchar(45) NOT NULL,
  `host_gene_Info_GENE_ID` varchar(250) NOT NULL,
  `host_gene_Info_host_host_code` varchar(45) NOT NULL,
  PRIMARY KEY (`host_gene_Info_GENE_ID`,`host_gene_Info_host_host_code`),
  CONSTRAINT `fk_Ortholog_groups_host_gene_Info1` FOREIGN KEY (`host_gene_Info_GENE_ID`, `host_gene_Info_host_host_code`) REFERENCES `host_gene_Info` (`GENE_ID`, `host_host_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Last OrthoMCL step, generated by parsing';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TALS`
--

DROP TABLE IF EXISTS `TALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TALS` (
  `talKEY` varchar(100) NOT NULL,
  `RVDseq` text NOT NULL,
  `database_long_id` varchar(200) DEFAULT NULL,
  `OtherID` varchar(200) DEFAULT NULL,
  `gi` varchar(200) DEFAULT NULL,
  `gb` varchar(200) DEFAULT NULL,
  `public` varchar(50) DEFAULT NULL,
  `comment` text,
  `bacteria_strain_concate` varchar(100) NOT NULL,
  `DisTAL_Group` varchar(25) DEFAULT NULL,
  `seq` text,
  PRIMARY KEY (`talKEY`,`bacteria_strain_concate`),
  KEY `fk_TALS_bacteria1_idx` (`bacteria_strain_concate`),
  CONSTRAINT `fk_TALS_bacteria1` FOREIGN KEY (`bacteria_strain_concate`) REFERENCES `bacteria` (`strain_concate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Manually curated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bacteria`
--

DROP TABLE IF EXISTS `bacteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bacteria` (
  `strain_concate` varchar(100) NOT NULL,
  `Specie` varchar(45) DEFAULT NULL,
  `Strain` varchar(45) DEFAULT NULL,
  `abrev_spc_bacteria` varchar(45) DEFAULT NULL,
  `Origin_country` varchar(50) DEFAULT NULL,
  `Origin_continent` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`strain_concate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='description bacteria where tal can be found';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `host_code` varchar(45) NOT NULL,
  `Specie` text,
  `Cultivar` text,
  `REF` text,
  `Status` text,
  `GEO_Region` text,
  `genus` text,
  `assembly` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`host_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Manually curated\nlist of genome availaible';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `host_bacteria`
--

DROP TABLE IF EXISTS `host_bacteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_bacteria` (
  `strain_concate` varchar(100) NOT NULL,
  `host_code` varchar(45) NOT NULL,
  PRIMARY KEY (`strain_concate`,`host_code`),
  KEY `fk_host_bacteria_host1_idx` (`host_code`),
  KEY `fk_host_bacteria_bacteria1_idx` (`strain_concate`),
  CONSTRAINT `fk_host_bacteria_bacteria1` FOREIGN KEY (`strain_concate`) REFERENCES `bacteria` (`strain_concate`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_host_bacteria_host1` FOREIGN KEY (`host_code`) REFERENCES `host` (`host_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='link bacteria with their host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `host_gene_Info`
--

DROP TABLE IF EXISTS `host_gene_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_gene_Info` (
  `GENE_ID` varchar(250) NOT NULL,
  `chromosome` varchar(45) DEFAULT NULL,
  `strand` varchar(45) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `annotation` text,
  `host_host_code` varchar(45) NOT NULL,
  PRIMARY KEY (`GENE_ID`,`host_host_code`),
  KEY `fk_host_gene_Info_host1_idx` (`host_host_code`),
  CONSTRAINT `fk_host_gene_Info_host1` FOREIGN KEY (`host_host_code`) REFERENCES `host` (`host_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Generated from Gff maybe using TranscriptDb\nusinf gff3';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rnaseq_condition`
--

DROP TABLE IF EXISTS `rnaseq_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rnaseq_condition` (
  `exp_code` varchar(50) NOT NULL,
  `condition_code` varchar(45) NOT NULL,
  `strain` varchar(45) DEFAULT NULL,
  `genome` varchar(45) DEFAULT NULL,
  `control` varchar(45) DEFAULT NULL,
  `bacteria_strain_concate` varchar(45) NOT NULL,
  `host_host_code` varchar(45) NOT NULL,
  PRIMARY KEY (`exp_code`,`condition_code`,`bacteria_strain_concate`,`host_host_code`),
  KEY `fk_condition_bacteria1_idx` (`bacteria_strain_concate`),
  KEY `fk_rnaseq_condition_host1_idx` (`host_host_code`),
  CONSTRAINT `fk_condition_bacteria1` FOREIGN KEY (`bacteria_strain_concate`) REFERENCES `bacteria` (`strain_concate`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_rnaseq_condition_host1` FOREIGN KEY (`host_host_code`) REFERENCES `host` (`host_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_in_ebe`
--

DROP TABLE IF EXISTS `snp_in_ebe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_in_ebe` (
  `EBEsInPromoters_EBE_ID` int(11) NOT NULL,
  `snp_info_id_snp` int(11) NOT NULL,
  PRIMARY KEY (`EBEsInPromoters_EBE_ID`,`snp_info_id_snp`),
  KEY `fk_snp_in_ebe_snp_info1_idx` (`snp_info_id_snp`),
  CONSTRAINT `fk_snp_in_ebe_EBEsInPromoters1` FOREIGN KEY (`EBEsInPromoters_EBE_ID`) REFERENCES `EBEsInPromoters` (`EBE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_snp_in_ebe_snp_info1` FOREIGN KEY (`snp_info_id_snp`) REFERENCES `snp_info` (`id_snp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='snp found in ebe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_info`
--

DROP TABLE IF EXISTS `snp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_info` (
  `id_snp` int(11) NOT NULL AUTO_INCREMENT,
  `chr` varchar(45) DEFAULT NULL,
  `locus` varchar(45) DEFAULT NULL,
  `genus` varchar(45) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `gene` varchar(250) DEFAULT NULL,
  `variation` varchar(250) DEFAULT NULL,
  `dataset_source` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `homozygotes_for_mutation` longtext,
  `heterozygotes_for_mutation` longtext,
  PRIMARY KEY (`id_snp`),
  KEY `fk_Snp_host_gene_Info1` (`gene`),
  CONSTRAINT `fk_Snp_host_gene_Info1` FOREIGN KEY (`gene`) REFERENCES `host_gene_Info` (`GENE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=359275 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tal_distances`
--

DROP TABLE IF EXISTS `tal_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tal_distances` (
  `talKEY_A` varchar(100) DEFAULT NULL,
  `talKEY_B` varchar(100) DEFAULT NULL,
  `distal` varchar(45) DEFAULT NULL,
  `functal` varchar(45) DEFAULT NULL,
  `strain_concate_A` varchar(100) DEFAULT NULL,
  `strain_concate_B` varchar(100) DEFAULT NULL,
  KEY `fk_talA` (`talKEY_A`),
  CONSTRAINT `fk_talA` FOREIGN KEY (`talKEY_A`) REFERENCES `TALS` (`talKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Calculated via new strategies\nquetal and distal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `target`
--

DROP TABLE IF EXISTS `target`;
/*!50001 DROP VIEW IF EXISTS `target`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `target` (
 `EBE_ID` tinyint NOT NULL,
  `TALS_talKEY` tinyint NOT NULL,
  `host_gene_Info_GENE_ID` tinyint NOT NULL,
  `SCORE` tinyint NOT NULL,
  `DistFromEnd` tinyint NOT NULL,
  `TABLS_start` tinyint NOT NULL,
  `TABLS_stop` tinyint NOT NULL,
  `TALBS_sequence` tinyint NOT NULL,
  `Rank` tinyint NOT NULL,
  `start_EBE` tinyint NOT NULL,
  `stop_EBE` tinyint NOT NULL,
  `nb_snp` tinyint NOT NULL,
  `host_gene_Info_host_host_code` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `EBE50`
--

/*!50001 DROP TABLE IF EXISTS `EBE50`*/;
/*!50001 DROP VIEW IF EXISTS `EBE50`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`talbase`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `EBE50` AS select `EBEsInPromoters`.`EBE_ID` AS `EBE_ID`,`EBEsInPromoters`.`TALS_talKEY` AS `TALS_talKEY`,`EBEsInPromoters`.`host_gene_Info_GENE_ID` AS `host_gene_Info_GENE_ID`,`EBEsInPromoters`.`SCORE` AS `SCORE`,`EBEsInPromoters`.`DistFromEnd` AS `DistFromEnd`,`EBEsInPromoters`.`TABLS_start` AS `TABLS_start`,`EBEsInPromoters`.`TABLS_stop` AS `TABLS_stop`,`EBEsInPromoters`.`TALBS_sequence` AS `TALBS_sequence`,`EBEsInPromoters`.`Rank` AS `Rank`,`EBEsInPromoters`.`start_EBE` AS `start_EBE`,`EBEsInPromoters`.`stop_EBE` AS `stop_EBE`,`EBEsInPromoters`.`nb_snp` AS `nb_snp`,`EBEsInPromoters`.`host_gene_Info_host_host_code` AS `host_gene_Info_host_host_code` from `EBEsInPromoters` where (`EBEsInPromoters`.`Rank` < 51) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `target`
--

/*!50001 DROP TABLE IF EXISTS `target`*/;
/*!50001 DROP VIEW IF EXISTS `target`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`talbase`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `target` AS select `EBEsInPromoters`.`EBE_ID` AS `EBE_ID`,`EBEsInPromoters`.`TALS_talKEY` AS `TALS_talKEY`,`EBEsInPromoters`.`host_gene_Info_GENE_ID` AS `host_gene_Info_GENE_ID`,`EBEsInPromoters`.`SCORE` AS `SCORE`,`EBEsInPromoters`.`DistFromEnd` AS `DistFromEnd`,`EBEsInPromoters`.`TABLS_start` AS `TABLS_start`,`EBEsInPromoters`.`TABLS_stop` AS `TABLS_stop`,`EBEsInPromoters`.`TALBS_sequence` AS `TALBS_sequence`,`EBEsInPromoters`.`Rank` AS `Rank`,`EBEsInPromoters`.`start_EBE` AS `start_EBE`,`EBEsInPromoters`.`stop_EBE` AS `stop_EBE`,`EBEsInPromoters`.`nb_snp` AS `nb_snp`,`EBEsInPromoters`.`host_gene_Info_host_host_code` AS `host_gene_Info_host_host_code` from `EBEsInPromoters` where (`EBEsInPromoters`.`Rank` < 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04 23:07:38
