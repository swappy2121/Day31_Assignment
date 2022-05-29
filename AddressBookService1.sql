show databases;
create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(30),lastname varchar(30),address varchar(30),
city varchar(30),state varchar(20),zip varchar(20),phone varchar(30),email varchar(30));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Swapnil','Pawar','hadpsar','pune',
'MH','412307','8600127352','sopi25@gmail.com' ),('Priya','Jadhav','ekamba','Bidar','KR','478569','8657169686','priya@gmail.com')
,('Rohit','Ghotale','mudged','Latur','MH','415896','8674521452','rohit@gmail.com');
select *from addressBook;

update addressBook set zip = 425412,city = 'nandurbar'  where  firstname = 'Swapnil';

delete from addressBook where firstname = 'Priya';

select *from addressBook where city = 'Pune';

select count(*) from addressBook where state = 'MH';

select *from addressBook where state = 'MH' order by firstname;

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1' where firstname = 'Amol';
update addressBook set bookname='Book2' where firstname = 'Priya';
update addressBook set bookname='Book3' where firstname = 'Rohit';
update addressBook set booktype='Family' where firstname = 'Amol';
update addressBook set booktype='Friends' where firstname = 'Priya';
update addressBook set booktype='Profession' where firstname = 'Rohit';


select booktype, count(*) from addressBook group by booktype;
use AddressBookService;
create table addressbookForFriends(firstname varchar(30),lastname varchar(30),address varchar(30),
city varchar(30),state varchar(20),zip varchar(20),phone varchar(30),email varchar(30));
desc addressbookForFriends;
insert into addressbookForFriends (firstname,lastname,address,city,state,zip,phone,email) values ('Rahul','Patil','gandhinagar','nandurbar',
'MH','412307','9867546344','rahul5@gmail.com' ),('Veena','Chavan','harijannagar','Madhya pradesh','MP','478569','8666756422','veenaC23@gmail.com')
,('Rakesh','mali','mahatmanagar','nanded','MH','415896','8674521452','maliR34@gmail.com');
select * from addressbookForFriends;
create table addressbookForFamily(firstname varchar(30),lastname varchar(30),address varchar(30),
city varchar(30),state varchar(20),zip varchar(20),phone varchar(30),email varchar(30));
insert into addressbookForFamily (firstname,lastname,address,city,state,zip,phone,email) values ('Akshay','Pawar','Hastinagar','nandurbar',
'MH','425412','9654657343','AkshayP32@gmail.com' ),('Nirmala','Pawar','Hastinagar','nandurbar','MH','425412','9423912661','NirmalaP@gmail.com')
,('Prafull','Pawar','Gandhinagar','nasik','MH','415896','9456745364','pawarPF@gmail.com');
select * from addressbookForFamily;


