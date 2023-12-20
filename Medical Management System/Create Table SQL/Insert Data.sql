INSERT INTO Patients (email, password, name, address, gender) VALUES
('21201118@uap-bd.edu', '7C6A180B36896A0A8C02787EEAFB0E4C', 'Sheikh Muhammad Ashik', '62/west agargaon', 'Male'),
('21201111@uap-bd.ed', '6CB75F652A9B52798EB6CF2201057C73', 'Soma Das', 'Green Road, Dhanmondi', 'Female'),
('21201116@uap-bd.ed', '819B0643D6B89DC9B579FDFC9094F28E', 'Tridip Barua Shuvro', '23/east Badda', 'Male');



INSERT INTO MedicalHistory (id, date, conditions, surgeries, medication, patient_email) VALUES
(118, '2023-01-10', 'Allergies', 'None', 'Antihistamine', '21201118@uap-bd.edu'),
(111, '2023-02-15', 'Hypertension', 'None', 'Lisinopril', '21201111@uap-bd.edu'),
(116, '2023-03-20', 'Diabetes', 'None', 'Metformin', '21201116@uap-bd.edu');


INSERT INTO Doctors (email, name, gender, password) VALUES
('shirajulislam@yahoo.com', 'Dr. Shirajul Islam', 'Male', '1E5C2776CF544E213C3D279C40719643'),
('dr.nasimabegum@gmail.com', 'Dr. Nasima Begum', 'Female', 'C24A542F884E144451F9063B79E7994E'),
('dr.kabir@gmail.com', 'Dr. Kabir', 'Male', 'EE684912C7E588D03CCB40F17ED080C9');


INSERT INTO Appointments (id, date, start_time, end_time, status) VALUES
(118, '2023-04-01', '09:00:00', '10:00:00', 'Scheduled'),
(111, '2023-04-02', '10:30:00', '11:30:00', 'Completed'),
(116, '2023-04-03', '14:00:00', '15:00:00', 'Scheduled');


INSERT INTO PatientsAttendAppointments (patient_email, appointment_id, concerns, symptoms) VALUES
('21201118@uap-bd.edu', 118, 'Fever', 'Cough'),
('21201111@uap-bd.edu', 111, 'Headache', 'Fatigue'),
('21201116@uap-bd.edu', 116, 'Nausea', 'Vomiting');


INSERT INTO DoctorSchedules (id, start_time, end_time, break_time, day) VALUES
(118, '08:00:00', '17:00:00', '12:00:00', 'Monday'),
(118, '08:00:00', '17:00:00', '12:00:00', 'Wednesday'),
(116, '09:00:00', '18:00:00', '13:00:00', 'Tuesday');


INSERT INTO PatientsFillHistory (patient_email, history_id) VALUES
('21201118@uap-bd.edu', 118),
('21201111@uap-bd.edu', 111),
('21201116@uap-bd.edu', 116);


INSERT INTO Diagnoses (appointment_id, doctor_email, diagnosis, prescription) VALUES
(118, 'shirajulislam@yahoo.com', 'Common Cold', 'Rest and Hydration'),
(111, 'dr.nasimabegum@gmail.com', 'Migraine', 'Prescribed Pain Relievers'),
(116, 'dr.kabir@gmail.com', 'Food Poisoning', 'Antibiotics');


INSERT INTO DoctorsViewHistory (history_id, doctor_email) VALUES
(118, 'shirajulislam@yahoo.com'),
(111, 'dr.nasimabegum@gmail.com'),
(116, 'dr.kabir@gmail.com');