--Renaming column names
/*EXEC sp_rename 'Diabetes_Clean.Diabetes_binary', 'Diabetes_Status', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.HighBP', 'High_Blood_Pressure', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.HighChol', 'High_Cholesterol', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.CholCheck', 'Cholesterol_Check', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.BMI', 'Body_Mass_Index', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Smoker', 'Smoking_Status', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Stroke', 'Stroke_History', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.HeartDiseaseorAttack', 'Heart_Disease_History', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.PhysActivity', 'Physical_Activity', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Fruits', 'Fruit_Consumption', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Veggies', 'Vegetable_Consumption', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.HvyAlcoholConsump', 'Heavy_Alcohol_Consumption', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.AnyHealthcare', 'Healthcare_Access', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.NoDocbcCost', 'Unable_To_See_Doctor_Cost', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.GenHlth', 'General_Health', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.MentHlth', 'Mental_Health_Days', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.PhysHlth', 'Physical_Health_Days', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.DiffWalk', 'Difficulty_Walking', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Sex', 'Gender', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Age', 'Age_Group', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Education', 'Education_Level', 'COLUMN';

EXEC sp_rename 'Diabetes_Clean.Income', 'Income_Level', 'COLUMN';
*/

--creating diabetes analysis table that has binary values converted into texts
SELECT

    --TARGET VARIABLE
    CASE 
        WHEN Diabetes_Status = 1 THEN 'Diabetes'
        WHEN Diabetes_Status = 0 THEN 'No Diabetes'
    END AS Diabetes_Status,

    -- BINARY HEALTH VARIABLES

    CASE
        WHEN High_Blood_Pressure = 1 THEN 'Yes'
        WHEN High_Blood_Pressure = 0 THEN 'No'
    END AS High_Blood_Pressure,


    CASE
        WHEN High_Cholesterol = 1 THEN 'Yes'
        WHEN High_Cholesterol = 0 THEN 'No'
    END AS High_Cholesterol,


    CASE
        WHEN Cholesterol_Check = 1 THEN 'Checked Cholesterol'
        WHEN Cholesterol_Check = 0 THEN 'Not Checked Cholesterol'
    END AS Cholesterol_Check,


    CASE
        WHEN Heart_Disease_History = 1 THEN 'Heart Disease'
        WHEN Heart_Disease_History = 0 THEN 'No Heart Disease'
    END AS Heart_Disease_History,


    CASE
        WHEN Difficulty_Walking = 1 THEN 'Difficulty Walking'
        WHEN Difficulty_Walking = 0 THEN 'No Difficulty Walking'
    END AS Difficulty_Walking,

	CASE
        WHEN Stroke_History = 1 THEN 'Stroke'
        WHEN Stroke_History = 0 THEN 'No Stroke'
    END AS Stroke_History,

    -- LIFESTYLE VARIABLES

    CASE
        WHEN Physical_Activity = 1 THEN 'Active'
        WHEN Physical_Activity = 0 THEN 'Inactive'
    END AS Physical_Activity,


    CASE
        WHEN Smoking_Status = 1 THEN 'Smoker'
        WHEN Smoking_Status = 0 THEN 'Non-Smoker'
    END AS Smoking_Status,


    CASE
        WHEN Fruit_Consumption = 1 THEN 'Consumes Fruits'
        WHEN Fruit_Consumption = 0 THEN 'Does Not Consume Fruits'
    END AS Fruit_Consumption,


    CASE
        WHEN Vegetable_Consumption = 1 THEN 'Consumes Vegetables'
        WHEN Vegetable_Consumption = 0 THEN 'Does Not Consume Vegetables'
    END AS Vegetable_Consumption,


    CASE
        WHEN Heavy_Alcohol_Consumption = 1 THEN 'Consumes Alcohol'
        WHEN Heavy_Alcohol_Consumption = 0 THEN 'Does Not Consume Alcohol'
    END AS Heavy_Alcohol_Consumption,

    -- HEALTHCARE ACCESS VARIABLES

    CASE
        WHEN Healthcare_Access = 1 THEN 'Has Healthcare Coverage'
        WHEN Healthcare_Access = 0 THEN 'No Healthcare Coverage'
    END AS Healthcare_Access,


    CASE
        WHEN Unable_To_See_Doctor_Cost = 1 THEN 'Could Not Visit Doctor Due To Cost'
        WHEN Unable_To_See_Doctor_Cost = 0 THEN 'No Cost Barrier'
    END AS Unable_To_See_Doctor_Cost,

    -- GENDER

    CASE
        WHEN Gender = 1 THEN 'Male'
        WHEN Gender = 0 THEN 'Female'
    END AS Gender,

    -- AGE (CODE + LABEL)

    Age_Group AS Age_Group_Code,

    CASE
        WHEN Age_Group = 1 THEN '18-24'
        WHEN Age_Group = 2 THEN '25-29'
        WHEN Age_Group = 3 THEN '30-34'
        WHEN Age_Group = 4 THEN '35-39'
        WHEN Age_Group = 5 THEN '40-44'
        WHEN Age_Group = 6 THEN '45-49'
        WHEN Age_Group = 7 THEN '50-54'
        WHEN Age_Group = 8 THEN '55-59'
        WHEN Age_Group = 9 THEN '60-64'
        WHEN Age_Group = 10 THEN '65-69'
        WHEN Age_Group = 11 THEN '70-74'
        WHEN Age_Group = 12 THEN '75-79'
        WHEN Age_Group = 13 THEN '80+'
    END AS Age_Group,

    -- EDUCATION

    Education_Level AS Education_Code,

    CASE
        WHEN Education_Level = 1 THEN 'No Formal Education'
        WHEN Education_Level = 2 THEN 'Elementary Education'
        WHEN Education_Level = 3 THEN 'Some High School'
        WHEN Education_Level = 4 THEN 'High School Graduate/GED'
        WHEN Education_Level = 5 THEN 'Some College/Technical School'
        WHEN Education_Level = 6 THEN 'College Graduate'
    END AS Education_Level,


    -- INCOME

    Income_Level AS Income_Code,

    CASE
        WHEN Income_Level = 1 THEN 'Less than $10,000'
        WHEN Income_Level = 2 THEN '$10,000-$14,999'
        WHEN Income_Level = 3 THEN '$15,000-$19,999'
        WHEN Income_Level = 4 THEN '$20,000-$24,999'
        WHEN Income_Level = 5 THEN '$25,000-$34,999'
        WHEN Income_Level = 6 THEN '$35,000-$49,999'
        WHEN Income_Level = 7 THEN '$50,000-$74,999'
        WHEN Income_Level = 8 THEN '$75,000 or More'
    END AS Income_Level,

    -- GENERAL HEALTH

    General_Health AS General_Health_Code,

    CASE
        WHEN General_Health = 1 THEN 'Excellent'
        WHEN General_Health = 2 THEN 'Very Good'
        WHEN General_Health = 3 THEN 'Good'
        WHEN General_Health = 4 THEN 'Fair'
        WHEN General_Health = 5 THEN 'Poor'
    END AS General_Health,

    -- NUMERICAL VARIABLES

    Body_Mass_Index,

    -- BMI CATEGORY

    CASE
        WHEN Body_Mass_Index < 18.5 THEN 'Underweight'
        WHEN Body_Mass_Index BETWEEN 18.5 AND 24.9 THEN 'Normal Weight'
        WHEN Body_Mass_Index BETWEEN 25 AND 29.9 THEN 'Overweight'
        WHEN Body_Mass_Index >= 30 THEN 'Obese'
    END AS BMI_Category,

    Mental_Health_Days,

    -- MENTAL HEALTH CATEGORY

    CASE
        WHEN Mental_Health_Days = 0 THEN 'No Poor Mental Health Days'
        WHEN Mental_Health_Days BETWEEN 1 AND 7 THEN 'Low Mental Health Burden'
        WHEN Mental_Health_Days BETWEEN 8 AND 14 THEN 'Moderate Mental Health Burden'
        WHEN Mental_Health_Days BETWEEN 15 AND 30 THEN 'High Mental Health Burden'
    END AS Mental_Health_Category,

	
    Physical_Health_Days,
    -- PHYSICAL HEALTH CATEGORY

    CASE
        WHEN Physical_Health_Days = 0 THEN 'No Poor Physical Health Days'
        WHEN Physical_Health_Days BETWEEN 1 AND 7 THEN 'Low Physical Health Burden'
        WHEN Physical_Health_Days BETWEEN 8 AND 14 THEN 'Moderate Physical Health Burden'
        WHEN Physical_Health_Days BETWEEN 15 AND 30 THEN 'High Physical Health Burden'
    END AS Physical_Health_Category


INTO Diabetes_Analysis

 FROM [DiabetesAnalysis].[dbo].[Diabetes_Clean]