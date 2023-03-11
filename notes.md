# Diary

### Database
````
DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
`id` int NOT NULL AUTO_INCREMENT,
`name` varchar(255),
`image` varchar(255),
`local_url` varchar(255),
`remote_url` varchar(255),
`description` varchar(1024),
`start_date` datetime,
`status` varchar(255),
PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `technologies` (
`id` int NOT NULL AUTO_INCREMENT,
`name` varchar(255),
PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `projects_technologies` (
`id` int NOT NULL AUTO_INCREMENT,
`project_id` varchar(255),
`technologies_id` varchar(255),
PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
`id` int NOT NULL AUTO_INCREMENT,
`title` varchar(255) NOT NULL,
`description` varchar(1024) NOT NULL,
`create_date` datetime NOT NULL,
PRIMARY KEY (`id`)
);

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `description`, `create_date`) VALUES
(1, 'note one', 'content for note one.', '2023-03-02 20:46:51'),
(2, 'note two', 'content for note two...', '2023-03-02 20:47:21'),
(5, 'new note', 'lol', '2023-03-04 20:57:07'),
(6, 'j', 'j', '2023-03-04 20:57:19'),
(7, 'j', 'j', '2023-03-04 20:57:22');

``

````














### Other dump
CREATE DATABASE IF NOT EXISTS pricelist;

USE pricelist;

CREATE TABLE categories (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
description TEXT
);

CREATE TABLE items (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
price INT(11),
category_id INT(11),
FOREIGN KEY (category_id) REFERENCES categories(id)
);