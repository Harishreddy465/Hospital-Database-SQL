/*
Student Name: Harish Reddy Lallapati
Date: 10/28/2022
Assignment: Hospital Database
*/


-- SCREEN 1 SQL Queries

Declare @Patient_Number As int
set @Patient_Number = '902'
select dbo.Patient.Patient_FirstName, dbo.Patient.Patient_LastName, dbo.Patient.Age,dbo.Patient.Patient_Number from dbo.Patient
where dbo.Patient.Patient_Number = @Patient_Number

Comments: 
Whenever a customer enters the hospital, he would be getting a new patient number in the sequential order. The customer would be 
entering the personal details. Thereby the patient can see the First Name, Last Name, Age and patient Number.
 

-- SCREEN 2 SQL Queries

Declare @Degree_Type AS varchar(20)
set @Degree_Type = 'Psychology'

select dbo.Doctor.Doctor_FirstName,dbo.Doctor.Doctor_LastName,dbo.Doctor.Back_Up_Number,dbo.Department.Department_Number,dbo.Doctor.Telephone,dbo.Degree.Degree_Type
from (( dbo.Doctor
Inner Join dbo.Department ON dbo.Doctor.Department_Number = dbo.Department.Department_Number)
Inner join dbo.Degree ON dbo.Doctor.Doctor_Number = dbo.Degree.Doctor_Number)
where dbo.Degree.Degree_Type = @Degree_Type

Comments: 
The patient now selects the Degree type according to the problem they are facing. By selecting degree, the patient gets 
the doctor names, back up doctor number, the department numbers, Telephone number. 

-- SCREEN 3 SQL Queries

Declare @Operation_Name AS varchar(50)
set @Operation_Name = 'Appendectomy
y' 

Select dbo.Operation_Type.Cost,dbo.Operation.Operating_Room_No,dbo.Operation.Date,dbo.Operation.Start_Time,dbo.Operation.End_Time,dbo.Operation_Type.Duration,dbo.Operation.Doctor_Number
from dbo.Operation
Inner Join dbo.Operation_Type ON dbo.Operation.Operation_Name = dbo.Operation_Type.Operation_Name
where dbo.Operation.Operation_Name = @Operation_Name

Comments: 
After getting the doctor name, the patient can see the operation types and select the operation name, then the
patients knows the cost going to incurred for the operation, room number, date, start and end time of the operation and the doctor number.


-- SCREEN 4 SQL Queries

Declare @Company_Name As varchar(50)
set @Company_Name = 'Carefirst Inc.'

Select dbo.Claim.Claim_Number,dbo.Claim.Patient_Number,dbo.Claim.Diagnosis,dbo.Claim.Amount
from dbo.Claim
Inner join dbo.Insurance_Company ON dbo.Claim.Company_Name = dbo.Insurance_Company.Company_Name
where dbo.Claim.Company_Name = @Company_Name

Comments: 

The health insurance would be selected by the customer, thereby the claim number, the amount of insurance and the diagnosis would be displayed. 