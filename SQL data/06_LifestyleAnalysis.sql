--diabetes with physical activities
SELECT
    Physical_Activity,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Physical_Activity;

--diabetes with smoking
SELECT
    Smoking_Status,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Smoking_Status;

--Diabetes with Fruits
SELECT
    Fruit_Consumption,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Fruit_Consumption;

--Diabetes with Vegetables
SELECT
    Vegetable_Consumption,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Vegetable_Consumption;

--diabetes with alchohol intake
SELECT
    Heavy_Alcohol_Consumption,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Heavy_Alcohol_Consumption;

--Healthcare access
SELECT
    Healthcare_Access,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Healthcare_Access;

--diabetes with unable to se doctor
SELECT
    Unable_To_See_Doctor_Cost,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Unable_To_See_Doctor_Cost;