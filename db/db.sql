drop table losebook;
drop table exceedtime;
drop table manager;
drop table record;
drop table orderreport;
drop table student;
drop table book;

create table losebook
(
   LBNO int primary key,
   StuNO int,
   BookNO int,
   BookName varchar(50)
);

create table exceedtime
(
   StuNO int,
   BookNO int,
   BookName varchar(50),
   DelayTime int,
   primary key(StuNO,BookName)
);

create table manager
(
   mgNo int primary key,
   permitted varchar(50),
   password varchar(50)
);

create table record
(
   BookNO int primary key,
   StuNO int,
   BorrowTime varchar(50),
   ReturnTime varchar(50),
   Borrowed varchar(50),
   Ordered varchar(50)
);

create table orderreport
(
   BookNO int primary key,
   StuName varchar(50),
   Class varchar(50),
   BookName varchar(50),
   StuNO int,
   Author varchar(50)
);


create table student
(
  StuNO int primary key,
  StuName varchar(50),
  StuAge int,
  StuSex varchar(50),
  Class varchar(50),
  Department varchar(50),
  Tel char(11),
  Permitted varchar(50),
  Password varchar(20)
);

create table book
(
   BookNO int primary key,
   BookName varchar(50),
   Author varchar(50),
   Publishment varchar(50),
   ButTime varchar(50),
   Borrowed varchar(50),
   Ordered varchar(50)
);
insert into exceedtime values(10001,10001,'oracle��������',50);
insert into exceedtime values(10002,10002,'���ݿ���Ŀ����',50);
insert into exceedtime values(10003,10001,'oracle��������',50);
insert into exceedtime values(10004,10002,'���ݿ���Ŀ����',50);

insert into manager values(1001,'1','1001');

insert into student values(10001,'��Сʫ',20,'Ů','�����1��','�����ϵ',2592921,'��','number1');
insert into student values(10002,'���',21,'Ů','�����1��','�����ϵ',13730120123,'��','number2');
insert into student values(10003,'����',20,'��','�����1��','�����ϵ',13633654578,'��','number3');
insert into student values(10004,'�ζ�',22,'��','�����1��','�����ϵ',2568975,'��','number4');
insert into student values(10005,'����',21,'Ů','�����1��','�����ϵ',13936968956,'��','number5');
insert into student values(10006,'�ν�',20,'��','�����2��','�����ϵ',1234667,'��','number6');

insert into book values(10001,'oracle��������','������','ˮ��������','2003.1.12','��','��');
insert into book values(10002,'���ݿ���Ŀ����','���˻�','�廪������','2003.3.16','��','��');
insert into book values(10003,'��ѧӢ��','����','���ĳ�����','2007.1.12','��','��');
insert into book values(10004,'����','����','����������','2003.1.12','��','��');
insert into book values(10005,'Ӣ���ȫ','jeans','���ĳ�����','2003.1.12','��','��');
insert into book values(10006,'���������','лϣ��','�߽̳�����','2003.11.04','��','��');
insert into book values(10007,'����Ӣ��','����','�Ļ�������','2003.3.12','��','��');
insert into book values(10008,'��ֵ����','���ĳ�','ʵ��������','2008.1.15','��','��');
insert into book values(10009,'java me','��һ��','�����ʵ������','2004.1.12','��','��');
insert into book values(10010,'˼������','�⿡','ͬ�ô�ѧ������','2003.1.12','��','��');
