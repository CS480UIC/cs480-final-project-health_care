Glossary

Entity Name: Bill

Synonyms: Receipt, Invoice
Description: A bill is the final statement of balance that a patient has to pay before getting discharged. 
There can be one or more than one bill recieved by one patient. It is generated based on the treatment that the patient has received in the hospital.
One bill can have one or more payments paid in installments by a patient.

Entity Name: Payment

Synonyms: Remittance, Settlement
Description: A payment is what the patient pays in order to settle the balance for the treatment received at the hospital.
There can be zero or more than one payments by a single patient.
One or more bills can be recieved by one patient

Entity Name: doctor

Synonyms: clinician, medico
Description: A doctor is a human entity that maintains and restore the health of patients through the practice of medicine and
prescribing them the prescriptions necessary.
There can be one or more doctors treating one or more patients at a given instant of time for multiple diagnosed medical conditions.
One doctor can prescribe one prescription for a single patient.
There can be one or many doctors that belongs to one department.

Entity Name: patient

Synonyms: victim, sufferer
Description: A patient is a human entity that seeks treatment from doctor in order to cure the medical condition suffered. A patient 
has insurance that can be used to make payments for the bill owed. A patient can be alloted the room in which the medical treatment 
will be provided untill cured.
There can be one or more patients treated by one or more doctors for multiple health conditions at a given instant.
One patient can recieve one or more bills.
One patient can make zero or more payments.

Entity Name: Prescription 

Synonyms: remedy, drugs, prescript
Description: Prescription is prescribed by the doctor when a patient needs medications to cure themselves. 
There can be only one prescription generated for one patient because it depends on the medications that a person needs based on his/her sickness. 

Entity Name: Department

Synonyms: division, sector, wing
Description: Department is the different type of departments that a hospital has like ER department, ICU department, etc.. for different types of treatments that are provided to the patient based on their medical conditions. 
One department has one or more than one doctor that belongs to that department. 

Entity Name: Insurance

Synonyms: Coverage, Policy

Description: The health insurance ID card serves as confirmation of coverage. When you go to the doctor, hospital, or other provider, you utilize it. Health Insurance card
can assist one in planning healthcare costs and receiving the required treatment. The patient presents their insurance card to the doctor or hospital, and the bill/claim is 
first submitted to the insurance company so that they may cover their portion of the cost. The patient's name must be on the insurance card. There has to be one insurance for
every patient.

Entity Name: Room

Synonyms: ER room, Ward

Description: Depending on the sort of care required, the patient is admitted to a ward or an emergency room. Before a room is assigned, the patient is diagnosed by the nurse
and doctor, and then a decision is taken as to whether the patient needs to be admitted and what sort of room is required. Every patient can have zero or one room and every
room can have zero or one patient.

