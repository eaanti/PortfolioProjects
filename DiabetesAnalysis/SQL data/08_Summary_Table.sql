INSERT INTO Diabetes_Summary
VALUES

-- ==========================
-- OVERALL DIABETES DISTRIBUTION
-- ==========================

('Overall',
'Diabetes Status',
'Diabetes',
'Overall Prevalence (%)',
13.00,
'Approximately 13% of respondents reported having diabetes.'),

('Overall',
'Diabetes Status',
'No Diabetes',
'Overall Prevalence (%)',
86.00,
'The majority of respondents (86%) did not report diabetes.'),


-- ==========================
-- DEMOGRAPHIC FACTORS
-- ==========================

('Demographic',
'Age Group',
'65-79 Years',
'Within-Group Diabetes Prevalence (%)',
NULL,
'Diabetes prevalence increased with age, peaking among participants aged 65–79 years before declining slightly in those aged 80 years and above.'),

('Demographic',
'Gender',
'Male',
'Within-Group Diabetes Prevalence (%)',
15.00,
'Males had a diabetes prevalence of 15%, compared with 12% among females.'),

('Demographic',
'Gender',
'Female',
'Within-Group Diabetes Prevalence (%)',
12.00,
'Females had a lower diabetes prevalence than males.'),

('Demographic',
'Income Level',
'Less than $10,000',
'Within-Group Diabetes Prevalence (%)',
NULL,
'Lower-income participants showed higher diabetes prevalence than higher-income participants.'),

('Demographic',
'Education Level',
'Elementary Education',
'Within-Group Diabetes Prevalence (%)',
29.00,
'Participants with elementary education had the highest diabetes prevalence, while diabetes prevalence generally decreased with increasing educational attainment.'),


-- ==========================
-- HEALTH RISK FACTORS
-- ==========================

('Health Risk',
'High Blood Pressure',
'Yes',
'Within-Group Diabetes Prevalence (%)',
24.00,
'Participants with high blood pressure had a diabetes prevalence of 24%, compared with 6% among those without high blood pressure.'),

('Health Risk',
'High Blood Pressure',
'No',
'Within-Group Diabetes Prevalence (%)',
6.00,
'Participants without high blood pressure showed substantially lower diabetes prevalence.'),

('Health Risk',
'High Cholesterol',
'Yes',
'Within-Group Diabetes Prevalence (%)',
22.00,
'Participants with high cholesterol had a diabetes prevalence of 22%, compared with 7% among those without high cholesterol.'),

('Health Risk',
'BMI Category',
'Obese',
'Within-Group Diabetes Prevalence (%)',
23.00,
'Obese participants had a diabetes prevalence of 23%, compared with 5% among participants with normal weight.'),

('Health Risk',
'BMI Category',
'Normal Weight',
'Within-Group Diabetes Prevalence (%)',
5.00,
'Participants with normal weight showed considerably lower diabetes prevalence.'),

('Health Risk',
'Stroke',
'Yes',
'Within-Group Diabetes Prevalence (%)',
31.00,
'Participants with a history of stroke had a diabetes prevalence of 31%, compared with 13.80% among those without stroke.'),

('Health Risk',
'Heart Disease',
'Yes',
'Within-Group Diabetes Prevalence (%)',
32.90,
'Participants with heart disease had a diabetes prevalence of 32.90%, compared with 11% among those without heart disease.'),

('Health Risk',
'Difficulty Walking',
'Yes',
'Within-Group Diabetes Prevalence (%)',
30.00,
'Participants reporting difficulty walking had a diabetes prevalence of 30%, compared with 10% among those without walking difficulty.'),


-- ==========================
-- HEALTH STATUS
-- ==========================

('Health Status',
'General Health',
'Poor',
'Within-Group Diabetes Prevalence (%)',
37.00,
'Participants reporting poor general health had the highest diabetes prevalence, compared with only 5% among those reporting excellent health.'),

('Health Status',
'General Health',
'Fair',
'Within-Group Diabetes Prevalence (%)',
31.00,
'Participants reporting fair general health also showed substantially higher diabetes prevalence than those reporting excellent health.'),

('Health Status',
'General Health',
'Excellent',
'Within-Group Diabetes Prevalence (%)',
5.00,
'Participants reporting excellent general health had the lowest diabetes prevalence.'),

('Health Status',
'Physical Health Burden',
'High',
'Within-Group Diabetes Prevalence (%)',
28.00,
'Participants reporting high numbers of poor physical health days had a diabetes prevalence of 28%, compared with 10% among those reporting no poor physical health days.'),

('Health Status',
'Mental Health Burden',
'High',
'Within-Group Diabetes Prevalence (%)',
21.00,
'Participants reporting high numbers of poor mental health days had a diabetes prevalence of 21%, compared with 13% among those reporting no poor mental health days.'),


-- ==========================
-- LIFESTYLE FACTORS
-- ==========================

('Lifestyle',
'Physical Activity',
'Inactive',
'Within-Group Diabetes Prevalence (%)',
21.00,
'Inactive participants had a diabetes prevalence of 21%, compared with 11% among physically active participants.'),

('Lifestyle',
'Physical Activity',
'Active',
'Within-Group Diabetes Prevalence (%)',
11.00,
'Physically active participants showed lower diabetes prevalence.'),

('Lifestyle',
'Smoking Status',
'Smoker',
'Within-Group Diabetes Prevalence (%)',
16.00,
'Smokers had a diabetes prevalence of 16%, compared with 11% among non-smokers.'),

('Lifestyle',
'Vegetable Consumption',
'Does Not Consume Vegetables',
'Within-Group Diabetes Prevalence (%)',
18.00,
'Participants who did not consume vegetables had higher diabetes prevalence than those who consumed vegetables.'),


-- ==========================
-- HEALTHCARE ACCESS
-- ==========================

('Healthcare Access',
'Doctor Visit Cost Barrier',
'Could Not Visit Due To Cost',
'Within-Group Diabetes Prevalence (%)',
17.00,
'Participants who reported being unable to visit a doctor because of cost had slightly higher diabetes prevalence than those without this barrier.'),


-- ==========================
-- NUMERICAL COMPARISONS
-- ==========================

('Numerical Comparison',
'Body Mass Index',
'Diabetes',
'Average BMI',
31.94,
'Participants with diabetes had a higher average BMI than participants without diabetes.'),

('Numerical Comparison',
'Body Mass Index',
'No Diabetes',
'Average BMI',
27.81,
'Participants without diabetes had a lower average BMI.'),

('Numerical Comparison',
'Physical Health Days',
'Diabetes',
'Average Days',
7.95,
'Participants with diabetes reported more poor physical health days on average than those without diabetes.'),

('Numerical Comparison',
'Mental Health Days',
'Diabetes',
'Average Days',
4.46,
'Participants with diabetes reported more poor mental health days on average than those without diabetes.');