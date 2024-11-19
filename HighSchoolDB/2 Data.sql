use HighSchoolDB
go

delete Students
go
INSERT INTO Students (FirstName, LastName, Address, City, State, ZipCode, Grade, Class, FavoriteSubject, TuitionReceived)
VALUES 
('Rivka', 'Cohen', '7 Carmen Lane', 'Spring Valley', 'NY', '10977', 10, 'B', 'Math', 6000),
('Chani', 'Lift', '126 Lorn Street', 'Monsey', 'NY', '10952', 12, 'A', 'Science', 15000),
('Sara', 'Drick', '78 Stone Court', 'Chesnut Ridge', 'NY', '10977', 12, 'C', 'Math', 12000),
('Faigy', 'Spur', '8945 Tons Road', 'Monsey', 'NY', '10952', 11, 'B', 'Grammar', 15000),
('Ahuva', 'Lift', '9 Port Drive', 'Riverdale', 'NY', '10471', 12, 'A', 'Science', 4000),
('Adina', 'Drick', '78 Stone Court', 'Chesnut Ridge', 'NY', '10977', 10, 'C', 'Spelling', 10000),
('Kaila', 'Spur', '8945 Tons Road', 'Monsey', 'NY', '10952', 9, 'B', 'Math', 15000),
('Esther', 'Levy', '691 Thorn Lane', 'Pomona', 'NY', '10901', 11, 'A', 'Spelling', 8000),
('Chaya', 'Kranz', '70 Forest Lane', 'Spring Valley', 'NY', '10977', 9, 'B', 'Grammar', 13000),
('Sara', 'Rust', '45 River Drive', 'Chesnut Ridge', 'NY', '10977', 10, 'C', 'Science', 9000);
