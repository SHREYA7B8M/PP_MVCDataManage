create database PP_MVCDataManage

use PP_MVCDataManage

create table Student
(StudentId int primary key,
StudentName nvarchar(50) not null,
DOB date
)

create table Subjects
(SubjectId int primary key,
SubjectName nvarchar(50) not null
)

create table Class
(ClassId int primary key,
ClassTeacher nvarchar(50) not null,
SubjectId int
Constraint fk_SubjectId foreign key(SubjectId) references Subjects(SubjectId)
)

insert into Student values(101, 'Ethan Hunt','02/02/2006')
insert into Student values(102, 'Benji Dunn','09/08/2005')

insert into Subjects values(1001,'Physics')
insert into Subjects values(1002,'Chemistry')

insert into Class values(121,'Luther Stickley',1001)
insert into Class values(122,'August Walter',1002)

select * from Student

select * from Subjects

select * from Class

