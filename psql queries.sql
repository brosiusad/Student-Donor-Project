SELECT 
	trip_attendance_id, 
	student.lastname, 
	student_id, 
	(SELECT sum(amount) total FROM donation group by trip_attendance_id) 
FROM 
	tripattendance, 
	student, 
	donation
WHERE 
	tripattendance.student_id = student.id AND
	donation.trip_attendance_id = tripattendance.id
