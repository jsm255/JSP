use rentcar;

create table car(
	carCode varchar(30) not null primary key,
	carName varchar(30) not null,
	imgPath varchar(200),
	price integer not null,
	stock integer default 4,
	rented integer default 0
);

create table `user`(
	id varchar(30) not null primary key,
	pw varchar(30) not null,
	userName varchar(30) not null,
	age integer not null,
	rentCnt integer default 0,
	totalPrice integer default 0
);

create table board(
	num integer primary key auto_increment,
	title varchar(50) not null,
	content varchar(5000),
	id varchar(30) not null,
	pw varchar(30) not null,
	`view` integer default 0,
	`like` integer default 0,
	`time` datetime not null default current_timestamp
);

insert board(title, content, id, pw) values("그럴 듯한 이름", "그럴 듯한 내용", "aaaa", "aaaa");
insert board(title, content, id, pw) values("안 그럴 듯한 이름", "그럴 듯한 내용", "aaaa", "aaaa");
insert board(title, content, id, pw) values("대충 그럴 듯한 이름", "그럴 듯한 내용", "aaaa", "aaaa");
insert board(title, content, id, pw) values("그냥 그럴 듯한 이름", "그럴 듯한 내용", "aaaa", "aaaa");
insert board(title, content, id, pw) values("전혀 그럴 듯하지 않은 이름", "그럴 듯한 내용", "aaaa", "aaaa");
insert board(title, content, id, pw, `view`, `like`) values("좋은 이름", "좋은 내용", "aaaa", "aaaa", 100, 99);

select* from board where num=2;

insert car(carCode, carName, imgPath, price) values("tng-1", "더 뉴 그랜저", "image/theNewGrandure.jpg", "200000");
insert car(carCode, carName, imgPath, price) values("tnd-1", "더 뉴 더미1", "image/theNewGrandure.jpg", "130000");
insert car(carCode, carName, imgPath, price) values("tnd-2", "더 뉴 더미2", "image/theNewGrandure.jpg", "240000");
insert car(carCode, carName, imgPath, price) values("tnd-3", "더 뉴 더미3", "image/theNewGrandure.jpg", "290000");
insert car(carCode, carName, imgPath, price) values("tnd-4", "더 뉴 더미4", "image/theNewGrandure.jpg", "310000");
insert car(carCode, carName, imgPath, price) values("tnd-5", "더 뉴 더미5", "image/theNewGrandure.jpg", "400000");
insert car(carCode, carName, imgPath, price, stock, rented) values("tnd-6", "더 뉴 더미6", "image/theNewGrandure.jpg", "500000", 0, 3);
insert car(carCode, carName, imgPath, price) values("tnd-7", "더 뉴 더미7", "image/theNewGrandure.jpg", "600000");
insert car(carCode, carName, imgPath, price) values("tnd-8", "더 뉴 더미8", "image/theNewGrandure.jpg", "660000");
insert car(carCode, carName, imgPath, price) values("tnd-9", "더 뉴 더미9", "image/theNewGrandure.jpg", "770000");
insert car(carCode, carName, imgPath, price) values("tnd-10", "더 뉴 더미10", "image/theNewGrandure.jpg", "880000");
insert car(carCode, carName, imgPath, price) values("tnd-11", "더 뉴 더미11", "image/theNewGrandure.jpg", "990000");

insert `user`(id, userName, pw, age) values("1234", "조성민", "1234", 26);
insert `user`(id, pw, userName, age) values("aaaa", "aaaa", "아아아아", 21);

Select* from car;
Select* from `user`;
Select* from board;

drop table `user`;
drop table car;
drop table board;