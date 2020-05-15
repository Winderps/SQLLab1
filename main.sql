create database UserDb;
GO
use UserDb;
GO

create table [User] (
Id int primary key identity(1,1) not null,
Phone nvarchar(24) not null,
[Address] nvarchar(100) not null,
DOB DATE not null,
EmergencyContact nvarchar(24) not null
);
create table Passport (
Id int primary key identity(1,1) not null,
PassportNumber char(16) not null,
[Address] nvarchar(100) not null,
Expires DATE not null,
Holder int foreign key references [User](Id) not null
);
create table Trip (
Id int primary key identity(1,1) not null,
Budget decimal,
BeginDate DATE not null,
EndDate DATE not null,
TravelMode NVARCHAR(20) not null,
Traveller int foreign key references [User](Id) not null
);
create table Hotel (
Id int primary key identity(1,1) not null,
Price decimal not null,
CheckIn date not null,
CheckOut date not null,
[Address] nvarchar(100),
Phone nvarchar(24),
TripId int foreign key references Trip(Id) NOT NULL
);