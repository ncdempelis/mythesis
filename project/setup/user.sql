CREATE USER 'sentiment'@'localhost' IDENTIFIED BY 'JohnSnow';GRANT USAGE ON *.* TO 'sentiment'@'localhost' IDENTIFIED BY 'JohnSnow' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;CREATE DATABASE IF NOT EXISTS `sentiment` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;GRANT ALL PRIVILEGES ON `sentiment`.* TO 'sentiment'@'localhost';