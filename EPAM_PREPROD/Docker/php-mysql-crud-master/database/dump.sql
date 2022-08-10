CREATE DATABASE php_mysql_crud;

use php_mysql_crud;

CREATE TABLE task(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE task;

CREATE USER 'devuser'@'%' IDENTIFIED BY 'devpass';
GRANT ALL PRIVILEGES ON *.* TO 'devuser'@'%' WITH GRANT OPTION;
