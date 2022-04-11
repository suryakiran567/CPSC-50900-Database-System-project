insert into College(College_id,College_Name,College_Addr) values(56748,'Easternn','123-RD');
insert into Course(Course_Id,Course_Name,Course_Description,Student_Student_ID)Values('4567','dotgame','gaming tech',123);
update Student set College_College_Id=56748 where Student_Id=789;
update Course set Course_Name='Game' where Course_Id=4567;
delete from Student where Student_Id='123';
select * from College;
select * from Course;
select Student_Name,Course_Name from Student S,Course C where S.Student_Id=C.Student_Student_Id;
select College_Name,Student_Name from College C,Student S where C.College_Id=S.College_College_Id;
select * from Department D,College C,Student S where D.College_College_ID=C.College_Id and S.College_College_Id=D.College_College_Id;
select * from College C,Student S where C.College_Id=S.College_College_Id;


