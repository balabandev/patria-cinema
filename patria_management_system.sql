-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: patria_management_system
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_11_02_150630_create_movies_table',1),(5,'2025_11_02_151015_create_showtimes_table',1),(6,'2025_11_06_175953_add_poster_to_movies_table',2),(7,'2025_11_07_062355_add_image_to_movies_table',3),(8,'2025_11_08_101211_creat_news_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age_limit` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `premiere_date` date NOT NULL,
  `format` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sound` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `movies_name_unique` (`name`),
  UNIQUE KEY `movies_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Chainsaw Man: The Movie Reze Arc','chainsaw-man-the-movie-reze-arc',NULL,'Action Animation Adventure Fantastic','JA','N 16','1 h 40 min','2025-10-30','2D','SURROUND','Kikunosuke Toya Reina Ueda Fairouz Ai','Tatsuya Yoshihara','Denji transformed into Chainsaw Man — a man with the heart of a devil—and became part of the 4th Special Devil Hunter Unit. After a date with Makima, the woman of his dreams, Denji finds shelter from the rain. There, he meets Reze, a girl who works at a cafe.','movies/chainsaw-man-the-movie-reze-arc.jpg','2025-11-05 08:55:31','2025-11-07 13:56:09'),(2,'A Minecraft Movie','a-minecraft-movie',NULL,'Action Adventure Comedy','EN','PG','1 h 41 min','2025-04-04','3D','SURROUND','Jason Momoa Jack Black Sebastian Hansen Emma Myers','Jared Hess','Four misfits are suddenly pulled through a mysterious portal into a bizarre cubic wonderland that thrives on imagination. To get back home they\'ll have to master this world while embarking on a quest with an unexpected expert crafter.','movies/a-minecraft-movie.jpg','2025-11-05 08:56:32','2025-11-07 13:56:10'),(3,'Final Destination: Bloodlines','final-destination-bloodlines',NULL,'Horror Thriller','EN','R','1 h 35 min','2025-05-16','2D','SURROUND','Kaitlyn Santa Juana Teo Briones Rya Kihlstedt Richard Harmon','Zach Lipovsky Adam B. Stein','Plagued by a recurring violent nightmare, a college student returns home to find the one person who can break the cycle and save her family from the horrific fate that inevitably awaits them.','movies/final-destination-bloodlines.jpg','2025-11-05 08:57:11','2025-11-07 13:56:10'),(4,'Good Boy','good-boy',NULL,'Horror Thriller','EN','R','1 h 12 min','2025-10-03','2D','SURROUND','Indy Shane Jensen Arielle Friedman Larry Fessenden','Ben Leonberg','A loyal dog moves to a rural family home with his owner, only to discover supernatural forces lurking in the shadows. As dark entities threaten his human companion, the brave pup must fight to protect the one he loves most.','movies/good-boy.jpg','2025-11-05 08:58:00','2025-11-07 13:56:10'),(5,'Black Phone 2','black-phone-2',NULL,'Horror','EN','R','1 h 45 min','2025-10-17','2D','SURROUND','Mason Thames Ethan Hawke Madeleine McGraw Jeremy Davies','Scott Derrickson','As Finn, now 17, struggles with life after his captivity, his sister begins receiving calls in her dreams from the black phone and seeing disturbing visions of three boys being stalked at a winter camp known as Alpine Lake.','movies/black-phone-2.jpg','2025-11-05 08:58:21','2025-11-07 13:56:10'),(6,'Ice Fall','ice-fall',NULL,'Thriller','EN','R','1 h 28 min','2025-10-31','2D','SURROUND','Bashar Rahal Jaymes Butler Joel Kinnaman Danny Huston','Stefan Ruzowitzky','The story revolves around a young Native American game warden who captures a notorious poacher only to learn that the poacher is aware of the location of a plane carrying millions of dollars that has crashed in a frozen lake.','movies/ice-fall.jpg','2025-11-05 08:58:45','2025-11-07 13:56:10'),(7,'Dracula: A Love Tale','dracula-a-love-tale',NULL,'Fantasy Horror Romance','EN','R','2 h 5 min','2025-07-31','2D','SURROUND','Caleb Landry Jones Christoph Waltz Zoe Bleu Guillaume de Tonquedec','Luc Besson','When a 15th-century prince denounces God after the loss of his wife he inherits an eternal curse: he becomes Dracula. Condemned to wander the centuries, he defies fate and death, guided by a single hope - to be reunited with his lost love.','movies/dracula-a-love-tale.jpg','2025-11-05 08:59:12','2025-11-07 13:56:10'),(8,'Predator: Badlands','predator-badlands',NULL,'Action Adventure Sci-Fi','EN','PG-13','1 h 47 min','2025-11-07','3D','SURROUND','Elle Fanning Dimitrius Schuster-Koloamatangi Reuben de Jong Michael Homick','Dan Trachtenberg','A young Predator outcast from his clan finds an unlikely ally on his journey in search of the ultimate adversary.','movies/predator-badlands.jpg','2025-11-05 08:59:53','2025-11-07 13:56:10'),(9,'Now You See Me: Now You Don\'t','now-you-see-me-now-you-dont',NULL,'Crime Thriller','EN','PG-13','1 h 52 min','2025-11-14','2D','SURROUND','Jesse Eisenberg Woody Harrelson Dave Franco Isla Fisher','Louis Leterrier','A diamond heist reunites retired Horsemen illusionists with new performers Greenblatt, Smith and Sessa as they target dangerous criminals.','movies/now-you-see-me-now-you-dont.jpg','2025-11-05 09:00:37','2025-11-07 13:56:10'),(10,'Zootopia 2','zootopia-2',NULL,'Animation Action Adventure','EN','PG','1 h 48 min','2025-11-26','3D','SURROUND','Ginnifer Goodwin Jason Bateman Ke Huy Quan Fortune Feimster','Byron Howard Jared Bush','Brave rabbit cop Judy Hopps and her friend, the fox Nick Wilde, team up again to crack a new case, the most perilous and intricate of their careers.',NULL,'2025-11-05 09:01:47','2025-11-05 09:01:47'),(11,'Jujutsu Kaisen: Execution','jujutsu-kaisen-execution',NULL,'Animation Action Fantasy','JA','TV-MA','2 h 10 min','2025-11-07','2D','SURROUND','Jun\'ya Enoki Subaru Kimura Yuichi Nakamura Daisuke Namikawa','Shouta Goshozono','A veil abruptly descends over the busy Shibuya area amid the bustling Halloween crowds, trapping countless civilians inside. In the aftermath, ten colonies across Japan are transformed into dens of curses.','movies/jujutsu-kaisen-execution.jpg','2025-11-05 09:03:26','2025-11-07 13:56:10'),(12,'Five Nights at Freddy\'s 2','five-nights-at-freddys-2',NULL,'Horror Mystery Thriller','EN','PG-13','1 h 44 min','2025-12-05','2D','SURROUND','Josh Hutcherson Elizabeth Lail Piper Rubio Matthew Lillard','Emma Tammi','Anyone can survive five nights. This time, there will be no second chances.','movies/five-nights-at-freddys-2.jpg','2025-11-05 09:04:08','2025-11-07 13:56:10'),(13,'Demon Slayer: Kimetsu no Yaiba - The Movie: Infinity Castle','demon-slayer-kimetsu-no-yaiba-the-movie-infinity-castle',NULL,'Animation Action Adventure','JA','TV-MA','2 h 20 min','2025-09-12','2D','SURROUND','Zach Aguilar Saeko Akiho Yohei Azakami Ryan Bartley','Hikaru Kondo Haruo Sotozaki','The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.',NULL,'2025-11-05 09:05:11','2025-11-05 09:05:11'),(14,'F1: The Movie','f1-the-movie',NULL,'Action Drama Sport','EN','PG-13','2 h 15 min','2025-06-27','3D','SURROUND','Brad Pitt Damson Idris Javier Bardem Kerry Condon','Joseph Kosinski','A Formula One driver comes out of retirement to mentor and team up with a younger driver.','movies/f1-the-movie.jpg','2025-11-05 09:05:52','2025-11-07 13:56:10'),(15,'The Long Walk','the-long-walk',NULL,'Horror Sci-Fi Thriller','EN','R','1 h 50 min','2025-09-12','2D','SURROUND','Cooper Hoffman David Jonsson Garrett Wareing Tut Nyuot','Francis Lawrence','A group of teenage boys compete in an annual contest known as \"The Long Walk,\" in which they must maintain a certain walking speed or get shot.','movies/the-long-walk.jpg','2025-11-05 09:06:17','2025-11-07 13:56:10'),(16,'Thunderbolts*','thunderbolts',NULL,'Action Adventure Crime','EN','PG-13','2 h 6 min','2025-05-02','3D','SURROUND','Florence Pugh Sebastian Stan Julia Louis-Dreyfus Lewis Pullman','Jake Schreier','After finding themselves ensnared in a death trap, an unconventional team of antiheroes must go on a dangerous mission that will force them to confront the darkest corners of their pasts.','movies/thunderbolts.jpg','2025-11-05 09:07:09','2025-11-07 13:47:00'),(17,'Sinners','sinners',NULL,'Action Drama Horror','EN','R','2 h 15 min','2025-04-18','2D','SURROUND','Miles Caton Saul Williams Andrene Ward-Hammond Jack O\'Connell','Ryan Coogler','Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.','movies/sinners.jpg','2025-11-05 09:07:50','2025-11-07 13:47:00'),(18,'Frankenstein','frankenstein',NULL,'Drama Fantasy Horror','EN','R','2 h 10 min','2025-11-07','2D','SURROUND','Oscar Isaac Jacob Elordi Christoph Waltz Mia Goth','Guillermo del Toro','A brilliant but egotistical scientist brings a creature to life in a monstrous experiment that ultimately leads to the undoing of both the creator and his tragic creation.','movies/frankenstein.jpg','2025-11-05 09:08:17','2025-11-07 13:47:00'),(19,'Avatar: Fire and Ash','avatar-fire-and-ash',NULL,'Action Adventure Fantasy','EN','PG-13','3 h 12 min','2025-12-19','3D','SURROUND','Zoe Saldana Edie Falco Kate Winslet Sigourney Weaver','James Cameron','Jake and Neytiri\'s family grapples with grief after Neteyam\'s death, encountering a new, aggressive Na\'vi tribe, the Ash People, who are led by the fiery Varang, as the conflict on Pandora escalates and a new moral focus emerges.','movies/avatar-fire-and-ash.jpg','2025-11-05 09:09:11','2025-11-07 13:56:10'),(20,'Bugonia','bugonia',NULL,'Comedy Crime Sci-Fi','EN','R','1 h 58 min','2025-10-31','2D','SURROUND','Jesse Plemons Aidan Delbos Emma Stone J. Carmen Galindez Barrera','Yorgos Lanthimos','Two conspiracy-obsessed young men kidnap the high-powered CEO of a major company, convinced that she is an alien intent on destroying planet Earth.','movies/bugonia.jpg','2025-11-05 09:09:45','2025-11-07 13:47:00');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Time to switch to the \"Patria Time\" loyalty program!','From January 1, 2024, partner card discounts will no longer be valid in Mirage Cinema theaters. Instead, every visitor can use the \"Mirage Time\" loyalty program to earn discounts on movies and popcorn!','2024-12-28',NULL,NULL),(3,'Student Discount — 50% Off on Weekdays','Show your student ID and get 50% off any session from Monday to Thursday until 5:00 PM. Promotion valid until the end of the semester!','2025-01-15',NULL,NULL),(5,'Special Offer: Movie + Popcorn = 300 Lei','Only in March: any movie ticket + large popcorn and cola for just 300 lei. Hurry — limited offer!','2025-03-01',NULL,NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showtimes`
