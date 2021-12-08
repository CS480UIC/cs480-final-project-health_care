Glossary

Entity Name: Bill

Synonyms: Receipt, Invoice
Description: A bill is the final statement of balance that a patient has to pay before getting discharged. 
There can be one or more than one bill recieved by one patient. It is generated based on the treatment that the patient has received in the hospital.
One bill can have one or more payments paid in installments by a patient.

Attribute Type: number
Data Type: CHAR(10)
Description: 'number' is used for attributes with which label information with up to ten characters. 
Characters in codes are alphabetic or numeric. Punctuation is not allowed. Examples are 1010101010, 9999999999, etc.

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: amount
Data Type: INT UNSIGNED
Description: 'amount' is used for attributes with which label information with  positive integer number. Examples are 101, 201, etc.

Entity Name: Payment

Synonyms: Remittance, Settlement
Description: A payment is what the patient pays in order to settle the balance for the treatment received at the hospital.
There can be zero or more than one payments by a single patient.
One or more bills can be recieved by one patient

Attribute Type: number
Data Type: CHAR(10)
Description: 'number' is used for attributes with which label information with up to ten characters. 
Characters in codes are alphabetic or numeric. Punctuation is not allowed. Examples are 1010101010, 9999999999, etc.

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: amount
Data Type: INT UNSIGNED
Description: 'amount' is used for attributes with which label information with  positive integer number. Examples are 101, 201, etc.

Entity Name: doctor

Synonyms: clinician, medico
Description: A doctor is a human entity that maintains and restore the health of patients through the practice of medicine and
prescribing them the prescriptions necessary.
There can be one or more doctors treating one or more patients at a given instant of time for multiple diagnosed medical conditions.
One doctor can prescribe one prescription for a single patient.
There can be one or many doctors that belongs to one department.

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: name
Data Type: VARCHAR(50)
Description: 'name' is used for attributes with which label information with characters upto 50 characters. Examples are sneh, sanket, shail, kathan, etc.

Attribute Type: gender
Data Type: CHAR(1)
Description: 'gender' is used for attributes with which label information with one character. Examples are M, F, etc.

Attribute Type: age
Data Type: SMALLINT UNSIGNED
Description: 'age' is used for attributes with which label information with positive integers. Examples are 11, 45, etc.

Entity Name: patient

Synonyms: victim, sufferer
Description: A patient is a human entity that seeks treatment from doctor in order to cure the medical condition suffered. A patient 
has insurance that can be used to make payments for the bill owed. A patient can be alloted the room in which the medical treatment 
will be provided untill cured.
There can be one or more patients treated by one or more doctors for multiple health conditions at a given instant.
One patient can recieve one or more bills.
One patient can make zero or more payments.

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: number
Data Type: CHAR(10)
Description: 'number' is used for attributes with which label information with up to ten characters. 
Characters in codes are alphabetic or numeric. Punctuation is not allowed. Examples are 1010101010, 9999999999, etc.

Attribute Type: name
Data Type: VARCHAR(50)
Description: 'name' is used for attributes with which label information with characters upto 50 characters. Examples are sneh, sanket, shail, kathan, etc.

Attribute Type: gender
Data Type: CHAR(1)
Description: 'gender' is used for attributes with which label information with one character. Examples are M, F, etc.

Attribute Type: age
Data Type: SMALLINT UNSIGNED
Description: 'age' is used for attributes with which label information with positive integers. Examples are 11, 45, etc.

Entity Name: Prescription 

Synonyms: remedy, drugs, prescript
Description: Prescription is prescribed by the doctor when a patient needs medications to cure themselves. 
There can be only one prescription generated for one patient because it depends on the medications that a person needs based on his/her sickness. 

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: drug
Data Type: VARCHAR(50)
Description: 'drug' is used for attributes with which label information with characters upto 50 characters. Examples are azithromycin, paracetamol etc.

Attribute Type: quantity
Data Type: CHAR(5)
Description: 'quantity' is used for attributes with which label information with up to five characters. 
Characters in codes are alphabetic or numeric. Punctuation is not allowed. Examples are 00011, 00101, etc.

Entity Name: Department

Synonyms: division, sector, wing
Description: Department is the different type of departments that a hospital has like ER department, ICU department, etc.. for different types of treatments that are provided to the patient based on their medical conditions. 
One department has one or more than one doctor that belongs to that department. 

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: name
Data Type: VARCHAR(50)
Description: 'name' is used for attributes with which label information with characters upto 50 characters. Examples are dental, cardiological etc.

Entity Name: Insurance

Synonyms: Coverage, Policy

Description: The health insurance ID card serves as confirmation of coverage. When you go to the doctor, hospital, or other provider, you utilize it. Health Insurance card
can assist one in planning healthcare costs and receiving the required treatment. The patient presents their insurance card to the doctor or hospital, and the bill/claim is 
first submitted to the insurance company so that they may cover their portion of the cost. The patient's name must be on the insurance card. There has to be one insurance for
every patient.

Attribute Type: number
Data Type: CHAR(10)
Description: 'number' is used for attributes with which label information with up to ten characters. 
Characters in codes are alphabetic or numeric. Punctuation is not allowed. Examples are 1010101010, 9999999999, etc.

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: name
Data Type: VARCHAR(50)
Description: 'name' is used for attributes with which label information with characters upto 50 characters. Examples are Blue Cross Blue Shield, CampusCare etc.

Entity Name: Room

Synonyms: ER room, Ward

Description: Depending on the sort of care required, the patient is admitted to a ward or an emergency room. Before a room is assigned, the patient is diagnosed by the nurse
and doctor, and then a decision is taken as to whether the patient needs to be admitted and what sort of room is required. Every patient can have zero or one room and every
room can have zero or one patient.

Attribute Type: number
Data Type: CHAR(3)
Description: 'number' is used for attributes with which label information with up to three characters. 
Characters in codes are alphabetic or numeric. Punctuation is not allowed. Examples are 101, 203, etc.

Attribute Type: ID
Data Type: INT UNSIGNED
Description: 'ID' is used for attributes with which label information with positive integer number. Examples are 101, 201, etc.

Attribute Type: room
Data Type: VARCHAR(50)
Description: 'room' is used for attributes with which label information with characters upto 50 characters. Examples are ICU, Laboratory etc.


Dependent Entities and Dependency Relationships:
1. doctor is dependent on department and patient. Every doctor belongs to a single department and also treats many patients.
2. patient is dependent on doctor. Each patient is treated by a single doctor. 
3. prescription is dependent on doctor and patient. Prescription is prescribed by doctor and prescription is prescribed to patient.
4. room is dependent on patient. Each room is allocated to a patient.
5. insurance is dependent on patient and bill. Each patient has a single insurance and each bill is paid by an insurance of particular patient.
6. bill is dependent on patient. Every bill is received by a single patient.
7. payment is dependent on patient and bill. Every payment is made by a single patient and every payment is made for a bill.
