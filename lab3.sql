create table classroom
	(building		varchar(15),
	 room_number		varchar(7),
	 capacity		numeric(4,0),
	 primary key (building, room_number)
	);

create table department
	(dept_name		varchar(20),
	 building		varchar(15),
	 budget		        numeric(12,2) check (budget > 0),
	 primary key (dept_name)
	);

create table course
	(course_id		varchar(8),
	 title			varchar(50),
	 dept_name		varchar(20),
	 credits		numeric(2,0) check (credits > 0),
	 primary key (course_id),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

create table instructor
	(ID			varchar(5),
	 name			varchar(20) not null,
	 dept_name		varchar(20),
	 salary			numeric(8,2) check (salary > 29000),
	 primary key (ID),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

create table section
	(course_id		varchar(8),
         sec_id			varchar(8),
	 semester		varchar(6)
		check (semester in ('Fall', 'Winter', 'Spring', 'Summer')),
	 year			numeric(4,0) check (year > 1701 and year < 2100),
	 building		varchar(15),
	 room_number		varchar(7),
	 time_slot_id		varchar(4),
	 primary key (course_id, sec_id, semester, year),
	 foreign key (course_id) references course (course_id)
		on delete cascade,
	 foreign key (building, room_number) references classroom (building, room_number)
		on delete set null
	);

create table teaches
	(ID			varchar(5),
	 course_id		varchar(8),
	 sec_id			varchar(8),
	 semester		varchar(6),
	 year			numeric(4,0),
	 primary key (ID, course_id, sec_id, semester, year),
	 foreign key (course_id, sec_id, semester, year) references section (course_id, sec_id, semester, year)
		on delete cascade,
	 foreign key (ID) references instructor (ID)
		on delete cascade
	);

create table student
	(ID			varchar(5),
	 name			varchar(20) not null,
	 dept_name		varchar(20),
	 tot_cred		numeric(3,0) check (tot_cred >= 0),
	 primary key (ID),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

create table takes
	(ID			varchar(5),
	 course_id		varchar(8),
	 sec_id			varchar(8),
	 semester		varchar(6),
	 year			numeric(4,0),
	 grade		        varchar(2),
	 primary key (ID, course_id, sec_id, semester, year),
	 foreign key (course_id, sec_id, semester, year) references section (course_id, sec_id, semester, year)
		on delete cascade,
	 foreign key (ID) references student (ID)
		on delete cascade
	);

create table advisor
	(s_ID			varchar(5),
	 i_ID			varchar(5),
	 primary key (s_ID),
	 foreign key (i_ID) references instructor (ID)
		on delete set null,
	 foreign key (s_ID) references student (ID)
		on delete cascade
	);

create table time_slot
	(time_slot_id		varchar(4),
	 day			varchar(1),
	 start_hr		numeric(2) check (start_hr >= 0 and start_hr < 24),
	 start_min		numeric(2) check (start_min >= 0 and start_min < 60),
	 end_hr			numeric(2) check (end_hr >= 0 and end_hr < 24),
	 end_min		numeric(2) check (end_min >= 0 and end_min < 60),
	 primary key (time_slot_id, day, start_hr, start_min)
	);

create table prereq
	(course_id		varchar(8),
	 prereq_id		varchar(8),
	 primary key (course_id, prereq_id),
	 foreign key (course_id) references course (course_id)
		on delete cascade,
	 foreign key (prereq_id) references course (course_id)
	);





--1.a
select *
from course
where credits>3;

--1.b
select *
from classroom
where building='Watson' or building = 'Packard';

--1.c
select *
from course
where dept_name = 'Comp. Sci.';

--1.d
select course_id,semester
from takes
where semester = 'Fall';

--1.e
select *
from student
where tot_cred>45 and tot_cred<90;

--1.f
select name
from student
where name like '%a' or name like '%e' or name like '%i' or name like '%o' or name like '%u';

--1.g
select *
from prereq
where prereq_id like 'CS-101';

-- 2.a
select name, dept_name, avg(salary) as average_salary
from instructor
group by name,dept_name;

--2.b

select foo.building,max(count_course_id)
from (select count(course_id) as count_course_id,building from section group by building) as foo
group by foo.building;

--2c

select dept_name,min(count_course_id)
from (select dept_name,count(course_id) as count_course_id from course group by dept_name) as foo
group by foo.dept_name;

--2.d

select S.id, S.name, T.course_id
from takes T, student S
where S.dept_name = 'Comp. Sci.' and (select count(course_id) from takes)>3
group by S.id, S.name, T.course_id;

-- 2.e
select name , dept_name
from instructor
where dept_name = 'Biology' or dept_name = 'Philosophy' or dept_name = 'Music';

-- 2f

select a.id,b.name,a.year
from teaches a , instructor b
where a.year = 2017 and a.id not in(select a.id
                                 from teaches
                                 where a.year = 2018) ;

--3.a

select id,course_id,grade
from takes
where course_id like '%CS%' and (grade = 'A' or grade = 'A-');

--3.b
select S.id as student_id,S.name as name_of_student , A.s_id as Advisor_id,pgrade
from advisor A,student S,(select grade as pgrade from takes where grade<>'B' and grade<>'A' and grade<>'A-' and grade<>'B+') as grade;

-- 3.c

select distinct(id) ,course_id,grade
from takes
where grade = 'A' or grade = 'B' or grade = 'A+' or grade = 'A-' or grade = 'B+'
or grade = 'B-';

--3.d
select teaches.id,instructor.name, teaches.course_id , takes.course_id, foo.grade
from teaches,(select grade from takes where grade <> 'A') as foo , takes,instructor
where takes.course_id = teaches.course_id and instructor.id = teaches.id
group by  teaches.id, instructor.name, teaches.course_id,takes.course_id, foo.grade;

--3.e

select section.course_id,time_slot.end_hr
from section, time_slot
where section.time_slot_id = time_slot.time_slot_id and end_hr<13;