--checking if equal data is present in clean and analysis tables
SELECT COUNT(*) AS Total_Rows
FROM Diabetes_Clean;

SELECT COUNT(*) AS Total_Rows
FROM Diabetes_Analysis;

--checking diabetes distribution
SELECT 
    Diabetes_Status,
    COUNT(*) AS Number_of_People
FROM Diabetes_Analysis
GROUP BY Diabetes_Status;

--check age categories
SELECT 
    Age_Group,
    COUNT(*) AS Count
FROM Diabetes_Analysis
GROUP BY Age_Group, Age_Group_Code
ORDER BY Age_Group_Code;

--checking bmi categories
SELECT 
    BMI_Category,
    COUNT(*) AS Count
FROM Diabetes_Analysis
GROUP BY BMI_Category;

--general health
SELECT 
    General_Health,
    COUNT(*) AS Count
FROM Diabetes_Analysis
GROUP BY General_Health, General_Health_Code
ORDER BY General_Health_Code;

