CREATE INDEX bill_Index
ON bill (bill_no, bill_amount);

CREATE INDEX department_Index
ON department (dept_id);

CREATE INDEX doctor_Index
ON doctor (doctor_id, doctor_name);

CREATE INDEX patient_Index
ON patient (patient_id, patient_name);

CREATE INDEX entity_Index
ON entity1 (username);

CREATE INDEX insurance_Index
ON insurance (policy_num);

CREATE INDEX pd_Index
ON patientdoctor (patient_id);

CREATE INDEX payment_Index
ON payment (payment_no);

CREATE INDEX prescription_Index
ON prescription (prescription_code);

CREATE INDEX room_Index
ON room (room_num);

CREATE INDEX user_Index
ON user (username, password, email);


