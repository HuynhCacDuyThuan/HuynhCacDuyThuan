create database DoanCuoiKi
use DoanCuoiKi
create table Users( Usename varchar(30) primary key, Fullnam nvarchar(50), Passwords nvarchar(50), Email nvarchar(50), Admins bit);
create table Shares (ShareId int primary key , Usename varchar(30)  not null REFERENCES Users(Usename) ,VideoId varchar(50) not null REFERENCES Videos (VideoId ) , Emails nvarchar(150) not null, ShareDate date not null);

create table Videos (VideoId varchar(50) primary key , Title  nvarchar(100), Poster nvarchar(150), Viewss int , Descition nvarchar(1500) not null, Active bit)
create table Favorites (FavoriteId int primary key,  Usename varchar(30)  not null REFERENCES Users(Usename), VideoId varchar(50) not null REFERENCES Videos (VideoId ) , LikedDate date not null);
select * from Users where Usename= 'Duy Thuan' and Passwords ='123456ab'