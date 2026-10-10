CREATE DATABASE GymManagement;
USE GymManagement;

CREATE TABLE Members(MemberID INT PRIMARY KEY, MemberName VARCHAR(50), Gender VARCHAR(10), Age INT, Phone VARCHAR(15));
CREATE TABLE Trainers(TrainerID INT PRIMARY KEY, TrainerName VARCHAR(50), Specialization VARCHAR(50), Phone VARCHAR(15));
CREATE TABLE MembershipPlans(PlanID INT PRIMARY KEY, PlanName VARCHAR(30), DurationMonths INT, Feesl DECIMAL(10,2));
CREATE TABLE Subscription (ID INT PRIMARY KEY, MemberID INT, PlanID INT, StartDate DATE, EndDate DATE);
CREATE TABLE Attendance(AttendanceID INT PRIMARY KEY, MemberID INT, AttendanceDate DATE, Status VARCHAR(10));
CREATE TABLE Payments(PaymentID INT PRIMARY KEY, MemberID INT, Amount DECIMAL(10,2), PaymentDate DATE, PaymentMode VARCHAR(20));
CREATE TABLE Equipment(EquipmentID INT PRIMARY KEY, EquipmentName VARCHAR(50), Quantity INT, ConditionStatus VARCHAR(20));
CREATE TABLE WorkoutPlans(WorkoutID INT PRIMARY KEY, WorkoutName VARCHAR(50), TrainerID INT);
CREATE TABLE MemberWorkout(ID INT PRIMARY KEY, MemberID INT, WorkoutID INT);
CREATE TABLE Feedback(FeedbackID INT PRIMARY KEY, MemberID INT, Rating INT, Comments VARCHAR(100));
INSERT INTO Members VALUES (1,'Arun','Male',21,'9800000001');
INSERT INTO Members VALUES (2,'Kavin','Male',22,'9800000002');
INSERT INTO Members VALUES (3,'Priya','Female',23,'9800000003');
INSERT INTO Members VALUES (4,'Sneha','Female',24,'9800000004');
INSERT INTO Members VALUES (5,'Rahul','Male',25,'9800000005');
INSERT INTO Members VALUES (6,'Divya','Female',26,'9800000006');
INSERT INTO Members VALUES (7,'Vignesh','Male',27,'9800000007');
INSERT INTO Members VALUES (8,'Harini','Female',28,'9800000008');
INSERT INTO Members VALUES (9,'Ajay','Male',29,'9800000009');
INSERT INTO Members VALUES (10,'Keerthi','Female',30,'9800000010');
INSERT INTO Trainers VALUES (1,'Ramesh','Strength','9100000001');
INSERT INTO Trainers VALUES (2,'John','Cardio','9100000002');
INSERT INTO Trainers VALUES (3,'David','CrossFit','9100000003');
INSERT INTO Trainers VALUES (4,'Suresh','Yoga','9100000004');
INSERT INTO Trainers VALUES (5,'Meena','Zumba','9100000005');
INSERT INTO Trainers VALUES (6,'Arvind','HIIT','9100000006');
INSERT INTO Trainers VALUES (7,'Karthik','Nutrition','9100000007');
INSERT INTO Trainers VALUES (8,'Anitha','Pilates','9100000008');
INSERT INTO Trainers VALUES (9,'Joseph','Bodybuilding','9100000009');
INSERT INTO Trainers VALUES (10,'Vijay','Functional','9100000010');
INSERT INTO MembershipPlans VALUES (1,'Basic',1,1000);
INSERT INTO MembershipPlans VALUES (2,'Silver',3,2500);
INSERT INTO MembershipPlans VALUES (3,'Gold',6,4500);
INSERT INTO MembershipPlans VALUES (4,'Platinum',12,8000);
INSERT INTO MembershipPlans VALUES (5,'Student',2,1500);
INSERT INTO MembershipPlans VALUES (6,'Premium',9,6500);
INSERT INTO MembershipPlans VALUES (7,'Weekend',1,800);
INSERT INTO MembershipPlans VALUES (8,'Family',12,14000);
INSERT INTO MembershipPlans VALUES (9,'Couple',6,7000);
INSERT INTO MembershipPlans VALUES (10,'Corporate',12,12000);
INSERT INTO Subscriptions VALUES (1,1,1,'2026-01-01','2026-12-01');
INSERT INTO Subscriptions VALUES (2,2,2,'2026-01-02','2026-12-02');
INSERT INTO Subscriptions VALUES (3,3,3,'2026-01-03','2026-12-03');
INSERT INTO Subscriptions VALUES (4,4,4,'2026-01-04','2026-12-04');
INSERT INTO Subscriptions VALUES (5,5,5,'2026-01-05','2026-12-05');
INSERT INTO Subscriptions VALUES (6,6,6,'2026-01-06','2026-12-06');
INSERT INTO Subscriptions VALUES (7,7,7,'2026-01-07','2026-12-07');
INSERT INTO Subscriptions VALUES (8,8,8,'2026-01-08','2026-12-08');
INSERT INTO Subscriptions VALUES (9,9,9,'2026-01-09','2026-12-09');
INSERT INTO Subscriptions VALUES (10,10,10,'2026-01-10','2026-12-10');
INSERT INTO Attendance VALUES (1,1,'2026-10-01','Present');
INSERT INTO Attendance VALUES (2,2,'2026-10-02','Present');
INSERT INTO Attendance VALUES (3,3,'2026-10-03','Absent');
INSERT INTO Attendance VALUES (4,4,'2026-10-04','Present');
INSERT INTO Attendance VALUES (5,5,'2026-10-05','Present');
INSERT INTO Attendance VALUES (6,6,'2026-10-06','Absent');
INSERT INTO Attendance VALUES (7,7,'2026-10-07','Present');
INSERT INTO Attendance VALUES (8,8,'2026-10-08','Present');
INSERT INTO Attendance VALUES (9,9,'2026-10-09','Absent');
INSERT INTO Attendance VALUES (10,10,'2026-10-10','Present');
INSERT INTO Payments VALUES (1,1,1500,'2026-10-01','UPI');
INSERT INTO Payments VALUES (2,2,2000,'2026-10-02','Cash');
INSERT INTO Payments VALUES (3,3,2500,'2026-10-03','Card');
INSERT INTO Payments VALUES (4,4,3000,'2026-10-04','UPI');
INSERT INTO Payments VALUES (5,5,3500,'2026-10-05','Cash');
INSERT INTO Payments VALUES (6,6,4000,'2026-10-06','Card');
INSERT INTO Payments VALUES (7,7,4500,'2026-10-07','UPI');
INSERT INTO Payments VALUES (8,8,5000,'2026-10-08','Cash');
INSERT INTO Payments VALUES (9,9,5500,'2026-10-09','Card');
INSERT INTO Payments VALUES (10,10,6000,'2026-10-10','UPI');
INSERT INTO Equipment VALUES (1,'Treadmill',3,'Good');
INSERT INTO Equipment VALUES (2,'Bench Press',4,'Good');
INSERT INTO Equipment VALUES (3,'Dumbbells',5,'Good');
INSERT INTO Equipment VALUES (4,'Exercise Bike',6,'Good');
INSERT INTO Equipment VALUES (5,'Rowing Machine',7,'Good');
INSERT INTO Equipment VALUES (6,'Cable Machine',8,'Good');
INSERT INTO Equipment VALUES (7,'Barbell',9,'Good');
INSERT INTO Equipment VALUES (8,'Kettlebell',10,'Good');
INSERT INTO Equipment VALUES (9,'Leg Press',11,'Good');
INSERT INTO Equipment VALUES (10,'Elliptical',12,'Good');
INSERT INTO WorkoutPlans VALUES (1,'Fat Loss',1);
INSERT INTO WorkoutPlans VALUES (2,'Muscle Gain',2);
INSERT INTO WorkoutPlans VALUES (3,'Cardio Blast',3);
INSERT INTO WorkoutPlans VALUES (4,'Strength',4);
INSERT INTO WorkoutPlans VALUES (5,'Yoga Flow',5);
INSERT INTO WorkoutPlans VALUES (6,'HIIT',6);
INSERT INTO WorkoutPlans VALUES (7,'Core',7);
INSERT INTO WorkoutPlans VALUES (8,'Endurance',8);
INSERT INTO WorkoutPlans VALUES (9,'Flexibility',9);
INSERT INTO WorkoutPlans VALUES (10,'Full Body',10);
INSERT INTO MemberWorkout VALUES (1,1,1);
INSERT INTO MemberWorkout VALUES (2,2,2);
INSERT INTO MemberWorkout VALUES (3,3,3);
INSERT INTO MemberWorkout VALUES (4,4,4);
INSERT INTO MemberWorkout VALUES (5,5,5);
INSERT INTO MemberWorkout VALUES (6,6,6);
INSERT INTO MemberWorkout VALUES (7,7,7);
INSERT INTO MemberWorkout VALUES (8,8,8);
INSERT INTO MemberWorkout VALUES (9,9,9);
INSERT INTO MemberWorkout VALUES (10,10,10);
INSERT INTO Feedback VALUES (1,1,2,'Excellent');
INSERT INTO Feedback VALUES (2,2,3,'Very Good');
INSERT INTO Feedback VALUES (3,3,4,'Good');
INSERT INTO Feedback VALUES (4,4,5,'Satisfied');
INSERT INTO Feedback VALUES (5,5,1,'Amazing');
INSERT INTO Feedback VALUES (6,6,2,'Helpful');
INSERT INTO Feedback VALUES (7,7,3,'Well Maintained');
INSERT INTO Feedback VALUES (8,8,4,'Clean Gym');
INSERT INTO Feedback VALUES (9,9,5,'Friendly Trainer');
INSERT INTO Feedback VALUES (10,10,1,'Worth Joining');
select * from members
select * from trainers 
select * from MembershipPlans
select * from  Subscriptions
select * from Attendance 
select * from Payments 
select * from Equipment
select * from WorkoutPlans
select * from MemberWorkout
select * from Feedback

