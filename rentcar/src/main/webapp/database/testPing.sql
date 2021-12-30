use rentcar;

create table car(
	carCode varchar(30) not null primary key,
	carName varchar(30) not null,
	imgPath varchar(200),
	price integer not null,
	rent boolean default false
);

create table `user`(
	id varchar(30) not null primary key,
	pw varchar(30) not null,
	userName varchar(30) not null,
	age integer not null,
	rentCnt integer default 0,
	totalPrice integer default 0
);

insert car(carCode, carName, imgPath, price) values("tng-1", "더 뉴 그랜저", "image/theNewGrandure.jpg", "200000");
insert car(carCode, carName, imgPath, price) values("tnd-1", "더 뉴 더미1", "image/theNewGrandure.jpg", "130000");
insert car(carCode, carName, imgPath, price) values("tnd-2", "더 뉴 더미2", "image/theNewGrandure.jpg", "240000");
insert car(carCode, carName, imgPath, price) values("tnd-3", "더 뉴 더미3", "image/theNewGrandure.jpg", "290000");
insert car(carCode, carName, imgPath, price) values("tnd-4", "더 뉴 더미4", "image/theNewGrandure.jpg", "310000");
insert car(carCode, carName, imgPath, price) values("tnd-5", "더 뉴 더미5", "image/theNewGrandure.jpg", "400000");
insert car(carCode, carName, imgPath, price, rent) values("tnd-6", "더 뉴 더미6", "image/theNewGrandure.jpg", "500000", true);
insert car(carCode, carName, imgPath, price) values("tnd-7", "더 뉴 더미7", "image/theNewGrandure.jpg", "600000");
insert car(carCode, carName, imgPath, price) values("tnd-8", "더 뉴 더미8", "image/theNewGrandure.jpg", "660000");
insert car(carCode, carName, imgPath, price) values("tnd-9", "더 뉴 더미9", "image/theNewGrandure.jpg", "770000");
insert car(carCode, carName, imgPath, price) values("tnd-10", "더 뉴 더미10", "image/theNewGrandure.jpg", "880000");
insert car(carCode, carName, imgPath, price) values("tnd-11", "더 뉴 더미11", "image/theNewGrandure.jpg", "990000");

insert `user`(id, userName, pw, age) values("1234", "조성민", "1234", 26);
insert `user`(id, pw, userName, age) values("aaaa", "aaaa", "아아아아", 21);

Select* from car;
Select* from `user`;

drop table `user`;
drop table car;