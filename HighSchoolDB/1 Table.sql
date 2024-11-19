use HighSchoolDB
go 


-- Create Students Table
drop table if exists Students
go
    create table dbo.Students (
        StudentsId int not null identity primary key,
        FirstName varchar(50) not null constraint ck_Students_FirstName_cannot_be_blank check(FirstName > ''),
        LastName  varchar(50) not null constraint ck_Students_LastName_cannot_be_blank check(LastName > ''),
        Address varchar(100) not null constraint ck_Students_Address_cannot_be_blank check(Address > ''),
        City varchar(50) not null constraint ck_Students_City_cannot_be_blank check(City > ''),
        State varchar(50) not null constraint ck_Students_State_cannot_be_blank check(State > ''),
        ZipCode char(5) not null constraint ck_Students_Zipcode_must_be_5_numbers check(ZipCode like replicate('[0-9]',5)),
        Grade tinyint not null constraint ck_Students_Grade_must_be_between_9_and_12 check(grade between 9 and 12),
        Class char(1) not null constraint ck_Students_Class_must_be_AB_or_C check(Class in ('A','B','C')),
        FavoriteSubject varchar(50) not null constraint ck_Students_FavoriteSubject_cannot_be_blank check(FavoriteSubject > ''),
        TuitionReceived int not null constraint ck_Students_TuitionReceived_cannot_be_negative_or_above_15000 check(TuitionReceived between 0 and 15000),
        constraint u_Students_FirstName_LastName_must_be_unique unique(FirstName,LastName)
    );
