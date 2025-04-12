SELECT * FROM sandhyaapna.data;
-- MEAN
USE sandhyaapna;
CREATE TABLE Averages (
    column_name VARCHAR(255),
    average_value FLOAT
);
INSERT INTO Averages (column_name, average_value)
SELECT 'Coal_RB_4800_FOB_London_Close_USD', AVG(Coal_RB_4800_FOB_London_Close_USD) FROM data
UNION ALL
SELECT 'Coal_RB_5500_FOB_London_Close_USD', AVG(Coal_RB_5500_FOB_London_Close_USD) FROM data
UNION ALL
SELECT 'Coal_RB_5700_FOB_London_Close_USD', AVG(Coal_RB_5700_FOB_London_Close_USD) FROM data
UNION ALL
SELECT 'Coal_RB_6000_FOB_CurrentWeek_Avg_USD', AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM data
UNION ALL
SELECT 'Coal_India_5500_CFR_London_Close_USD', AVG(Coal_India_5500_CFR_London_Close_USD) FROM data
UNION ALL
SELECT 'Price_WTI', AVG(Price_WTI) FROM data
UNION ALL
SELECT 'Price_Brent_Oil', AVG(Price_Brent_Oil) FROM data
UNION ALL
SELECT 'Price_Dubai_Brent_Oil', AVG(Price_Dubai_Brent_Oil) FROM data
UNION ALL
SELECT 'Price_ExxonMobil', AVG(Price_ExxonMobil) FROM data
UNION ALL
SELECT 'Price_Shenhua', AVG(Price_Shenhua) FROM data
UNION ALL
SELECT 'Price_All_Share', AVG(Price_All_Share) FROM data
UNION ALL
SELECT 'Price_Mining', AVG(Price_Mining) FROM data
UNION ALL
SELECT 'Price_LNG_Japan_Korea_Marker_PLATTS', AVG(Price_LNG_Japan_Korea_Marker_PLATTS) FROM data
UNION ALL
SELECT 'Price_ZAR_USD', AVG(Price_ZAR_USD) FROM data
UNION ALL
SELECT 'Price_Natural_Gas', AVG(Price_Natural_Gas) FROM data
UNION ALL
SELECT 'Price_ICE', AVG(Price_ICE) FROM data
UNION ALL
SELECT 'Price_Dutch_TTF', AVG(Price_Dutch_TTF) FROM data
UNION ALL
SELECT 'Price_Indian_en_exg_rate', AVG(Price_Indian_en_exg_rate) FROM data;
SELECT * FROM Averages;

-- MEDIAD
WITH OrderedValues AS (
  SELECT 
    Coal_RB_4800_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_4800_FOB_London_Close_USD) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Coal_RB_4800_FOB_London_Close_USD) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);

WITH OrderedValues AS (
  SELECT 
    Coal_RB_5500_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_5500_FOB_London_Close_USD) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Coal_RB_5500_FOB_London_Close_USD) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Coal_RB_5700_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_5700_FOB_London_Close_USD) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Coal_RB_5700_FOB_London_Close_USD) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Coal_India_5500_CFR_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_India_5500_CFR_London_Close_USD) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Coal_India_5500_CFR_London_Close_USD) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_WTI,
    ROW_NUMBER() OVER (ORDER BY Price_WTI) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_WTI) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_Brent_Oil,
    ROW_NUMBER() OVER (ORDER BY Price_Brent_Oil) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Brent_Oil) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_Dubai_Brent_Oil,
    ROW_NUMBER() OVER (ORDER BY Price_Dubai_Brent_Oil) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Dubai_Brent_Oil) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Price_ExxonMobil,
    ROW_NUMBER() OVER (ORDER BY Price_ExxonMobil) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_ExxonMobil) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_Shenhua,
    ROW_NUMBER() OVER (ORDER BY Price_Shenhua) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Shenhua) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_All_Share,
    ROW_NUMBER() OVER (ORDER BY Price_All_Share) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_All_Share) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Price_Mining,
    ROW_NUMBER() OVER (ORDER BY Price_Mining) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Mining) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Price_LNG_Japan_Korea_Marker_PLATTS,
    ROW_NUMBER() OVER (ORDER BY Price_LNG_Japan_Korea_Marker_PLATTS) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Price_ZAR_USD,
    ROW_NUMBER() OVER (ORDER BY Price_ZAR_USD) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_ZAR_USD) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Price_Natural_Gas,
    ROW_NUMBER() OVER (ORDER BY Price_Natural_Gas) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Natural_Gas) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_ICE,
    ROW_NUMBER() OVER (ORDER BY Price_ICE) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_ICE) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);