-- members-- 
select * from members
select membername,phone from members
select *  from members where age > 25
select * from members where gender = "female";
select * from members order by membername desc

-- trainers-- 
select * from trainers
select trainername,specialization from trainers
select specialization from trainers where specialization = "yoga"
select * from trainers where trainername like 's%';
select count(*) as total_trainers from trainers group by specialization 


alter table membershipplans
rename column fee to fees;

-- membership plans-- 

select * from membershipplans;
select * from membershipplans where fees > 5000;
select * from membershipplans where durationmonths = 12;
select * from membershipplans order by fees desc limit 1  ;
select * from membershipplans order by fees asc;


-- subscription--
select * from subscriptions; 
select * from subscriptions where startdate > "2026-01-05";
select * from subscriptions where memberid = 5;
select count(*) as total_subscriptions from subscriptions;
select * from subscriptions order by startdate desc;

-- attendance-- 
select * from attendance;
select * from attendance where status = "present";
select * from attendance where status = "absent";
select count(*) as total_present from attendance where status = "present";
select * from attendance where attendancedate > "2026-10-05";

-- payments--
 
SELECT * FROM Payments;
SELECT * FROM Payments where Amount > 3000;
SELECT * FROM Payments WHERE PaymentMode = 'UPI';
SELECT SUM(Amount) AS total_collected FROM Payments;
SELECT * FROM Payments  ORDER BY Amount DESC;

