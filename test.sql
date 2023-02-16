show databases;
use students;
select * from courses;
select * from general;
SELECT courses.faculty, general.fname, general.lname FROM courses JOIN general ON courses.id = general.id;
SELECT courses.number, general.fname, general.gender FROM courses LEFT JOIN general ON courses.id = general.id;
SELECT courses.id, general.fname, general.lname, general.gender, courses.faculty FROM courses RIGHT JOIN general ON courses.id = general.id; 
SELECT fname, lname, gender, id FROM general WHERE age IN(SELECT age FROM general WHERE id>1 AND age>=21);