-- How to add new table to database sql?
CREATE TABLE IF NOT EXISTS `products` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `category_id` int(11) NOT NULL,
    `price` int(11) NOT NULL DEFAULT 0,
    `deleted_at` timestamp NULL DEFAULT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ENGINE is a software module that a database management system uses to create, read, update data from a database.
-- InnoDB is a storage engine in MySQL.
-- CHARSET is a set of symbols and encodings.
-- utf8mb4 is a utf-8 encoding of the unicode character set using one to four bytes per character.

-- How to add value into database tables sql?
INSERT INTO `products` (
    `id`,
    `category_id`,
    `name`,
    `price`,
    `deleted_at`,
    `created_at`,
    `updated_at`
) VALUES (
    NULL,
    '1',
    'Apple',
    '900',
    NULL,
    CURRENT_TIMESTAMP,
    NULL
);

-- Select all from database table and limit to show sql
SELECT * FROM `products` LIMIT 3;

-- Write query to find amount (total_price) of price sql
SELECT SUM(`price`) as `total_price` FROM `products`;

-- Write query to find amount (total_price) of price by category_id and group by category_id sql
SELECT `category_id`, SUM(`price`) as `total_price` FROM `products` GROUP BY `category_id`;

-- Write query to find highest price sql
SELECT MAX(`price`) AS `highest_price` FROM `products`;

-- How to add new column to database table sql?
ALTER TABLE `products` ADD `product_name` varchar(100) NOT NULL AFTER `category_id`;

-- How to change column name and column dfinition sql?
ALTER TABLE `products` CHANGE `product_name` `name` varchar(56) NULL DEFAULT NULL;

-- How to drop or delete column of database table sql?
ALTER TABLE `products` DROP `name`;

-- How to view the database table sql?
SHOW DATABASES;

-- How to change the database table name sql?
RENAME TABLE `products` to `product`;

-- How to join two database tables sql?
SELECT * FROM `products` INNER JOIN `categories`;

-- How to check USERS in MySQL?
SELECT USER FROM mysql.user;
