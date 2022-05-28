create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Swapnil','Pawar','hadapsar','pune',
'MH','412307','8657169656','amol9.ag@gmail.com' ),('Priya','Jadhav','MJroad','nasik','MH','478569','8657169686','priya@gmail.com')
,('Rohit','Ghotale','mudged','Latur','MH','415896','8674521452','rohit@gmail.com');
select *from addressBook;

update addressBook set phone = '9021473464' where firstname = 'Swapnil';

delete from addressBook where firstname = 'Priya';

select *from addressBook where city = 'Pune';

select count(*) from addressBook where state = 'MH';

select *from addressBook where state = 'MH' order by firstname;

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1' where firstname = 'Swapnil';
update addressBook set bookname='Book2' where firstname = 'Rohit';
update addressBook set bookname='Book3' where firstname = 'Priya';
update addressBook set booktype='Family' where firstname = 'Swapnil';
update addressBook set booktype='Friends' where firstname = 'Priya';
update addressBook set booktype='Profession' where firstname = 'Rohit';


select booktype, count(*) from addressBook group by booktype;