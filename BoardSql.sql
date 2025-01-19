-- 데이터베이스 생성
CREATE DATABASE board_database;

-- 데이터베이스 사용
USE board_database;

-- User 테이블 생성
CREATE TABLE `user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `role` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_unique` (`username`)
);

-- Post 테이블 생성
CREATE TABLE `post` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `content` TEXT NOT NULL,
  `user_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE CASCADE
);

-- Comment 테이블 생성
CREATE TABLE `comment` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `content` TEXT NOT NULL,
  `post_id` BIGINT NOT NULL,
  `user_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`post_id`) REFERENCES `post`(`id`) ON DELETE CASCADE,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE CASCADE
);

-- User 데이터 삽입
INSERT INTO `user` (`username`, `password`, `role`) VALUES
('john_doe', 'password123', 'USER'),
('jane_smith', 'password456', 'USER'),
('admin', 'adminpassword', 'ADMIN');

-- Post 데이터 삽입
INSERT INTO `post` (`title`, `content`, `user_id`) VALUES
('First Post', 'This is the content of the first post.', 1),
('Second Post', 'This is the content of the second post.', 2),
('Third Post', 'This is the content of the third post.', 1);

-- Comment 데이터 삽입
INSERT INTO `comment` (`content`, `post_id`, `user_id`) VALUES
('This is a comment on the first post.', 1, 2),
('Another comment on the first post.', 1, 3),
('Comment on the second post.', 2, 1);

select * from board_database.user