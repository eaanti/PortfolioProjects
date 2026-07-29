--diabetes with high blood pressure
SELECT
    High_Blood_Pressure,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY High_Blood_Pressure;
--diabetes is common in those with HBP

--diabetes with high cholesterol
SELECT
    High_Cholesterol,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY High_Cholesterol;
--high cholesterol, diabetes

--diabetes with BMI
SELECT
    BMI_Category,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY BMI_Category
ORDER BY
CASE BMI_Category
    WHEN 'Underweight' THEN 1
    WHEN 'Normal Weight' THEN 2
    WHEN 'Overweight' THEN 3
    WHEN 'Obese' THEN 4
END;
--HIGH bmi,diabetes

--diabetes wth Cholesterol check
SELECT
    Cholesterol_Check,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Cholesterol_Check
ORDER BY
CASE Cholesterol_Check
    WHEN 'Cholesterol Checked' THEN 1
	WHEN 'Not Checked Cholesterol' THEN 2
END;

--Diabetes with stroke
SELECT
    Stroke_History,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Stroke_History;

--diabetes with heart disease
SELECT
    Heart_Disease_History,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Heart_Disease_History;

-- Diabetes with difficulty walking
SELECT
    Difficulty_Walking,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Difficulty_Walking;

--diabetes with general health
SELECT
    General_Health,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY General_Health
ORDER BY
CASE General_Health
    WHEN 'Excellent' THEN 1
	WHEN 'Very Good' THEN 2
	WHEN 'Good' THEN 3
	WHEN 'Fair' THEN 4
	WHEN 'Poor' THEN 5
END;

--diabetes with mental health
SELECT
    Mental_Health_Category,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Mental_Health_Category
ORDER BY Mental_Health_Category;

--diabeteswith physical health
SELECT
    Physical_Health_Category,
    COUNT(*) AS Total_People,
    SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) AS Diabetes_Count,
    ROUND(
        SUM(CASE WHEN Diabetes_Status = 'Diabetes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Diabetes_Percentage
FROM Diabetes_Analysis
GROUP BY Physical_Health_Category
ORDER BY Physical_Health_Category;