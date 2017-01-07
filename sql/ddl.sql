DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';

INSERT INTO exam.user VALUES (NULL, '独孤九剑', 'a', 'admin');
INSERT INTO exam.user VALUES (NULL, '张小凡', 'a', 'user');
INSERT INTO exam.user VALUES (NULL, '云天河', 'a', 'user');
INSERT INTO exam.user VALUES (NULL, '李逍遥', 'a', 'user');
INSERT INTO exam.user VALUES (NULL, '东方不败', 'a', 'user');
INSERT INTO exam.user VALUES (NULL, '令狐冲', 'a', 'user');
#用户工资表
DROP TABLE IF EXISTS exam.salary;
CREATE TABLE exam.salary(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  month VARCHAR(255) COMMENT '工资月份',
  basic DECIMAL(7,2) COMMENT '基本工资',
  allowance DECIMAL(7,2) COMMENT '岗位津贴',
  reward DECIMAL(7,2) COMMENT '月奖金',
  insurance DECIMAL(7,2) COMMENT '养老保险',
  gongJiJin DECIMAL(7,2) COMMENT '住房公积金',
  money DECIMAL(7,2) COMMENT '应发工资',
  userId INT COMMENT 'FK'
)COMMENT '用户工资表';
#外键
ALTER TABLE exam.salary
  ADD CONSTRAINT
  fk_salary_userId
FOREIGN KEY (userId)
REFERENCES exam.user (id);



SELECT *
FROM exam.user;
SELECT *
FROM exam.salary;