

create table Employees(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	Surname nvarchar(50),
	Age int,
	Salary int,
	Position nvarchar(100),
)

insert into Employees([Name],Surname,Age,Salary,Position)

values('Farid','Abdullayev',18,1000,'Director')

--select * from Employees

create table Countries(
	Id int primary key identity(1,1),
	[Name] nvarchar(50),
	[EmployeId] int foreign key references Employees(Id)
)

create table Cities(
	Id int primary key identity(1,1),
	[Name] nvarchar(50),
	[CountryId] int foreign key references Countries(Id)
)

select Countries.Name,Cities.Name from Countries
inner join Cities
on Countries.Id = Cities.CountryId

select * from Employees
select * from Countries
select * from Cities




