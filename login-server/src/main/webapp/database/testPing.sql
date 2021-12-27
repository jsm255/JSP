-- 로그인 시켜서 핑테스트가 가능함!
-- mysql 그자체임
--create schema 데이터베이스명;
--create table
--insert

--delete from users where code=3;
--delete from users where code=4;

use loginServer;

insert users(id, pw) values('aaaa')

insert board(title, content, id, password) values("그럴 듯한 제목 1", "대충 아이디와 비밀번호가 같다는 내용", "aaaa", "aaaa");

select* from board