--

DROP TABLE IF EXISTS `showtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showtimes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `hall` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `movie_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `showtimes_movie_id_foreign` (`movie_id`),
  CONSTRAINT `showtimes_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showtimes`
--

LOCK TABLES `showtimes` WRITE;
/*!40000 ALTER TABLE `showtimes` DISABLE KEYS */;
INSERT INTO `showtimes` VALUES (1,'2025-11-05','18:00:00','Hall 1 (2D)',150.00,1,'2025-11-05 09:38:56','2025-11-05 09:38:56'),(2,'2025-11-06','15:30:00','Hall 3 (2D)',140.00,1,'2025-11-05 09:38:56','2025-11-05 09:38:56'),(3,'2025-11-07','20:15:00','Hall 1 (2D)',160.00,1,'2025-11-05 09:38:56','2025-11-05 09:38:56'),(4,'2025-11-08','14:00:00','Hall 2 (2D)',150.00,1,'2025-11-05 09:38:56','2025-11-05 09:38:56'),(5,'2025-11-05','16:00:00','Hall 2 (3D)',170.00,2,'2025-11-05 09:39:48','2025-11-05 09:39:48'),(6,'2025-11-06','13:00:00','Hall 4 (3D)',200.00,2,'2025-11-05 09:39:48','2025-11-05 09:39:48'),(7,'2025-11-07','17:30:00','Hall 2 (3D)',170.00,2,'2025-11-05 09:39:48','2025-11-05 09:39:48'),(8,'2025-11-09','11:00:00','Hall 1 (3D)',150.00,2,'2025-11-05 09:39:48','2025-11-05 09:39:48'),(9,'2025-11-05','21:00:00','Hall 3 (2D)',160.00,3,'2025-11-05 09:40:45','2025-11-05 09:40:45'),(10,'2025-11-06','19:45:00','Hall 1 (2D)',150.00,3,'2025-11-05 09:40:45','2025-11-05 09:40:45'),(11,'2025-11-07','22:00:00','Hall 3 (2D)',160.00,3,'2025-11-05 09:40:45','2025-11-05 09:40:45'),(12,'2025-11-08','20:30:00','Hall 2 (2D)',150.00,3,'2025-11-05 09:40:45','2025-11-05 09:40:45'),(13,'2025-11-05','19:00:00','Hall 4 (IMAX 3D)',190.00,4,'2025-11-05 09:42:03','2025-11-05 09:42:03'),(14,'2025-11-06','17:00:00','Hall 2 (3D)',170.00,4,'2025-11-05 09:42:03','2025-11-05 09:42:03'),(15,'2025-11-07','18:30:00','Hall 4 (IMAX 3D)',190.00,4,'2025-11-05 09:42:03','2025-11-05 09:42:03'),(16,'2025-11-09','16:00:00','Hall 2 (3D)',170.00,4,'2025-11-05 09:42:03','2025-11-05 09:42:03'),(17,'2025-11-05','22:30:00','Hall 3 (2D)',160.00,5,'2025-11-05 09:42:26','2025-11-05 09:42:26'),(18,'2025-11-06','20:00:00','Hall 1 (2D)',150.00,5,'2025-11-05 09:42:26','2025-11-05 09:42:26'),(19,'2025-11-07','23:00:00','Hall 3 (2D)',170.00,5,'2025-11-05 09:42:26','2025-11-05 09:42:26'),(20,'2025-11-08','21:15:00','Hall 2 (2D)',150.00,5,'2025-11-05 09:42:26','2025-11-05 09:42:26'),(21,'2025-11-05','20:45:00','Hall 1 (2D)',150.00,6,'2025-11-05 09:42:52','2025-11-05 09:42:52'),(22,'2025-11-06','22:15:00','Hall 3 (2D)',160.00,6,'2025-11-05 09:42:52','2025-11-05 09:42:52'),(23,'2025-11-07','19:30:00','Hall 1 (2D)',150.00,6,'2025-11-05 09:42:52','2025-11-05 09:42:52'),(24,'2025-11-08','21:00:00','Hall 2 (2D)',150.00,6,'2025-11-05 09:42:52','2025-11-05 09:42:52'),(25,'2025-11-05','18:30:00','Hall 4 (IMAX 3D)',200.00,7,'2025-11-05 09:43:13','2025-11-05 09:43:13'),(26,'2025-11-06','16:45:00','Hall 2 (3D)',170.00,7,'2025-11-05 09:43:13','2025-11-05 09:43:13'),(27,'2025-11-07','20:00:00','Hall 4 (IMAX 3D)',200.00,7,'2025-11-05 09:43:13','2025-11-05 09:43:13'),(28,'2025-11-09','17:15:00','Hall 2 (3D)',170.00,7,'2025-11-05 09:43:13','2025-11-05 09:43:13'),(29,'2025-11-05','17:00:00','Hall 1 (2D)',150.00,8,'2025-11-05 09:44:44','2025-11-05 09:44:44'),(30,'2025-11-06','14:30:00','Hall 3 (2D)',140.00,8,'2025-11-05 09:44:44','2025-11-05 09:44:44'),(31,'2025-11-07','19:00:00','Hall 1 (2D)',160.00,8,'2025-11-05 09:44:44','2025-11-05 09:44:44'),(32,'2025-11-08','15:45:00','Hall 2 (2D)',150.00,8,'2025-11-05 09:44:44','2025-11-05 09:44:44'),(33,'2025-11-05','21:30:00','Hall 3 (2D)',160.00,9,'2025-11-05 09:45:03','2025-11-05 09:45:03'),(34,'2025-11-06','19:00:00','Hall 1 (2D)',150.00,9,'2025-11-05 09:45:03','2025-11-05 09:45:03'),(35,'2025-11-07','22:15:00','Hall 3 (2D)',160.00,9,'2025-11-05 09:45:03','2025-11-05 09:45:03'),(36,'2025-11-08','20:00:00','Hall 2 (2D)',150.00,9,'2025-11-05 09:45:03','2025-11-05 09:45:03'),(37,'2025-11-05','20:00:00','Hall 4 (IMAX 3D)',200.00,10,'2025-11-05 09:45:23','2025-11-05 09:45:23'),(38,'2025-11-06','18:00:00','Hall 2 (3D)',170.00,10,'2025-11-05 09:45:23','2025-11-05 09:45:23'),(39,'2025-11-07','21:30:00','Hall 4 (IMAX 3D)',200.00,10,'2025-11-05 09:45:23','2025-11-05 09:45:23'),(40,'2025-11-08','19:15:00','Hall 2 (3D)',170.00,10,'2025-11-05 09:45:23','2025-11-05 09:45:23'),(41,'2025-11-05','19:15:00','Hall 1 (2D)',150.00,11,'2025-11-05 09:45:33','2025-11-05 09:45:33'),(42,'2025-11-06','16:00:00','Hall 3 (2D)',140.00,11,'2025-11-05 09:45:33','2025-11-05 09:45:33'),(43,'2025-11-07','21:00:00','Hall 1 (2D)',160.00,11,'2025-11-05 09:45:33','2025-11-05 09:45:33'),(44,'2025-11-08','17:30:00','Hall 2 (2D)',150.00,11,'2025-11-05 09:45:33','2025-11-05 09:45:33'),(45,'2025-11-05','21:15:00','Hall 3 (2D)',160.00,12,'2025-11-05 09:46:05','2025-11-05 09:46:05'),(46,'2025-11-06','20:00:00','Hall 1 (2D)',150.00,12,'2025-11-05 09:46:05','2025-11-05 09:46:05'),(47,'2025-11-07','22:30:00','Hall 3 (2D)',160.00,12,'2025-11-05 09:46:05','2025-11-05 09:46:05'),(48,'2025-11-08','19:45:00','Hall 2 (2D)',150.00,12,'2025-11-05 09:46:05','2025-11-05 09:46:05'),(49,'2025-11-05','22:00:00','Hall 3 (2D)',160.00,13,'2025-11-05 09:46:30','2025-11-05 09:46:30'),(50,'2025-11-06','21:30:00','Hall 1 (2D)',150.00,13,'2025-11-05 09:46:30','2025-11-05 09:46:30'),(51,'2025-11-07','23:15:00','Hall 3 (2D)',170.00,13,'2025-11-05 09:46:30','2025-11-05 09:46:30'),(52,'2025-11-08','20:15:00','Hall 2 (2D)',150.00,13,'2025-11-05 09:46:30','2025-11-05 09:46:30'),(53,'2025-11-05','19:30:00','Hall 1 (2D)',150.00,14,'2025-11-05 09:46:48','2025-11-05 09:46:48'),(54,'2025-11-06','18:45:00','Hall 3 (2D)',150.00,14,'2025-11-05 09:46:48','2025-11-05 09:46:48'),(55,'2025-11-07','20:45:00','Hall 1 (2D)',160.00,14,'2025-11-05 09:46:48','2025-11-05 09:46:48'),(56,'2025-11-08','19:00:00','Hall 2 (2D)',150.00,14,'2025-11-05 09:46:48','2025-11-05 09:46:48'),(57,'2025-11-14','17:00:00','Hall 1 (2D)',150.00,15,'2025-11-05 09:47:17','2025-11-05 09:47:17'),(58,'2025-11-15','15:30:00','Hall 3 (2D)',140.00,15,'2025-11-05 09:47:17','2025-11-05 09:47:17'),(59,'2025-11-16','19:15:00','Hall 1 (2D)',160.00,15,'2025-11-05 09:47:17','2025-11-05 09:47:17'),(60,'2025-11-17','16:45:00','Hall 2 (2D)',150.00,15,'2025-11-05 09:47:17','2025-11-05 09:47:17'),(61,'2025-11-26','14:00:00','Hall 2 (3D)',170.00,16,'2025-11-05 09:47:54','2025-11-05 09:47:54'),(62,'2025-11-27','12:30:00','Hall 4 (IMAX 3D)',200.00,16,'2025-11-05 09:47:54','2025-11-05 09:47:54'),(63,'2025-11-28','16:00:00','Hall 2 (3D)',170.00,16,'2025-11-05 09:47:54','2025-11-05 09:47:54'),(64,'2025-11-29','13:15:00','Hall 1 (3D)',150.00,16,'2025-11-05 09:47:54','2025-11-05 09:47:54'),(65,'2025-12-05','21:00:00','Hall 3 (2D)',160.00,17,'2025-11-05 09:48:09','2025-11-05 09:48:09'),(66,'2025-12-06','20:30:00','Hall 1 (2D)',150.00,17,'2025-11-05 09:48:09','2025-11-05 09:48:09'),(67,'2025-12-07','22:45:00','Hall 3 (2D)',160.00,17,'2025-11-05 09:48:09','2025-11-05 09:48:09'),(68,'2025-12-08','19:30:00','Hall 2 (2D)',150.00,17,'2025-11-05 09:48:09','2025-11-05 09:48:09'),(69,'2025-11-17','20:00:00','Hall 1 (2D)',150.00,18,'2025-11-05 09:48:41','2025-11-05 09:48:41'),(70,'2025-11-18','18:45:00','Hall 3 (2D)',150.00,18,'2025-11-05 09:48:41','2025-11-05 09:48:41'),(71,'2025-11-19','21:30:00','Hall 1 (2D)',160.00,18,'2025-11-05 09:48:41','2025-11-05 09:48:41'),(72,'2025-11-20','19:15:00','Hall 2 (2D)',150.00,18,'2025-11-05 09:48:41','2025-11-05 09:48:41'),(73,'2025-12-19','18:00:00','Hall 4 (IMAX 3D)',200.00,19,'2025-11-05 09:49:10','2025-11-05 09:49:10'),(74,'2025-12-20','16:30:00','Hall 2 (3D)',170.00,19,'2025-11-05 09:49:10','2025-11-05 09:49:10'),(75,'2025-12-21','20:15:00','Hall 4 (IMAX 3D)',200.00,19,'2025-11-05 09:49:10','2025-11-05 09:49:10'),(76,'2025-12-22','17:00:00','Hall 2 (3D)',170.00,19,'2025-11-05 09:49:10','2025-11-05 09:49:10'),(77,'2025-11-07','17:30:00','Hall 1 (2D)',150.00,20,'2025-11-05 09:49:35','2025-11-05 09:49:35'),(78,'2025-11-08','15:00:00','Hall 3 (2D)',140.00,20,'2025-11-05 09:49:35','2025-11-05 09:49:35'),(79,'2025-11-09','19:45:00','Hall 1 (2D)',160.00,20,'2025-11-05 09:49:35','2025-11-05 09:49:35'),(80,'2025-11-10','16:15:00','Hall 2 (2D)',150.00,20,'2025-11-05 09:49:35','2025-11-05 09:49:35');
/*!40000 ALTER TABLE `showtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-11 17:19:28
