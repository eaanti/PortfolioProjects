--Average BMI with diabetes
SELECT
    Diabetes_Status,
    COUNT(*) AS Total_People,
    ROUND(AVG(Body_Mass_Index),2) AS Average_BMI,
    MIN(Body_Mass_Index) AS Minimum_BMI,
    MAX(Body_Mass_Index) AS Maximum_BMI,
    ROUND(STDEV(Body_Mass_Index),2) AS BMI_Standard_Deviation
FROM Diabetes_Analysis
GROUP BY Diabetes_Status;

--average mental helth days with diabetes
SELECT
    Diabetes_Status,
    COUNT(*) AS Total_People,
    ROUND(AVG(Mental_Health_Days),2) AS Average_Mental_Health_Days,
    MIN(Mental_Health_Days) AS Minimum_Days,
    MAX(Mental_Health_Days) AS Maximum_Days,
    ROUND(STDEV(Mental_Health_Days),2) AS Standard_Deviation
FROM Diabetes_Analysis
GROUP BY Diabetes_Status;

--average physical health days with diabetes
SELECT
    Diabetes_Status,
    COUNT(*) AS Total_People,
    ROUND(AVG(Physical_Health_Days),2) AS Average_Physical_Health_Days,
    MIN(Physical_Health_Days) AS Minimum_Days,
    MAX(Physical_Health_Days) AS Maximum_Days,
    ROUND(STDEV(Physical_Health_Days),2) AS Standard_Deviation
FROM Diabetes_Analysis
GROUP BY Diabetes_Status;