create DATABASE School;
use School;
create TABLE student
	(
	   student_id char(20) PRIMARY KEY,
	   student_name varchar(50) NOT NULL
	);
   
create TABLE course
	(
	   course_id char(20) PRIMARY KEY,
	   course_name varchar(50) NOT NULL
	);
create TABLE enroll
	(
	   enroll_id char(20) PRIMARY KEY,
       course_id char(20),
	   student_id char(20) NOT NULL,
	   FOREIGN KEY (course_id) REFERENCES course(course_id) ON DELETE SET NULL,
       FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE
	);
    
    
-- UNION: এটি দুটি টেবিলের ডেটা জোড়া লাগানোর পর সব ডুপ্লিকেট (কমন) 
-- ডেটা স্বয়ংক্রিয়ভাবে রিমুভ করে দেয়। অর্থাৎ, রেজাল্টে প্রতিটি ডেটা শুধু একবারই দেখাবে।

-- UNION ALL: এটি কোনো ডুপ্লিকেট ডেটা বাদ দেয় না। দুই টেবিলে যা ডেটা আছে, তার হুবহু সবটুকু একসাথে জোড়া লাগিয়ে দেখায়।
--  এটি UNION-এর চেয়ে দ্রুত কাজ করে কারণ এটি ডুপ্লিকেট খোঁজার জন্য কোনো ফিল্টারিং করে না।
