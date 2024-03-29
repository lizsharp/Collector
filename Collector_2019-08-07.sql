# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.20.20 (MySQL 5.6.44)
# Database: Collector
# Generation Time: 2019-08-08 09:53:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table garden_plants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `garden_plants`;

CREATE TABLE `garden_plants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `plant_name` varchar(255) NOT NULL DEFAULT '',
  `latin_name` varchar(255) NOT NULL,
  `plant_type` enum('Rose','Perennial','Annual','Biennial','Bulb','Shrub','Tree','Vegetable','Herb','Climber','Hedging','Fern','Fruit') NOT NULL DEFAULT 'Rose',
  `position` enum('Full Sun','Shade','Light Shade','Full Sun/Light Shade') NOT NULL DEFAULT 'Full Sun',
  `soil_type` enum('Chalky','Sandy','Clay','Silty','Peaty','Loamy','Any') NOT NULL DEFAULT 'Chalky',
  `colour` varchar(255) DEFAULT NULL,
  `cost` int(10) unsigned NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `garden_plants` WRITE;
/*!40000 ALTER TABLE `garden_plants` DISABLE KEYS */;

INSERT INTO `garden_plants` (`id`, `plant_name`, `latin_name`, `plant_type`, `position`, `soil_type`, `colour`, `cost`, `image`)
VALUES
	(1,'Himalayan Birch','Betula utilis var. jacquemontii','Tree','Full Sun/Light Shade','Any',NULL,3834,NULL),
	(2,'Serviceberry, Robin Hill','Amelanchier x grandiflora','Tree','Full Sun','Clay','',5634,NULL),
	(3,'New Dawn','Rosa \'The New Dawn\'','Rose','Full Sun','Chalky','Pink',1074,NULL),
	(4,'Hornbeam','Carpinus betulus','Hedging','Full Sun','Clay',NULL,7417,NULL),
	(5,'Rosemary','Rosmarinus officinalis','Herb','Full Sun','Any',NULL,1299,NULL),
	(6,'Thyme, Snowdrift','Thymus serpyllum','Herb','Full Sun','Sandy',NULL,200,NULL),
	(7,'Dill','Anethum graveolens','Herb','Full Sun/Light Shade','Peaty',NULL,225,NULL),
	(8,'Pansy','Disambiguation','Annual','Full Sun','Peaty','Black',250,NULL),
	(9,'Cherry, Bird Colarato','Prunus serrulata','Tree','Full Sun','Clay','Bronze/pink',4450,NULL),
	(10,'Honeywort','Cerinthe major','Perennial','Full Sun','Any','Purple',1099,NULL),
	(11,'Wallflower, Bowles\' Mauve','Erysimum linifolium glaucum','Perennial','Full Sun','Clay','Purple',650,NULL),
	(12,'Geranium','Pelargonium','Biennial','Full Sun','Loamy','Coral',550,NULL),
	(13,'Daffodil','Narcissus','Bulb','Full Sun/Light Shade','Any','Yellow',250,NULL),
	(14,'Mexican Orange','Choisya ternate','Shrub','Full Sun','Clay',NULL,2990,NULL),
	(15,'Dwarf French Beans','Phaseolus vulgaris','Vegetable','Full Sun','Any',NULL,299,NULL),
	(16,'Clematis Montana','Clematis Orientalis','Climber','Full Sun','Any','Pink',1999,NULL),
	(17,'Fern, Holly','Cyrtomium falcatum','Fern','Shade','Any','Green',599,NULL),
	(18,'Raspberry','Rubus idaeus','Fruit','Full Sun','Clay',NULL,550,NULL),
	(19,'Apple Tree','Malus domestica','Tree','Full Sun','Clay',NULL,3950,NULL),
	(20,'Honeysuckle','Lonicera','Climber','Full Sun','Any','pink/yellow',0,NULL);

/*!40000 ALTER TABLE `garden_plants` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
