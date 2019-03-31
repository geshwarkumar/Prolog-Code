/*STUDENT DETAILS
-GESHWAR KUMAR
-19/01/2017*/

DOMAINS
	Rno,Age,Month,Room_No = integer
	Sname,Cname,City = symbol
PREDICATES
	nondeterm student(Rno,Sname,Age,City)
	nondeterm courses(Cname,Sname)
	nondeterm course_sch(Cname,Month,Room_No)
	nondeterm stud_course(Rno,Sname,Age,City,Cname)
	nondeterm stud_timetable(Rno,Sname,Cname,Month,Room_No)
	
	nondeterm city(City)
	nondeterm name(Rno,Sname)
CLAUSES
	student(101,"Joy",20,"Durg").
	student(102,"Maya",23,"Raipur").
	
	courses("MCA","Joy").
	courses("MCA","Maya").
	
	course_sch("MCA",6,12).
	
	stud_course(101,"Joy",20,"Durg","MCA").
	stud_course(102,"Maya",22,"Raipur","MCA").
	
	stud_timetable(101,"Joy","MCA",6,12).
	stud_timetable(102,"Maya","MCA",6,12).
	
	city("Raipur").
	
	name(X) :- 	city(X);
			student(_,_,_,X).
	
GOAL
	%FOR ROLL NO AND NAME OF ALL STUDENT
	%student(A,B,_,_),
	%FOR ROLL NO AND NAME OF ALL STUDENT FROM DURG OR RAIPUR
	name(C,D).
	%FOR ROLL NO AND NAME OF ALL STUDENT FROM RAIPUR AND WHO ARE LESSTHEN 20 YEAR