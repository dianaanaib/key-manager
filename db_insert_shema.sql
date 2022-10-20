CREATE TABLE `branches`
(
  `id`              INT(11) NOT NULL auto_increment ,
  `street`          VARCHAR(255) NOT NULL ,
  `postcode`        VARCHAR(255) ,
  `city`            VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`id`)
)
engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE `key-locations`
(
  `id`            INT(11) NOT NULL auto_increment ,
  `name`          VARCHAR(255) NOT NULL ,
  `branch`        INT(11) ,
  `locationType`  VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`branch`) REFERENCES branches(`id`),
  fehler//UNIQUE `idx_name_unique` (`name`(255))
)
engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci;
