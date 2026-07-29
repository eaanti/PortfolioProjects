--Counting total rows
SELECT COUNT(*) AS Total_Rows
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]

--checking column name, data type and length
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'diabetes_binary_health_indicators_BRFSS2015';

--previewing data
SELECT TOP 10*
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]

--checking distribution of target variable - diabetes
SELECT
    Diabetes_binary,
    COUNT(*) AS Number_of_people
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY Diabetes_binary;

--in percentage
SELECT
    Diabetes_binary,
    COUNT(*) AS Number_of_people,
    CAST(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]) AS DECIMAL(5,2)) AS Percentage
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY Diabetes_binary;

--checking duplicates
WITH Duplicate_Check AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY 
               Diabetes_binary,
               HighBP,
               HighChol,
               CholCheck,
               BMI,
               Smoker,
               Stroke,
               HeartDiseaseorAttack,
               PhysActivity,
               Fruits,
               Veggies,
               HvyAlcoholConsump,
               AnyHealthcare,
               NoDocbcCost,
               GenHlth,
               MentHlth,
               PhysHlth,
               DiffWalk,
               Sex,
               Age,
               Education,
               Income
               ORDER BY (SELECT NULL)
           ) AS Row_Num
    FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
)

SELECT COUNT(*) AS Duplicate_Count
FROM Duplicate_Check
WHERE Row_Num > 1;

SELECT COUNT(*) AS Unique_Rows
FROM (
    SELECT DISTINCT *
    FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
) AS UniqueData;

--checking missing values
DECLARE @sql NVARCHAR(MAX);

SELECT @sql = STRING_AGG(
    CAST(
        'SELECT ''' + COLUMN_NAME + ''' AS Column_Name, 
                COUNT(*) - COUNT(' + QUOTENAME(COLUMN_NAME) + ') AS Missing_Values
         FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]'
    AS NVARCHAR(MAX)),
    ' UNION ALL '
)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'diabetes_binary_health_indicators_BRFSS2015';

EXEC sp_executesql @sql;

/* Understanding if null valves were filled with wrong inputs
*/
--age
SELECT 
    Age,
    COUNT(*) AS Frequency
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY Age
ORDER BY Age;

SELECT 
    GenHlth,
    COUNT(*) AS Frequency
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY GenHlth
ORDER BY GenHlth;

--mental health
SELECT 
    MentHlth,
    COUNT(*) AS Frequency
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY MentHlth
ORDER BY MentHlth;

--physical health
SELECT 
    PhysHlth,
    COUNT(*) AS Frequency
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY PhysHlth
ORDER BY PhysHlth;

--income
SELECT 
    Income,
    COUNT(*) AS Frequency
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY Income
ORDER BY Income;

--education
SELECT 
    Education,
    COUNT(*) AS Frequency
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]
GROUP BY Education
ORDER BY Education;

--creating a clean table
SELECT *
INTO Diabetes_Clean
FROM [DiabetesAnalysis].[dbo].[diabetes_binary_health_indicators_BRFSS2015]