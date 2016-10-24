CREATE DATABASE my_posts;
CREATE TABLE if NOT EXISTS users(
	id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	pass VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	job VARCHAR(255),
	address VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS posts(
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  content TEXT NOT NULL,
  date_created DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS comments(
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
    post_id INT NOT NULL,
	message TEXT NOT NULL,
	date_created DATETIME NOT NULL
);
INSERT INTO users VALUES(null,"Tunde", "password", "tunde.teacher@yahoo.com", "Teacher", "lagos");
INSERT INTO users VALUES(null,"Deji", "password", "deji.stone@yahoo.com", "Engineer", "Ibadan");
INSERT INTO posts VALUES(null,2, "This is a post", "2016-05-06 12:00:00");
INSERT INTO comments VALUES(null,1, 1, "A nice post","2016-06-08 11:00:00");


