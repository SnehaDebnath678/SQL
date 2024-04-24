use sjsms;

select * from student as s
inner join studentdetels as sd on s.studentbetelsid - sd.id 
inner join session as se on s.sessionId = se.id
inner Join cwst cw on s.id = cw.studentId 
inner join clas as c on c.id = cw.clasId 
where se.name like '2020-2021' and c.name not like 'class 1';

select * from student as s
inner join studentdetels as sd on s.studentDetelsId = sd.id
inner join session as se on s.sessionId = se.id
inner join cwst cw on s.id = cw.studentId 
where se.name like '2020-2021' and cw.clasId in (select id from clas where name not like '%1' and id != 1);


select * from student as s
inner join studentdetels as sd on s.studentDetelsId = sd.id
inner join session as se on s.sessionId = se.id 
inner join cwst cw on s.id = cw.studentId
inner join clas as c on c.id = cw.clasId 
where se.name like '2020-2021' and not exists (select id, name from clas where name not like '%1' and id != 1 and c.id = id and c.name = name);

select * from student as s
inner Join studentdetels as sd on s.studentDetelsid = sd.id 
inner Join session as se on s.sessionId = se.id 
inner Join cwst cw on s.id = cw.studentId 
inner join clas as c on c.id = cw.clasId 
where se.name like '2020-2021' and (c.id, c.name) in (select id, name from clas where name not like '%1');


select * from student as s
inner Join studentdetels as sd on s.studentDetelsId = sd.id 
inner join session as se on s.sessionId = se.id
inner join cwst cw on s.id = cw.studentId
inner join clas as c on c.id = cw.clasId
where se.name like '2020-2021' and (c.id, c.name) in (select id, name from clas where name like '%1')

union all select * from student as s
inner join studentdetels as sd on s.studentDetelsId = sd.id
inner join session as se on s.sessionId = se.id
inner Join cwst cw on s.id = cw.studentId
inner join clas as c on c.id = cw.clasId
where se.name like '2020-2021' and (c.id, c.name) in (select id, name from clas where name like '%2');