WITH OrderedValues AS (
  SELECT 
    Price_Dutch_TTF,
    ROW_NUMBER() OVER (ORDER BY Price_Dutch_TTF) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Dutch_TTF) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);


WITH OrderedValues AS (
  SELECT 
    Price_Indian_en_exg_rate,
    ROW_NUMBER() OVER (ORDER BY Price_Indian_en_exg_rate) AS row_num,
    COUNT(*) OVER () AS total_rows
  FROM data
)
SELECT AVG(Price_Indian_en_exg_rate) AS median
FROM OrderedValues
WHERE row_num IN (
  FLOOR((total_rows + 1) / 2), 
  FLOOR((total_rows + 2) / 2)
);

-- MODE

SELECT Coal_RB_4800_FOB_London_Close_USD
FROM data
GROUP BY Coal_RB_4800_FOB_London_Close_USD
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Coal_RB_5500_FOB_London_Close_USD
FROM data
GROUP BY Coal_RB_5500_FOB_London_Close_USD
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Coal_RB_5700_FOB_London_Close_USD
FROM data
GROUP BY Coal_RB_5700_FOB_London_Close_USD
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Coal_RB_6000_FOB_CurrentWeek_Avg_USD
FROM data
GROUP BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Coal_India_5500_CFR_London_Close_USD
FROM data
GROUP BY Coal_India_5500_CFR_London_Close_USD
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_WTI
FROM data
GROUP BY Price_WTI
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Brent_Oil
FROM data
GROUP BY Price_Brent_Oil
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Dubai_Brent_Oil
FROM data
GROUP BY Price_Dubai_Brent_Oil
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_ExxonMobil
FROM data
GROUP BY Price_ExxonMobil
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Shenhua
FROM data
GROUP BY Price_Shenhua
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_All_Share
FROM data
GROUP BY Price_All_Share
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Mining
FROM data
GROUP BY Price_Mining
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_LNG_Japan_Korea_Marker_PLATTS
FROM data
GROUP BY Price_LNG_Japan_Korea_Marker_PLATTS
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_ZAR_USD
FROM data
GROUP BY Price_ZAR_USD
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Natural_Gas
FROM data
GROUP BY Price_Natural_Gas
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_ICE
FROM data
GROUP BY Price_ICE
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Dutch_TTF
FROM data
GROUP BY Price_Dutch_TTF
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Price_Indian_en_exg_rate
FROM data
GROUP BY Price_Indian_en_exg_rate
ORDER BY COUNT(*) DESC
LIMIT 1;

--  VARIANCE

SELECT VAR_POP(Coal_RB_4800_FOB_London_Close_USD) AS variance
FROM data;

SELECT VAR_POP(Coal_RB_5500_FOB_London_Close_USD) AS variance
FROM data;

SELECT VAR_POP(Coal_RB_5700_FOB_London_Close_USD) AS variance
FROM data;

SELECT VAR_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS variance
FROM data;

SELECT VAR_POP(Coal_India_5500_CFR_London_Close_USD) AS variance
FROM data;

SELECT VAR_POP(Price_WTI) AS variance
FROM data;

SELECT VAR_POP(Price_Brent_Oil) AS variance
FROM data;

SELECT VAR_POP(Price_Dubai_Brent_Oil) AS variance
FROM data;

SELECT VAR_POP(Price_ExxonMobil) AS variance
FROM data;

SELECT VAR_POP(Price_Shenhua) AS variance
FROM data;

SELECT VAR_POP(Price_All_Share) AS variance
FROM data;

SELECT VAR_POP(Price_Mining) AS variance
FROM data;

SELECT VAR_POP(Price_LNG_Japan_Korea_Marker_PLATTS) AS variance
FROM data;

SELECT VAR_POP(Price_ZAR_USD) AS variance
FROM data;

