use rentcar;
--
--create table car(
--	carCode varchar(30) not null primary key,
--	carName varchar(30) not null,
--	imgPath varchar(200),
--	price integer not null,
--	rent boolean default false
--);
--
create table `user`(
	id varchar(30) not null primary key,
	userName varchar(30) not null,
	pw varchar(30) not null,
	age integer not null,
	rentCnt integer default 0,
	totalPrice integer default 0
);
--
--insert car(carCode, carName, imgPath, price) values("차 코드", "차 이름", "이미지 경로", "1230");
--insert `user`(userCode, userName, age) values("유저 코드", "유저 이름", 26);
--
--delete from car where carCode="차 코드";
--delete from `user` where userCode="유저 코드";

insert car(carCode, carName, imgPath, price) values("tng-1", "더 뉴 그랜저", "image/theNewGrandure.jpg", "200000");
insert `user`(id, userName, pw, age) values("1234", "조성민", "1234", 26);

Select* from car;
Select* from `user`;

drop table `user`;