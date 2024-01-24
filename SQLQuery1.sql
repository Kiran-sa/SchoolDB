create database Practiceproject1SchoolDb
use Practiceproject1SchoolDb


create table Classes (
ClassId int primary key ,
ClassName nvarchar(50)
)

create table Subjects (
SubjectId int primary key ,
SubjectName nvarchar(50),
TeacherName nvarchar(50)
)

create table Student(
StudentName nvarchar(50),
StudentRollNo int primary key,
ClassId int foreign key references Classes(ClassId),
SubjectId int foreign key references Subjects(SubjectId)
)

insert into Classes(ClassId,ClassName) values (1,'Class1')
insert into Classes values (2,'Class2')
insert into Classes(ClassId,ClassName) values (3,'Class3')
insert into Classes(ClassId,ClassName) values (4,'Class4')

select * from Classes

insert into Subjects values (4,'Telugu','Kiran')
insert into Subjects values (1,'English','Sai')
insert into Subjects values (3,'Hindi','Nithish')
insert into Subjects(SubjectId,SubjectName,TeacherName) values (5,'Science','Kumar')
insert into Subjects(SubjectId,SubjectName,TeacherName) values (2,'Social','Prasad')

select * from Subjects

insert into Student values ('Batman',100,2,4)
insert into Student values ('Iron man',102,3,1)
insert into Student values ('Black Widow',101,1,3)
insert into Student values ('Thor',104,4,2)
insert into Student values ('Loki',105,3,1)

select * from Student