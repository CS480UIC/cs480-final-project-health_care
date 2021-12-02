SELECT patient_id FROM bill 
WHERE remaining_balace > 1000;

SELECT patient_id FROM bill
WHERE amount_paid <= 100;

SELECT doctor_name FROM doctor
WHERE doctor_age >= 25;

SELECT patient_name FROM patient
WHERE policy_num = 29;

SELECT Count(*) FROM bill
WHERE bill_amount > 1500;

SELECT COUNT(*) FROM bill
WHERE bill_amount <1000;

SELECT patient_gender, AVG(patient_age)
FROM patient
GROUP BY patient_gender
HAVING AVG(patient_age) > 40;

SELECT AVG(patient_age) FROM patient
WHERE patient_gender = 'male';

SELECT patient.patient_name, patient.payment_no, payment.payment_amount, payment.payment_method
FROM patient INNER JOIN payment
ON patient.patient_id = payment.patient_id;

SELECT doctor.doctor_name, doctor.doctor_age, patient.patient_name, patient_age, patient.patient_gender
FROM doctor LEFT OUTER JOIN patient
ON doctor.doctor_id = patient.doctor_id;

SELECT patient_name, patient_age, patient_gender, bill_no
FROM patient P
WHERE patient_age >
	(SELECT AVG(patient_age)
    FROM patient);

SELECT patient_id, payment_method, payment_amount
FROM payment P
WHERE EXISTS
	(SELECT *
    FROM bill
    WHERE patient_id = P.patient_id
		AND bill_amount > 2000);




