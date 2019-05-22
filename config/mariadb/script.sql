CREATE USER 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
FLUSH PRIVILEGES;
