-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-09 06:17:19.394

-- tables
-- Table: College
CREATE TABLE College (
    College_ID int  NOT NULL,
    College_Name varchar(100)  NOT NULL,
    College_Addr varchar(50)  NOT NULL,
    CONSTRAINT College_pk PRIMARY KEY (College_ID)
);

-- Table: Course
CREATE TABLE Course (
    Course_Id int  NOT NULL,
    Course_Name varchar(50)  NOT NULL,
    Course_Description varchar(50)  NOT NULL,
    Student_Student_Id int  NOT NULL,
    CONSTRAINT Course_pk PRIMARY KEY (Course_Id)
);

-- Table: Department
CREATE TABLE Department (
    Department_Id int  NOT NULL,
    Department_Name varchar(50)  NOT NULL,
    HOD varchar(25)  NOT NULL,
    College_College_ID int  NOT NULL,
    Faculty_Faculty_Id varchar(10)  NOT NULL,
    CONSTRAINT Department_pk PRIMARY KEY (Department_Id)
);

-- Table: Faculty
CREATE TABLE Faculty (
    Faculty_Id varchar(10)  NOT NULL,
    Faculty_Name varchar(25)  NOT NULL,
    Number int  NOT NULL,
    Course_Course_Id int  NOT NULL,
    College_College_ID int  NOT NULL,
    CONSTRAINT Faculty_pk PRIMARY KEY (Faculty_Id)
);

-- Table: Student
CREATE TABLE Student (
    Student_Id int  NOT NULL,
    Student_Name varchar(25)  NOT NULL,
    Age int  NOT NULL,
    College_College_ID int  NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (Student_Id)
);

-- foreign keys
-- Reference: Course_Student (table: Course)
ALTER TABLE Course ADD CONSTRAINT Course_Student
    FOREIGN KEY (Student_Student_Id)
    REFERENCES Student (Student_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Department_College (table: Department)
ALTER TABLE Department ADD CONSTRAINT Department_College
    FOREIGN KEY (College_College_ID)
    REFERENCES College (College_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Department_Faculty (table: Department)
ALTER TABLE Department ADD CONSTRAINT Department_Faculty
    FOREIGN KEY (Faculty_Faculty_Id)
    REFERENCES Faculty (Faculty_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Faculty_College (table: Faculty)
ALTER TABLE Faculty ADD CONSTRAINT Faculty_College
    FOREIGN KEY (College_College_ID)
    REFERENCES College (College_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Faculty_Course (table: Faculty)
ALTER TABLE Faculty ADD CONSTRAINT Faculty_Course
    FOREIGN KEY (Course_Course_Id)
    REFERENCES Course (Course_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Student_College (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_College
    FOREIGN KEY (College_College_ID)
    REFERENCES College (College_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

