USE [Data Analysis]
GO

/****** Object:  View [dbo].[hospital_master]    Script Date: 06-07-2026 12:39:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[hospital_master] AS
SELECT 
  p.patient_id,
  p.Name,
  p.Age,
  p.Gender,
  p.Blood_Type,
  a.Medical_Condition,
  a.Doctor,
  a.Hospital,
  a.Admission_Type,
  a.Date_of_Admission,
  a.Room_Number,
  b.Insurance_Provider,
  b.Billing_Amount,
  b.Medication,
  d.Discharge_Date,
  d.Test_Results,
  DATEDIFF(day, a.Date_of_Admission, d.Discharge_Date) AS Length_of_Stay
FROM patients p
JOIN admissions a ON p.patient_id = a.patient_id
JOIN billing b ON p.patient_id = b.patient_id
JOIN discharge d ON p.patient_id = d.patient_id
GO


