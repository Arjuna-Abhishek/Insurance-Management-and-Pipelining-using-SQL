INSERT INTO Customer (CustomerID,Cust_FName , Custom_LName, Cust_email,Cust_Phone )
VALUES
  (1, 'John', 'Doe', 'johndoe@email.com', '555-1234'),
  (2, 'Jane', 'Smith', 'janesmith@email.com', '555-5678'),   
  (5, 'George', 'Michel', 'gm@email.com', '555-6398'),
  (6, 'Michelle ', 'Davis', 'mdavis@email.com', '555-5176'),
  (7, 'Dave', 'Olsen', 'dolsen@email.net', '555-9265'),
  (8, 'Amy', 'Kim', 'amykim@email.com', '555-1059'),
  (9, 'Carlos', 'Hernandez', 'carloshdz@email.com', '555-8254'),
  (10, 'Karen', 'Smith', 'ksmith23@email.com', '555-1663'),   
  (12, 'Linda', 'Park', 'lpark81@email.net', '555-6412'),
  (13, 'Chris', 'Lee', 'chrislee@email.com', '555-2288');

INSERT INTO `bluecross_db`.`Policy Plan`(PlanID, Policy_Name, Policy_desp, Coverage_deatils)
VALUES
  (21, 'Basic Plan', 'Standard coverage', 'Medical, Dental, Vision'),
  (22, 'Premium Plan', 'Comprehensive coverage', 'Medical, Dental, Vision, Prescription Drugs'),
  (23, 'Family Plan', 'Coverage for entire family', 'Medical, Dental, Vision'),
  (24, 'Dental Plan', 'Focused on dental care', 'Dental services and procedures'),
  (25, 'Vision Plan', 'Focused on vision care', 'Vision tests, eyeglasses, contact lenses'),
  (26, 'Senior Plan', 'Tailored for senior citizens', 'Medical, Prescription Drugs, Elderly Care'),
  (27, 'Student Plan', 'Coverage for students', 'Medical, Mental Health, Preventive Care'),
  (28, 'Travel Plan', 'Coverage during travel', 'Emergency Medical, Trip Cancellation'),
  (29, 'Catastrophic Plan', 'High-deductible coverage', 'Major Medical Expenses'),
  (30, 'Employee Wellness Plan', 'Corporate wellness coverage', 'Medical, Fitness Programs');
  
  INSERT INTO Provider (ProviderID, Provider_FName, Provider_LName, Speciality, Address, P_Phone)
VALUES
  (1, 'John', 'Smith', 'Family Medicine', '123 Main St, City, State', '555-0111'),
  (2, 'Sarah', 'Lee', 'Pediatrics', '456 Park Ln, City, State', '555-0222'),
  (3, 'Mark', 'Jones', 'Orthopedics', '789 Church St, City, State', '555-0333'),
  (4, 'Jessica', 'Davis', 'Dermatology', '135 Oak Rd, City, State', '555-0444'),
  (5, 'Mike', 'Brown', 'Cardiology', '246 Pine St, City, State', '555-0555'),
  (6, 'Karen', 'Miller', 'Obstetrics', '357 Valley Rd, City, State', '555-0666'),
  (7, 'James', 'Moore', 'Gastroenterology', '159 Spring Ln, City, State', '555-0777'),
  (8, 'Patricia', 'Taylor', 'Neurology', '753 Hills Dr, City, State', '555-0888'), 
  (9, 'David', 'Thomas', 'General Surgery', '456 Glen Creek Wy, City, State', '555-0999'),
  (10, 'Nancy', 'Young', 'Psychiatry', '632 Ridge Dr, City, State', '555-1122');
  
 INSERT INTO Policy (PolicyID,Customer_CustomerID , Policy_Plan_PlanID,Policy_Type, StartDate, EndDate, Premium)
VALUES
  (101, 1, 21,'Basic', '2023-01-01', '2024-01-01', 100.00),
  (102, 2, 22,'Premium','2023-02-01', '2024-02-01', 200.00),
  (103, 5, 23,'Family','2023-03-01', '2024-03-01', 150.00),
  (104, 6, 24,'Dental', '2023-04-01', '2024-04-01', 80.00),
  (105, 7, 25,'Vision', '2023-05-01', '2024-05-01', 90.00),
  (106, 8, 26,'Senior', '2023-06-01', '2024-06-01', 120.00),
  (107, 9, 27,'Student', '2023-07-01', '2024-07-01', 110.00),
  (108, 10, 28,'Travel', '2023-08-01', '2024-08-01', 130.00),
  (109, 12, 29,'Catastropic', '2023-09-01', '2024-09-01', 140.00),
  (110, 13, 30,'Employee Welness', '2023-10-01', '2024-10-01', 160.00);
  