-- equipment-- 

SELECT * FROM Equipment;
SELECT * FROM Equipment WHERE Quantity > 5;
select * from equipment WHERE ConditionStatus = 'Good';
select * from equipment order by quantity desc limit 1;
SELECT SUM(Quantity) AS total_quantity
FROM Equipment;

-- workoutplans-- 

SELECT * FROM WorkoutPlans;
SELECT WorkoutName, TrainerID FROM WorkoutPlans;
SELECT * FROM WorkoutPlans WHERE TrainerID = 5;
SELECT COUNT(*) AS total_workout_plans FROM WorkoutPlans;
SELECT * FROM WorkoutPlans ORDER BY WorkoutName ASC;

-- memberworkout-- 
SELECT * FROM MemberWorkout;
SELECT * FROM MemberWorkout WHERE MemberID = 5;
SELECT * FROM MemberWorkout WHERE WorkoutID = 3;
SELECT COUNT(*) AS total_assignments FROM MemberWorkout;
select m.membername,mw.workoutid from members m join memberworkout mw on m.memberid = mw.memberid; 

-- feedback--
SELECT * FROM Feedback;
SELECT * FROM Feedback WHERE Rating > 3;
SELECT * FROM Feedback WHERE Rating = 5;
SELECT AVG(Rating) AS average_rating FROM Feedback;
SELECT m.MemberName, f.Rating, f.Comments FROM Members m JOIN Feedback f ON m.MemberID = f.MemberID; 
