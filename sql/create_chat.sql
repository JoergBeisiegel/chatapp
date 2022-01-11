CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_user` varchar(45) DEFAULT NULL,
  `chat_message` varchar(565) DEFAULT NULL,
  `chat_color` varchar(45) DEFAULT NULL,
  `chat_connection_id` varchar(45) DEFAULT NULL,
  `chat_ip` varchar(45) DEFAULT NULL,
  `chat_timestamp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8;