INSERT INTO Employee (EmpID,Emp_FName ,Emp_LName , Role, Dept, Email)
VALUES
  (1, 'Emma', 'Thomas', 'Claims Adjuster', 'Claims', 'ethomas@email.com'),
  (2, 'Noah', 'Johnson', 'Underwriter', 'Underwriting', 'njohnson@email.com'),
  (3, 'Olivia', 'Brown', 'Customer Service Rep', 'Customer Service', 'obrown@email.com'),
  (4, 'Liam', 'Davis', 'Actuary', 'Actuarial', 'ldavis@email.com'),
  (5, 'Sophia', 'Miller', 'Agent', 'Sales', 'smiller@email.com'),
  (6, 'Mason', 'Wilson', 'Risk Analyst', 'Risk Management', 'mwilson@email.com'),
  (7, 'Isabella', 'Martinez', 'HR Manager', 'Human Resources', 'imartinez@email.com'),
  (8, 'Jacob', 'Anderson', 'IT Specialist', 'Information Technology', 'janderson@email.com'),
  (9, 'Mia', 'Hernandez', 'Marketing Director', 'Marketing', 'mhernandez@email.com'),
  (10, 'William', 'Jones', 'CEO', 'Executive', 'wjones@email.com');
  
  
INSERT INTO claims (ClaimsID,Policy_PolicyID , Customer_CustomerID,Employee_EmpID, DateFiled,Status , Amount)
VALUES
  (201, 101, 1, 1, '2023-03-15', 'Open', 500.00),
  (202, 102, 2, 2, '2023-04-10', 'Processing', 1000.00),
  (203, 103, 5, 3, '2023-05-05', 'Closed', 750.00),
  (204, 104, 6, 4, '2023-06-01', 'Denied', 0.00),
  (205, 105, 7, 5, '2023-07-20', 'Open', 600.00),
  (206, 106, 8, 1, '2023-08-15', 'Processing', 1100.00),
  (207, 107, 9, 2, '2023-09-10', 'Closed', 850.00),
  (208, 108, 10, 3, '2023-10-05', 'Open', 700.00),
  (209, 109, 12, 4, '2023-11-01', 'Processing', 950.00),
  (210, 110, 13, 5, '2023-12-15', 'Closed', 1200.00);
  
INSERT INTO `bluecross_db`.`claim service` (ServiceID,Claims_ClaimsID ,Service_Date ,Provider_ProviderID , ServiceType, Cost)
VALUES
  (301, 201, '2023-03-16', 1, 'Consultation', 100.00),
  (302, 202, '2023-04-11', 2, 'X-Ray', 200.00),
  (303, 203, '2023-05-06', 3, 'Surgery', 300.00),
  (304, 204, '2023-06-02', 4, 'Skin Test', 50.00),
  (305, 205, '2023-07-21', 5, 'Heart Checkup', 150.00),
  (306, 206, '2023-08-16', 6, 'Prenatal Care', 250.00),
  (307, 207, '2023-09-11', 7, 'Endoscopy', 350.00),
  (308, 208, '2023-10-06', 8, 'Brain MRI', 400.00),
  (309, 209, '2023-11-02', 9, 'General Surgery', 450.00),
  (310, 210, '2023-12-16', 10, 'Psychiatric Evaluation', 500.00);
  

INSERT INTO Payment (PaymentID,Claims_ClaimsID ,PDate ,PAmount , Method)
VALUES
  (401, 201, '2023-03-20', 500.00, 'Check'),
  (402, 202, '2023-04-15', 1000.00, 'Electronic Transfer'),
  (403, 203, '2023-05-10', 750.00, 'Credit Card'),
  (404, 204, '2023-06-05', 0.00, 'N/A'),
  (405, 205, '2023-07-25', 600.00, 'Cash'),
  (406, 206, '2023-08-20', 1100.00, 'Check'),
  (407, 207, '2023-09-15', 850.00, 'Electronic Transfer'),
  (408, 208, '2023-10-10', 700.00, 'Credit Card'),
  (409, 209, '2023-11-05', 950.00, 'Cash'),
  (410, 210, '2023-12-20', 1200.00, 'Check');
  
  RENAME TABLE `bluecross_db`.`claim service` TO claim_service;
  
 /*1.
 List of Active Policies.
 This query retrieves a list of all active policies along with customer names.
Value: Useful for customer service representatives to quickly access active policies for inquiries or follow-ups.
 */
