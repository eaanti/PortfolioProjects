--overall diabetes prevalence
SELECT 
    Diabetes_Status,
    COUNT(*) AS Number_of_People,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Diabetes_Analysis),
        2
    ) AS Percentage
FROM Diabetes_Analysis
GROUP BY Diabetes_Status;

--diabetes by geograhics
SELECT
    Age_Group,
    Age_Group_Code,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) 
        * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Age_Group, Age_Group_Code
ORDER BY Age_Group_Code;

--diabetes by gender
SELECT
    Gender,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Gender;

--diabetes by income level
SELECT
    Income_Level,
    Income_Code,

    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM [DiabetesAnalysis].[dbo].[Diabetes_Analysis]
GROUP BY Income_Level, Income_Code
ORDER BY Income_Code;

--diabetes by education
SELECT
    Education_Level,
    Education_Code,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Education_Level, Education_Code
ORDER BY Education_Code;