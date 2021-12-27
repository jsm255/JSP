-- 로그인 시켜서 핑테스트가 가능함!
-- mysql 그자체임
--create schema 데이터베이스명;
--create table
--insert

--delete from users where code=3;
--delete from users where code=4;

create database loginServer;

use loginServer;

create table users(
	code integer primary key auto_increment,
	id varchar(30) not null,
	pw varchar(30) not null,
	regDate datetime not null default current_timestamp
);

create table board(
	code integer primary key auto_increment,
	title varchar(200),
	content varchar(5000),
	id varchar(30),
	password varchar(30),
	view integer default 0,
	`like` integer default 0,
	`date` datetime not null default current_timestamp
);

-- 더미 메서드로 추가되는 더미들입니다.

--insert users(id, pw) values("aaaa", "aaaa");
--insert users(id, pw) values("bbbb", "bbbb");
--insert users(id, pw) values("cccc", "cccc");
--insert users(id, pw) values("dddd", "dddd");
--insert users(id, pw) values("eeee", "eeee");
--insert users(id, pw) values("ffff", "ffff");
--insert users(id, pw) values("gggg", "gggg");
--insert users(id, pw) values("hhhh", "hhhh");
--insert users(id, pw) values("iiii", "iiii");
--insert users(id, pw) values("jjjj", "jjjj");
--insert users(id, pw) values("kkkk", "kkkk");

--insert board(title, content, id, password) values("그럴 듯한 제목 1", "대충 아이디와 비밀번호가 같다는 내용", "aaaa", "aaaa");
--insert board(title, content, id, password) values("그럴 듯한 제목 2", "대충 아이디와 비밀번호가 같다는 내용", "bbbb", "bbbb");
--insert board(title, content, id, password) values("그럴 듯한 제목 3", "대충 아이디와 비밀번호가 같다는 내용", "cccc", "cccc");
--insert board(title, content, id, password) values("그럴 듯한 제목 4", "대충 아이디와 비밀번호가 같다는 내용", "dddd", "dddd");
--insert board(title, content, id, password) values("그럴 듯한 제목 5", "대충 아이디와 비밀번호가 같다는 내용", "eeee", "eeee");
--insert board(title, content, id, password) values("그럴 듯한 제목 6", "대충 아이디와 비밀번호가 같다는 내용", "ffff", "ffff");
--insert board(title, content, id, password) values("그럴 듯한 제목 7", "대충 아이디와 비밀번호가 같다는 내용", "gggg", "gggg");
--insert board(title, content, id, password) values("그럴 듯한 제목 8", "대충 아이디와 비밀번호가 같다는 내용", "hhhh", "hhhh");
--insert board(title, content, id, password) values("그럴 듯한 제목 9", "대충 아이디와 비밀번호가 같다는 내용", "iiii", "iiii");
--insert board(title, content, id, password) values("그럴 듯한 제목 10", "대충 아이디와 비밀번호가 같다는 내용", "jjjj", "jjjj");
--insert board(title, content, id, password) values("그럴 듯한 제목 11", "대충 아이디와 비밀번호가 같다는 내용", "kkkk", "kkkk");


select* from board