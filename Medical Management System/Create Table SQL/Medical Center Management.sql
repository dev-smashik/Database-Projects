-- Patients table
CREATE TABLE Patients (
    email VARCHAR(50) PRIMARY KEY,
    password VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(60) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

CREATE TABLE MedicalHistory (
    id INT PRIMARY KEY,
    date DATE NOT NULL,
    conditions VARCHAR(100) NOT NULL,
    surgeries VARCHAR(100) NOT NULL,
    medication VARCHAR(100) NOT NULL,
    patient_email VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_email) REFERENCES Patients (email) ON DELETE CASCADE
);


-- Doctors table
CREATE TABLE Doctors (
    email VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    password VARCHAR(30) NOT NULL
);

-- Appointments table
CREATE TABLE Appointments (
    id INT PRIMARY KEY,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    status VARCHAR(15) NOT NULL
);

-- Patients' attendance at appointments
CREATE TABLE PatientsAttendAppointments (
    patient_email VARCHAR(50) NOT NULL,
    appointment_id INT NOT NULL,
    concerns VARCHAR(40) NOT NULL,
    symptoms VARCHAR(40) NOT NULL,
    PRIMARY KEY (patient_email, appointment_id),
    FOREIGN KEY (patient_email) REFERENCES Patients (email) ON DELETE CASCADE,
    FOREIGN KEY (appointment_id) REFERENCES Appointments (id) ON DELETE CASCADE
);

-- Doctors' schedules
CREATE TABLE DoctorSchedules (
    id INT NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    break_time TIME NOT NULL,
    day VARCHAR(20) NOT NULL,
    PRIMARY KEY (id, day)
);

-- Patients filling out medical history
CREATE TABLE PatientsFillHistory (
    patient_email VARCHAR(50) NOT NULL,
    history_id INT NOT NULL,
    PRIMARY KEY (patient_email, history_id),
    FOREIGN KEY (patient_email) REFERENCES Patients (email) ON DELETE CASCADE,
    FOREIGN KEY (history_id) REFERENCES MedicalHistory (id) ON DELETE CASCADE
);

-- Diagnosis records
CREATE TABLE Diagnoses (
    appointment_id INT NOT NULL,
    doctor_email VARCHAR(50) NOT NULL,
    diagnosis VARCHAR(40) NOT NULL,
    prescription VARCHAR(50) NOT NULL,
    PRIMARY KEY (appointment_id, doctor_email),
    FOREIGN KEY (appointment_id) REFERENCES Appointments (id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_email) REFERENCES Doctors (email) ON DELETE CASCADE
);

-- Doctors viewing patient medical history
CREATE TABLE DoctorsViewHistory (
    history_id INT NOT NULL,
    doctor_email VARCHAR(50) NOT NULL,
    PRIMARY KEY (history_id, doctor_email),
    FOREIGN KEY (history_id) REFERENCES MedicalHistory (id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_email) REFERENCES Doctors (email) ON DELETE CASCADE
);