SELECT Customer.Cust_FName,Customer.Custom_LName, Policy.PolicyID, Policy.Policy_Type, Policy.StartDate, Policy.EndDate 
FROM Customer 
JOIN Policy ON Customer.CustomerID = Policy.Customer_CustomerID 
WHERE Policy.EndDate >= CURDATE();

/*
2. Claims Summary by Customer.
Generates a summary of claims made by each customer, including the total number of claims and the total amount claimed.
Value: Helps in assessing the claim patterns of customers, valuable for risk assessment and customer relationship management.
*/
SELECT Customer.Cust_FName,Customer.Custom_LName, COUNT(claims.ClaimsID) AS Number_Of_Claims, SUM(claims.Amount) AS TotalClaimedAmount 
FROM Customer 
JOIN Policy ON Customer.CustomerID = Policy.Customer_CustomerID 
JOIN Claims ON Policy.PolicyID = Claims.Policy_PolicyID 
GROUP BY Customer.Cust_FName,Customer.Custom_LName;

/*
3.Provider Services and Costs
Provides average costs for each type of service offered by providers.
Value: Useful for the finance department in negotiating rates with providers and for cost control analysis.
*/
SELECT Provider.Provider_FName,Provider.Provider_LName ,claim_service.ServiceType, AVG(claim_service.Cost) AS AverageCost 
FROM Provider 
JOIN claim_service ON Provider.ProviderID = claim_service.Provider_ProviderID 
GROUP BY Provider.Provider_FName,Provider.Provider_LName ,claim_service.ServiceType;

/*
4.Policy Renewal Upcoming
Identifies policies that are due for renewal in the next 30 days.
Value: Essential for the sales team to proactively reach out to customers for policy renewals, enhancing customer retention.
*/
SELECT Customer.Cust_FName,Customer.Custom_LName ,Policy.PolicyID, Policy.EndDate 
FROM Policy 
JOIN Customer ON Policy.Customer_CustomerID = Customer.CustomerID 
WHERE Policy.EndDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);


/*
5. Claims Processing Status
Lists all claims that are currently being processed.
Value: Critical for claims department to monitor ongoing claims, ensuring timely processing and improving customer satisfaction.
*/
SELECT Claims.ClaimsID, Customer.Cust_FName,Customer.Custom_LName, Claims.DateFiled, Claims.Status 
FROM Claims 
JOIN Policy ON Claims.Policy_PolicyID = Policy.PolicyID 
JOIN Customer ON Policy.Customer_CustomerID= Customer.CustomerID 
WHERE Claims.Status = 'Processing';

/*
1. Stored Procedure: CalculatePolicyPremium
Purpose: This stored procedure is designed to calculate and update the premium for a policy based on certain factors like policy type, 
customer age, and coverage amount.
*/
DELIMITER //
CREATE PROCEDURE CalculatePolicyPremium(IN policy_id INT, IN customer_age INT, IN coverage_amount DECIMAL)
BEGIN
    DECLARE premium_rate DECIMAL;
    -- Example calculation logic (simplified)
    IF customer_age < 30 THEN
        SET premium_rate = 0.02;
    ELSE
        SET premium_rate = 0.03;
    END IF;
    UPDATE Policy SET Premium = coverage_amount * premium_rate WHERE PolicyID = policy_id;
END //
DELIMITER ;
/*
2. Trigger: AuditClaimUpdates
Purpose: This trigger is intended to create an audit record every time a claim's status is updated. 
It helps in tracking the history of claim processing.
*/

DELIMITER //
CREATE TRIGGER AuditClaimUpdates
BEFORE UPDATE ON Claims
FOR EACH ROW
BEGIN
    IF OLD.Status <> NEW.Status THEN
        INSERT INTO AuditLog (ClaimsID, OldStatus, NewStatus, ChangeDate)
        VALUES (NEW.ClaimsID, OLD.Status, NEW.Status, NOW());
    END IF;
END //
DELIMITER ;