SELECT VAR_POP(Price_Natural_Gas) AS variance
FROM data;

SELECT VAR_POP(Price_ICE) AS variance
FROM data;

SELECT VAR_POP(Price_Dutch_TTF) AS variance
FROM data;

SELECT VAR_POP(Price_Indian_en_exg_rate) AS variance
FROM data;

-- STANDARD DEVIATION

SELECT STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Coal_RB_5700_FOB_London_Close_USD) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Coal_India_5500_CFR_London_Close_USD) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_WTI) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Brent_Oil) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Dubai_Brent_Oil) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_ExxonMobil) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Shenhua) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_All_Share) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Mining) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_ZAR_USD) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Natural_Gas) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_ICE) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Dutch_TTF) AS standard_deviation
FROM data;

SELECT STDDEV_POP(Price_Indian_en_exg_rate) AS standard_deviation
FROM data;

-- SKEWNESS

SELECT 
    (n * SUM(POW(Coal_RB_4800_FOB_London_Close_USD - stats.mean, 3))) / 
    ((n - 1) * (n - 2) * POW(stats.stddev, 3)) AS skewness
FROM 
    data,
    (SELECT 
         AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean, 
         STDDEV_SAMP(Coal_RB_4800_FOB_London_Close_USD) AS stddev,
         COUNT(Coal_RB_4800_FOB_London_Close_USD) AS n
     FROM 
         data) AS stats;
         
      WITH   Skewness AS (
    SELECT
         (COUNT(*) * SUM(POWER(data.Coal_RB_4800_FOB_London_Close_USD - Averages.avg_Coal_RB_4800_FOB_London_Close_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Coal_RB_4800_FOB_London_Close_USD), 3)) AS Skewness_Coal_RB_4800_FOB_London_Close_USD,


         (COUNT(*) * SUM(POWER(data.Coal_RB_5500_FOB_London_Close_USD - Averages.avg_Coal_RB_5500_FOB_London_Close_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Coal_RB_5500_FOB_London_Close_USD), 3)) AS Skewness_Coal_RB_5500_FOB_London_Close_USD,

         (COUNT(*) * SUM(POWER(data.Coal_RB_6000_FOB_CurrentWeek_Avg_USD - Averages.avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Coal_RB_6000_FOB_CurrentWeek_Avg_USD), 3)) AS Skewness_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,

         (COUNT(*) * SUM(POWER(data.Coal_India_5500_CFR_London_Close_USD - Averages.avg_Coal_India_5500_CFR_London_Close_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Coal_India_5500_CFR_London_Close_USD), 3)) AS Skewness_Coal_India_5500_CFR_London_Close_USD,

        (COUNT(*) * SUM(POWER(data.Price_WTI - Averages.avg_Price_WTI, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_WTI), 3)) AS Skewness_Price_WTI,

        (COUNT(*) * SUM(POWER(data.Price_Brent_Oil - Averages.avg_Price_Brent_Oil, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_Brent_Oil), 3)) AS Skewness_Price_Brent_Oil,

      (COUNT(*) * SUM(POWER(data.Price_Dubai_Brent_Oil - Averages.avg_Price_Dubai_Brent_Oil, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_Dubai_Brent_Oil), 3)) AS Skewness_Price_Dubai_Brent_Oil,

           (COUNT(*) * SUM(POWER(data.Price_ExxonMobil - Averages.avg_Price_ExxonMobil, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_ExxonMobil), 3)) AS Skewness_Price_ExxonMobil,

      (COUNT(*) * SUM(POWER(data.Price_Shenhua - Averages.avg_Price_Shenhua, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_Shenhua), 3)) AS Skewness_Price_Shenhua,

       (COUNT(*) * SUM(POWER(data.Price_All_Share - Averages.avg_Price_All_Share, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_All_Share), 3)) AS Skewness_Price_All_Share,

      (COUNT(*) * SUM(POWER(data.Price_Mining - Averages.avg_Price_Mining, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_Mining), 3)) AS Skewness_Price_Mining,

        (COUNT(*) * SUM(POWER(data.Price_LNG_Japan_Korea_Marker_PLATTS - Averages.avg_Price_LNG_Japan_Korea_Marker_PLATTS, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_LNG_Japan_Korea_Marker_PLATTS), 3)) AS Skewness_Price_LNG_Japan_Korea_Marker_PLATTS,

         (COUNT(*) * SUM(POWER(data.Price_ZAR_USD - Averages.avg_Price_ZAR_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_ZAR_USD), 3)) AS Skewness_Price_ZAR_USD,


         (COUNT(*) * SUM(POWER(data.Price_Natural_Gas - Averages.avg_Price_Natural_Gas, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_Natural_Gas), 3)) AS Skewness_Price_Natural_Gas,

         (COUNT(*) * SUM(POWER(data.Price_ICE - Averages.avg_Price_ICE, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_ICE), 3)) AS Skewness_Price_ICE,

         (COUNT(*) * SUM(POWER(data.Price_Dutch_TTF - Averages.avg_Price_Dutch_TTF, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(data1.Price_Dutch_TTF), 3)) AS Skewness_Price_Dutch_TTF
    FROM data1, Averages
)
SELECT * FROM Skewness;

-- KURTOSIS

 WITH Kurtosis AS (
    SELECT
        COUNT(*) AS count_rows,
        -- Kurtosis Calculations for All Columns
         (COUNT(*) * SUM(POWER(data.Coal_RB_4800_FOB_London_Close_USD - Averages.avg_Coal_RB_4800_FOB_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Coal_RB_4800_FOB_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_4800_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(data.Coal_RB_5500_FOB_London_Close_USD - Averages.avg_Coal_RB_5500_FOB_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Coal_RB_5500_FOB_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_5500_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(data.Coal_RB_6000_FOB_CurrentWeek_Avg_USD - Averages.avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Coal_RB_6000_FOB_CurrentWeek_Avg_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,

        (COUNT(*) * SUM(POWER(data.Coal_India_5500_CFR_London_Close_USD - Averages.avg_Coal_India_5500_CFR_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Coal_India_5500_CFR_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_India_5500_CFR_London_Close_USD,

        (COUNT(*) * SUM(POWER(data.Price_WTI - Averages.avg_Price_WTI, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_WTI), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_WTI,

        (COUNT(*) * SUM(POWER(data.Price_Brent_Oil - Averages.avg_Price_Brent_Oil, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_Brent_Oil), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Brent_Oil,

        (COUNT(*) * SUM(POWER(data.Price_Dubai_Brent_Oil - Averages.avg_Price_Dubai_Brent_Oil, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_Dubai_Brent_Oil), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Dubai_Brent_Oil,

        (COUNT(*) * SUM(POWER(data.Price_ExxonMobil - Averages.avg_Price_ExxonMobil, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_ExxonMobil), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_ExxonMobil,

        (COUNT(*) * SUM(POWER(data.Price_Shenhua - Averages.avg_Price_Shenhua, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_Shenhua), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Shenhua,

        (COUNT(*) * SUM(POWER(data.Price_All_Share - Averages.avg_Price_All_Share, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_All_Share), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_All_Share,

        (COUNT(*) * SUM(POWER(data.Price_Mining - Averages.avg_Price_Mining, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_Mining), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Mining,

        (COUNT(*) * SUM(POWER(data.Price_LNG_Japan_Korea_Marker_PLATTS - Averages.avg_Price_LNG_Japan_Korea_Marker_PLATTS, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_LNG_Japan_Korea_Marker_PLATTS), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_LNG_Japan_Korea_Marker_PLATTS,

        (COUNT(*) * SUM(POWER(data.Price_ZAR_USD - Averages.avg_Price_ZAR_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_ZAR_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_ZAR_USD,

        (COUNT(*) * SUM(POWER(data.Price_Natural_Gas - Averages.avg_Price_Natural_Gas, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_Natural_Gas), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Natural_Gas,

        (COUNT(*) * SUM(POWER(data.Price_ICE - Averages.avg_Price_ICE, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_ICE), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_ICE,

        (COUNT(*) * SUM(POWER(data.Price_Dutch_TTF - Averages.avg_Price_Dutch_TTF, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(data.Price_Dutch_TTF), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Dutch_TTF

    FROM data, Averages
)
SELECT * FROM Kurtosis;
