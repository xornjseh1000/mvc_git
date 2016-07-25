insert into TEST select 'lee','1' from dual union all select 'ckan','2222' from dual;

select * from member; -- list
select * from member where id = 'lee'; -- find By PK
select * from member where name = '이순신'; -- find By Not PK
select count(*) from member; -- count
delete member;

create table member(
	name varchar2(20),
	id varchar2(20) primary key,
	pw varchar2(20),
	reg_date varchar2(20),
	ssn_id varchar2(8),
	email varchar2(30)
	profile_img varchar2(100)
	phone varchar2(15)
);
-- Create
delete member;
insert into member(id,pw,name,reg_date,ssn_id,email,profile_img,phone)
values('hong2','1','홍길동','2016-07-01','800101-1','hong@test.com','hong.jpg','010-1234-5678');
insert into member(id,pw,name,reg_date,ssn_id,email,profile_img,phone)
values('lee','1','이순신','2015-07-01','900101-1','lee@test.com','lee.jpg','010-1234-5678');
insert into member(id,pw,name,reg_date,ssn_id,email,profile_img,phone)
values('you','1','유관순','2014-07-01','010101-4','you@test.com','you.jpg','010-1234-5678');
select *from   member;
update member  set    email = id||'@test.com';where id = 'you';
update member  set    email = 'xornjseh1000@naver.com'where id = 'jun';
update member  set    email = 'xornjseh1000@naver.com';
update member  set    PROFILE_IMG = id||'.jpg';
update member  set    PROFILE_IMG = 'kang.jpg'where id = 'jun';
update member set REG_DATE = '2016-10-14'where id ='zzu';
update member  set phone = '010-4122-2361';

alter table member add  email varchar2(30);
alter table member add  profile_img varchar2(100);
alter table member add  phone varchar2(15);
alter table member modify (phone varchar2(15));
alter table member modify (phone varchar2(15));


delete MEMBER mem
where mem.id = 'park'
;