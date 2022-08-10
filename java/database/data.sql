BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO keyword (keyword_id, keyword_description)
VALUES 
(1, 'OOP'),
 (2, 'Object Oriented Programming'),
 (3, 'Sql Injection'),
 (4, 'Dependency Injection');

INSERT INTO topic (topic_id, VideoRef, TextRef, WebRef, topic_type)
VALUES 
		(1, 
		'https://www.youtube.com/watch?v=pTB0EiLXUC8', 
		'Object Oriented programming (OOP) is a programming paradigm that relies on the concept of classes and objects. It is used to structure a software program into simple, reusable pieces of code blueprints (usually called classes), which are used to create individual instances of objects.',
		'https://www.educative.io/blog/object-oriented-programming',
	   'Curriculum'),
		 (2,
	   'https://www.youtube.com/watch?v=uSw0IoSr3Hk',
	   'SQL injection is the placement of malicious code in SQL statements, via web page input.',
	   'https://www.w3schools.com/sql/sql_injection.asp',
	   'Curriculum'),
		(3, 
		'https://www.youtube.com/watch?v=IKD2-MAkXyQ',
	   'dependency injection is a design pattern in which an object or function receives other objects or functions that it depends on.',
	   'https://en.wikipedia.org/wiki/Dependency_injection',
	   'Curriculum');

INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES 
(1, 1),
(2, 1),
(3, 2),
(4, 2);

COMMIT TRANSACTION;
