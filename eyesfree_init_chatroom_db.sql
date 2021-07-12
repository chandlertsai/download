-- --------------------------------------------------------
-- 主機:                           10.1.1.187
-- 伺服器版本:                        5.7.29-0ubuntu0.18.04.1 - (Ubuntu)
-- 伺服器作業系統:                      Linux
-- HeidiSQL 版本:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 傾印 eyesfree 的資料庫結構
CREATE DATABASE IF NOT EXISTS `eyesfree` /*!40100 DEFAULT CHARACTER SET latin1 */;
CREATE USER 'eyesfree'@'localhost' IDENTIFIED BY 'eyesfree_admin';
GRANT ALL PRIVILEGES ON eyesfree.* TO 'eyesfree'@'localhost';
FLUSH PRIVILEGES;
USE `eyesfree`;

-- 傾印  資料表 eyesfree.already_alarm 結構
CREATE TABLE IF NOT EXISTS `already_alarm` (
  `alarm_key` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `alarm_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `is_alarmed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`alarm_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 取消選取資料匯出。

-- 傾印  資料表 eyesfree.message 結構
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(200) NOT NULL DEFAULT '0',
  `account_id` varchar(50) NOT NULL DEFAULT '0',
  `message` varchar(500) DEFAULT NULL,
  `filepath` varchar(150) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'message',
  `create_date` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`,`create_date`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;

-- 取消選取資料匯出。

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
