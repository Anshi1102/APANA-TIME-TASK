CREATE DATABASE coal_analysis;

USE coal_analysis;

CREATE TABLE dataset (
    Date DATE,
    Coal_RB_4800_FOB_London_Close_USD FLOAT,
    Coal_RB_5500_FOB_London_Close_USD FLOAT,
    Coal_RB_5700_FOB_London_Close_USD FLOAT,
    Coal_RB_6000_FOB_CurrentWeek_Avg_USD FLOAT,
    Coal_India_5500_CFR_London_Close_USD FLOAT,
    Price_WTI FLOAT,
    Price_Brent_Oil FLOAT,
    Price_Dubai_Brent_Oil FLOAT,
    Price_ExxonMobil FLOAT,
    Price_Shenhua FLOAT,
    Price_All_Share FLOAT,
    Price_Mining FLOAT,
    Price_LNG_Japan_Korea_Marker_PLATTS FLOAT,
    Price_ZAR_USD FLOAT,
    Price_Natural_Gas FLOAT,
    Price_ICE FLOAT,
    Price_Dutch_TTF FLOAT,
    Price_Indian_en_exg_rate FLOAT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dataset.csv'
INTO TABLE dataset
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Mean for all columns
SELECT
    AVG(Coal_RB_4800_FOB_London_Close_USD) AS Mean_Coal_RB_4800_FOB_London_Close_USD,
    AVG(Coal_RB_5500_FOB_London_Close_USD) AS Mean_Coal_RB_5500_FOB_London_Close_USD,
    AVG(Coal_RB_5700_FOB_London_Close_USD) AS Mean_Coal_RB_5700_FOB_London_Close_USD,
    AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Mean_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
    AVG(Coal_India_5500_CFR_London_Close_USD) AS Mean_Coal_India_5500_CFR_London_Close_USD,
    AVG(Price_WTI) AS Mean_Price_WTI,
    AVG(Price_Brent_Oil) AS Mean_Price_Brent_Oil,
    AVG(Price_Dubai_Brent_Oil) AS Mean_Price_Dubai_Brent_Oil,
    AVG(Price_ExxonMobil) AS Mean_Price_ExxonMobil,
    AVG(Price_Shenhua) AS Mean_Price_Shenhua,
    AVG(Price_All_Share) AS Mean_Price_All_Share,
    AVG(Price_Mining) AS Mean_Price_Mining,
    AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS Mean_Price_LNG_Japan_Korea_Marker_PLATTS,
    AVG(Price_ZAR_USD) AS Mean_Price_ZAR_USD,
    AVG(Price_Natural_Gas) AS Mean_Price_Natural_Gas,
    AVG(Price_ICE) AS Mean_Price_ICE,
    AVG(Price_Dutch_TTF) AS Mean_Price_Dutch_TTF,
    AVG(Price_Indian_en_exg_rate) AS Mean_Price_Indian_en_exg_rate
FROM dataset;

-- Range for all columns
SELECT
    MAX(Coal_RB_4800_FOB_London_Close_USD) - MIN(Coal_RB_4800_FOB_London_Close_USD) AS Range_Coal_RB_4800,
    MAX(Coal_RB_5500_FOB_London_Close_USD) - MIN(Coal_RB_5500_FOB_London_Close_USD) AS Range_Coal_RB_5500,
    MAX(Coal_RB_5700_FOB_London_Close_USD) - MIN(Coal_RB_5700_FOB_London_Close_USD) AS Range_Coal_RB_5700,
    MAX(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - MIN(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Range_Coal_RB_6000,
    MAX(Coal_India_5500_CFR_London_Close_USD) - MIN(Coal_India_5500_CFR_London_Close_USD) AS Range_Coal_India,
    MAX(Price_WTI) - MIN(Price_WTI) AS Range_WTI,
    MAX(Price_Brent_Oil) - MIN(Price_Brent_Oil) AS Range_Brent,
    MAX(Price_Dubai_Brent_Oil) - MIN(Price_Dubai_Brent_Oil) AS Range_Dubai,
    MAX(Price_ExxonMobil) - MIN(Price_ExxonMobil) AS Range_Exxon,
    MAX(Price_Shenhua) - MIN(Price_Shenhua) AS Range_Shenhua,
    MAX(Price_All_Share) - MIN(Price_All_Share) AS Range_All_Share,
    MAX(Price_Mining) - MIN(Price_Mining) AS Range_Mining,
    MAX(Price_LNG_Japan_Korea_Marker_PLATTS) - MIN(Price_LNG_Japan_Korea_Marker_PLATTS) AS Range_LNG,
    MAX(Price_ZAR_USD) - MIN(Price_ZAR_USD) AS Range_ZAR_USD,
    MAX(Price_Natural_Gas) - MIN(Price_Natural_Gas) AS Range_Natural_Gas,
    MAX(Price_ICE) - MIN(Price_ICE) AS Range_ICE,
    MAX(Price_Dutch_TTF) - MIN(Price_Dutch_TTF) AS Range_Dutch_TTF,
    MAX(Price_Indian_en_exg_rate) - MIN(Price_Indian_en_exg_rate) AS Range_Exg_Rate
FROM dataset;

-- Variance for all columns
SELECT
    VAR_POP(Coal_RB_4800_FOB_London_Close_USD) AS Var_Coal_RB_4800,
    VAR_POP(Coal_RB_5500_FOB_London_Close_USD) AS Var_Coal_RB_5500,
    VAR_POP(Coal_RB_5700_FOB_London_Close_USD) AS Var_Coal_RB_5700,
    VAR_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Var_Coal_RB_6000,
    VAR_POP(Coal_India_5500_CFR_London_Close_USD) AS Var_Coal_India,
    VAR_POP(Price_WTI) AS Var_WTI,
    VAR_POP(Price_Brent_Oil) AS Var_Brent,
    VAR_POP(Price_Dubai_Brent_Oil) AS Var_Dubai,
    VAR_POP(Price_ExxonMobil) AS Var_Exxon,
    VAR_POP(Price_Shenhua) AS Var_Shenhua,
    VAR_POP(Price_All_Share) AS Var_All_Share,
    VAR_POP(Price_Mining) AS Var_Mining,
    VAR_POP(Price_LNG_Japan_Korea_Marker_PLATTS) AS Var_LNG,
    VAR_POP(Price_ZAR_USD) AS Var_ZAR_USD,
    VAR_POP(Price_Natural_Gas) AS Var_Natural_Gas,
    VAR_POP(Price_ICE) AS Var_ICE,
    VAR_POP(Price_Dutch_TTF) AS Var_Dutch_TTF,
    VAR_POP(Price_Indian_en_exg_rate) AS Var_Exg_Rate
FROM dataset;

-- Standard Deviation for all columns
SELECT
    STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD) AS StdDev_Coal_RB_4800,
	STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD) AS StdDev_Coal_RB_5500,
    STDDEV_POP(Coal_RB_5700_FOB_London_Close_USD) AS StdDev_Coal_RB_5700,
    STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS StdDev_Coal_RB_6000,
    STDDEV_POP(Coal_India_5500_CFR_London_Close_USD) AS StdDev_Coal_India,
    STDDEV_POP(Price_WTI) AS StdDev_WTI,
    STDDEV_POP(Price_Brent_Oil) AS StdDev_Brent,
	STDDEV_POP(Price_Dubai_Brent_Oil) AS StdDev_Dubai,
    STDDEV_POP(Price_ExxonMobil) AS StdDev_Exxon,
	STDDEV_POP(Price_Shenhua) AS StdDev_Shenhua,
    STDDEV_POP(Price_All_Share) AS StdDev_All_Share,
    STDDEV_POP(Price_Mining) AS StdDev_Mining,
	STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS) AS StdDev_LNG,
    STDDEV_POP(Price_ZAR_USD) AS StdDev_ZAR_USD,
    STDDEV_POP(Price_Natural_Gas) AS StdDev_Natural_Gas,
    STDDEV_POP(Price_ICE) AS StdDev_ICE,
    STDDEV_POP(Price_Dutch_TTF) AS StdDev_Dutch_TTF,
    STDDEV_POP(Price_Indian_en_exg_rate) AS StdDev_Exg_Rate
FROM dataset;

-- Mode for all columns
SELECT
    (SELECT Coal_RB_4800_FOB_London_Close_USD 
     FROM dataset 
     GROUP BY Coal_RB_4800_FOB_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Coal_RB_4800,

    (SELECT Coal_RB_5500_FOB_London_Close_USD 
     FROM dataset 
     GROUP BY Coal_RB_5500_FOB_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Coal_RB_5500,

    (SELECT Coal_RB_5700_FOB_London_Close_USD 
     FROM dataset 
     GROUP BY Coal_RB_5700_FOB_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Coal_RB_5700,

    (SELECT Coal_RB_6000_FOB_CurrentWeek_Avg_USD 
     FROM dataset 
     GROUP BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Coal_RB_6000,

    (SELECT Coal_India_5500_CFR_London_Close_USD 
     FROM dataset 
     GROUP BY Coal_India_5500_CFR_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Coal_India,

    (SELECT Price_WTI 
     FROM dataset 
     GROUP BY Price_WTI 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_WTI,

    (SELECT Price_Brent_Oil 
     FROM dataset 
     GROUP BY Price_Brent_Oil 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Brent,

    (SELECT Price_Dubai_Brent_Oil 
     FROM dataset 
     GROUP BY Price_Dubai_Brent_Oil 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Dubai,

    (SELECT Price_ExxonMobil 
     FROM dataset 
     GROUP BY Price_ExxonMobil 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Exxon,

    (SELECT Price_Shenhua 
     FROM dataset 
     GROUP BY Price_Shenhua 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Shenhua,

    (SELECT Price_All_Share 
     FROM dataset 
     GROUP BY Price_All_Share 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_All_Share,

    (SELECT Price_Mining 
     FROM dataset 
     GROUP BY Price_Mining 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Mining,

    (SELECT Price_LNG_Japan_Korea_Marker_PLATTS 
     FROM dataset 
     GROUP BY Price_LNG_Japan_Korea_Marker_PLATTS 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_LNG,

    (SELECT Price_ZAR_USD 
     FROM dataset 
     GROUP BY Price_ZAR_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_ZAR_USD,

    (SELECT Price_Natural_Gas 
     FROM dataset 
     GROUP BY Price_Natural_Gas 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Natural_Gas,

    (SELECT Price_ICE 
     FROM dataset 
     GROUP BY Price_ICE 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_ICE,

    (SELECT Price_Dutch_TTF 
     FROM dataset 
     GROUP BY Price_Dutch_TTF 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Dutch_TTF,

    (SELECT Price_Indian_en_exg_rate 
     FROM dataset 
     GROUP BY Price_Indian_en_exg_rate 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS Mode_Exg_Rate;

-- Median for all columns
WITH 
ordered_data AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Coal_RB_4800_FOB_London_Close_USD) AS rn_Coal_RB_4800,
           ROW_NUMBER() OVER (ORDER BY Coal_RB_5500_FOB_London_Close_USD) AS rn_Coal_RB_5500,
           ROW_NUMBER() OVER (ORDER BY Coal_RB_5700_FOB_London_Close_USD) AS rn_Coal_RB_5700,
           ROW_NUMBER() OVER (ORDER BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS rn_Coal_RB_6000,
           ROW_NUMBER() OVER (ORDER BY Coal_India_5500_CFR_London_Close_USD) AS rn_Coal_India,
           ROW_NUMBER() OVER (ORDER BY Price_WTI) AS rn_WTI,
           ROW_NUMBER() OVER (ORDER BY Price_Brent_Oil) AS rn_Brent,
           ROW_NUMBER() OVER (ORDER BY Price_Dubai_Brent_Oil) AS rn_Dubai,
           ROW_NUMBER() OVER (ORDER BY Price_ExxonMobil) AS rn_Exxon,
           ROW_NUMBER() OVER (ORDER BY Price_Shenhua) AS rn_Shenhua,
           ROW_NUMBER() OVER (ORDER BY Price_All_Share) AS rn_All_Share,
           ROW_NUMBER() OVER (ORDER BY Price_Mining) AS rn_Mining,
           ROW_NUMBER() OVER (ORDER BY Price_LNG_Japan_Korea_Marker_PLATTS) AS rn_LNG,
           ROW_NUMBER() OVER (ORDER BY Price_ZAR_USD) AS rn_ZAR,
           ROW_NUMBER() OVER (ORDER BY Price_Natural_Gas) AS rn_NG,
           ROW_NUMBER() OVER (ORDER BY Price_ICE) AS rn_ICE,
           ROW_NUMBER() OVER (ORDER BY Price_Dutch_TTF) AS rn_TTF,
           ROW_NUMBER() OVER (ORDER BY Price_Indian_en_exg_rate) AS rn_Exg,
           COUNT(*) OVER () AS total_rows
    FROM dataset
)
SELECT 
    AVG(CASE WHEN rn_Coal_RB_4800 IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Coal_RB_4800_FOB_London_Close_USD END) AS Median_Coal_RB_4800,
    AVG(CASE WHEN rn_Coal_RB_5500 IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Coal_RB_5500_FOB_London_Close_USD END) AS Median_Coal_RB_5500,
    AVG(CASE WHEN rn_Coal_RB_5700 IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Coal_RB_5700_FOB_London_Close_USD END) AS Median_Coal_RB_5700,
    AVG(CASE WHEN rn_Coal_RB_6000 IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Coal_RB_6000_FOB_CurrentWeek_Avg_USD END) AS Median_Coal_RB_6000,
    AVG(CASE WHEN rn_Coal_India IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Coal_India_5500_CFR_London_Close_USD END) AS Median_Coal_India,
    AVG(CASE WHEN rn_WTI IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_WTI END) AS Median_WTI,
    AVG(CASE WHEN rn_Brent IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Brent_Oil END) AS Median_Brent,
    AVG(CASE WHEN rn_Dubai IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Dubai_Brent_Oil END) AS Median_Dubai,
    AVG(CASE WHEN rn_Exxon IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_ExxonMobil END) AS Median_Exxon,
    AVG(CASE WHEN rn_Shenhua IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Shenhua END) AS Median_Shenhua,
    AVG(CASE WHEN rn_All_Share IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_All_Share END) AS Median_All_Share,
    AVG(CASE WHEN rn_Mining IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Mining END) AS Median_Mining,
    AVG(CASE WHEN rn_LNG IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_LNG_Japan_Korea_Marker_PLATTS END) AS Median_LNG,
    AVG(CASE WHEN rn_ZAR IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_ZAR_USD END) AS Median_ZAR,
    AVG(CASE WHEN rn_NG IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Natural_Gas END) AS Median_NG,
    AVG(CASE WHEN rn_ICE IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_ICE END) AS Median_ICE,
    AVG(CASE WHEN rn_TTF IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Dutch_TTF END) AS Median_TTF,
    AVG(CASE WHEN rn_Exg IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2)) THEN Price_Indian_en_exg_rate END) AS Median_Exg
FROM ordered_data;

-- SKEWNESS for all columns
WITH base AS (
    SELECT 
        Coal_RB_4800_FOB_London_Close_USD,
        Coal_RB_5500_FOB_London_Close_USD,
        Coal_RB_5700_FOB_London_Close_USD,
        Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
        Coal_India_5500_CFR_London_Close_USD,
        Price_WTI,
        Price_Brent_Oil,
        Price_Dubai_Brent_Oil,
        Price_ExxonMobil,
        Price_Shenhua,
        Price_All_Share,
        Price_Mining,
        Price_LNG_Japan_Korea_Marker_PLATTS,
        Price_ZAR_USD,
        Price_Natural_Gas,
        Price_ICE,
        Price_Dutch_TTF,
        Price_Indian_en_exg_rate
    FROM dataset
),
means AS (
    SELECT
        AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean_4800,
        STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD) AS std_4800,

        AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean_5500,
        STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD) AS std_5500,

        AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean_5700,
        STDDEV_POP(Coal_RB_5700_FOB_London_Close_USD) AS std_5700,

        AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS mean_6000,
        STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS std_6000,

        AVG(Coal_India_5500_CFR_London_Close_USD) AS mean_india,
        STDDEV_POP(Coal_India_5500_CFR_London_Close_USD) AS std_india,

        AVG(Price_WTI) AS mean_wti,
        STDDEV_POP(Price_WTI) AS std_wti,

        AVG(Price_Brent_Oil) AS mean_brent,
        STDDEV_POP(Price_Brent_Oil) AS std_brent,

        AVG(Price_Dubai_Brent_Oil) AS mean_dubai,
        STDDEV_POP(Price_Dubai_Brent_Oil) AS std_dubai,

        AVG(Price_ExxonMobil) AS mean_exxon,
        STDDEV_POP(Price_ExxonMobil) AS std_exxon,

        AVG(Price_Shenhua) AS mean_shenhua,
        STDDEV_POP(Price_Shenhua) AS std_shenhua,

        AVG(Price_All_Share) AS mean_all,
        STDDEV_POP(Price_All_Share) AS std_all,

        AVG(Price_Mining) AS mean_mining,
        STDDEV_POP(Price_Mining) AS std_mining,

        AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS mean_lng,
        STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS) AS std_lng,

        AVG(Price_ZAR_USD) AS mean_zar,
        STDDEV_POP(Price_ZAR_USD) AS std_zar,

        AVG(Price_Natural_Gas) AS mean_gas,
        STDDEV_POP(Price_Natural_Gas) AS std_gas,

        AVG(Price_ICE) AS mean_ice,
        STDDEV_POP(Price_ICE) AS std_ice,

        AVG(Price_Dutch_TTF) AS mean_ttf,
        STDDEV_POP(Price_Dutch_TTF) AS std_ttf,

        AVG(Price_Indian_en_exg_rate) AS mean_exg,
        STDDEV_POP(Price_Indian_en_exg_rate) AS std_exg
    FROM base
),
moments AS (
    SELECT
        AVG(POW(Coal_RB_4800_FOB_London_Close_USD - mean_4800, 3)) AS m3_4800,
        AVG(POW(Coal_RB_5500_FOB_London_Close_USD - mean_5500, 3)) AS m3_5500,
        AVG(POW(Coal_RB_5700_FOB_London_Close_USD - mean_5700, 3)) AS m3_5700,
        AVG(POW(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - mean_6000, 3)) AS m3_6000,
        AVG(POW(Coal_India_5500_CFR_London_Close_USD - mean_india, 3)) AS m3_india,
        AVG(POW(Price_WTI - mean_wti, 3)) AS m3_wti,
        AVG(POW(Price_Brent_Oil - mean_brent, 3)) AS m3_brent,
        AVG(POW(Price_Dubai_Brent_Oil - mean_dubai, 3)) AS m3_dubai,
        AVG(POW(Price_ExxonMobil - mean_exxon, 3)) AS m3_exxon,
        AVG(POW(Price_Shenhua - mean_shenhua, 3)) AS m3_shenhua,
        AVG(POW(Price_All_Share - mean_all, 3)) AS m3_all,
        AVG(POW(Price_Mining - mean_mining, 3)) AS m3_mining,
        AVG(POW(Price_LNG_Japan_Korea_Marker_PLATTS - mean_lng, 3)) AS m3_lng,
        AVG(POW(Price_ZAR_USD - mean_zar, 3)) AS m3_zar,
        AVG(POW(Price_Natural_Gas - mean_gas, 3)) AS m3_gas,
        AVG(POW(Price_ICE - mean_ice, 3)) AS m3_ice,
        AVG(POW(Price_Dutch_TTF - mean_ttf, 3)) AS m3_ttf,
        AVG(POW(Price_Indian_en_exg_rate - mean_exg, 3)) AS m3_exg
    FROM base
    JOIN means ON 1=1
)

SELECT
    (m3_4800 / POW(std_4800, 3)) AS skew_4800,
    (m3_5500 / POW(std_5500, 3)) AS skew_5500,
    (m3_5700 / POW(std_5700, 3)) AS skew_5700,
    (m3_6000 / POW(std_6000, 3)) AS skew_6000,
    (m3_india / POW(std_india, 3)) AS skew_india,
    (m3_wti / POW(std_wti, 3)) AS skew_wti,
    (m3_brent / POW(std_brent, 3)) AS skew_brent,
    (m3_dubai / POW(std_dubai, 3)) AS skew_dubai,
    (m3_exxon / POW(std_exxon, 3)) AS skew_exxon,
    (m3_shenhua / POW(std_shenhua, 3)) AS skew_shenhua,
    (m3_all / POW(std_all, 3)) AS skew_all,
    (m3_mining / POW(std_mining, 3)) AS skew_mining,
    (m3_lng / POW(std_lng, 3)) AS skew_lng,
    (m3_zar / POW(std_zar, 3)) AS skew_zar,
    (m3_gas / POW(std_gas, 3)) AS skew_gas,
    (m3_ice / POW(std_ice, 3)) AS skew_ice,
    (m3_ttf / POW(std_ttf, 3)) AS skew_ttf,
    (m3_exg / POW(std_exg, 3)) AS skew_exg
FROM moments
JOIN means ON 1=1;

-- KURTOSIS for all columns
WITH base AS (
    SELECT 
        Coal_RB_4800_FOB_London_Close_USD,
        Coal_RB_5500_FOB_London_Close_USD,
        Coal_RB_5700_FOB_London_Close_USD,
        Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
        Coal_India_5500_CFR_London_Close_USD,
        Price_WTI,
        Price_Brent_Oil,
        Price_Dubai_Brent_Oil,
        Price_ExxonMobil,
        Price_Shenhua,
        Price_All_Share,
        Price_Mining,
        Price_LNG_Japan_Korea_Marker_PLATTS,
        Price_ZAR_USD,
        Price_Natural_Gas,
        Price_ICE,
        Price_Dutch_TTF,
        Price_Indian_en_exg_rate
    FROM dataset
),
means AS (
    SELECT
        AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean_4800,
        STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD) AS std_4800,

        AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean_5500,
        STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD) AS std_5500,

        AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean_5700,
        STDDEV_POP(Coal_RB_5700_FOB_London_Close_USD) AS std_5700,

        AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS mean_6000,
        STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS std_6000,

        AVG(Coal_India_5500_CFR_London_Close_USD) AS mean_india,
        STDDEV_POP(Coal_India_5500_CFR_London_Close_USD) AS std_india,

        AVG(Price_WTI) AS mean_wti,
        STDDEV_POP(Price_WTI) AS std_wti,

        AVG(Price_Brent_Oil) AS mean_brent,
        STDDEV_POP(Price_Brent_Oil) AS std_brent,

        AVG(Price_Dubai_Brent_Oil) AS mean_dubai,
        STDDEV_POP(Price_Dubai_Brent_Oil) AS std_dubai,

        AVG(Price_ExxonMobil) AS mean_exxon,
        STDDEV_POP(Price_ExxonMobil) AS std_exxon,

        AVG(Price_Shenhua) AS mean_shenhua,
        STDDEV_POP(Price_Shenhua) AS std_shenhua,

        AVG(Price_All_Share) AS mean_all,
        STDDEV_POP(Price_All_Share) AS std_all,

        AVG(Price_Mining) AS mean_mining,
        STDDEV_POP(Price_Mining) AS std_mining,

        AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS mean_lng,
        STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS) AS std_lng,

        AVG(Price_ZAR_USD) AS mean_zar,
        STDDEV_POP(Price_ZAR_USD) AS std_zar,

        AVG(Price_Natural_Gas) AS mean_gas,
        STDDEV_POP(Price_Natural_Gas) AS std_gas,

        AVG(Price_ICE) AS mean_ice,
        STDDEV_POP(Price_ICE) AS std_ice,

        AVG(Price_Dutch_TTF) AS mean_ttf,
        STDDEV_POP(Price_Dutch_TTF) AS std_ttf,

        AVG(Price_Indian_en_exg_rate) AS mean_exg,
        STDDEV_POP(Price_Indian_en_exg_rate) AS std_exg
    FROM base
),
moments AS (
    SELECT
        AVG(POW(Coal_RB_4800_FOB_London_Close_USD - mean_4800, 4)) AS m4_4800,
        AVG(POW(Coal_RB_5500_FOB_London_Close_USD - mean_5500, 4)) AS m4_5500,
        AVG(POW(Coal_RB_5700_FOB_London_Close_USD - mean_5700, 4)) AS m4_5700,
        AVG(POW(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - mean_6000, 4)) AS m4_6000,
        AVG(POW(Coal_India_5500_CFR_London_Close_USD - mean_india, 4)) AS m4_india,
        AVG(POW(Price_WTI - mean_wti, 4)) AS m4_wti,
        AVG(POW(Price_Brent_Oil - mean_brent, 4)) AS m4_brent,
        AVG(POW(Price_Dubai_Brent_Oil - mean_dubai, 4)) AS m4_dubai,
        AVG(POW(Price_ExxonMobil - mean_exxon, 4)) AS m4_exxon,
        AVG(POW(Price_Shenhua - mean_shenhua, 4)) AS m4_shenhua,
        AVG(POW(Price_All_Share - mean_all, 4)) AS m4_all,
        AVG(POW(Price_Mining - mean_mining, 4)) AS m4_mining,
        AVG(POW(Price_LNG_Japan_Korea_Marker_PLATTS - mean_lng, 4)) AS m4_lng,
        AVG(POW(Price_ZAR_USD - mean_zar, 4)) AS m4_zar,
        AVG(POW(Price_Natural_Gas - mean_gas, 4)) AS m4_gas,
        AVG(POW(Price_ICE - mean_ice, 4)) AS m4_ice,
        AVG(POW(Price_Dutch_TTF - mean_ttf, 4)) AS m4_ttf,
        AVG(POW(Price_Indian_en_exg_rate - mean_exg, 4)) AS m4_exg
    FROM base
    JOIN means ON 1=1
)

SELECT
    (m4_4800 / POW(std_4800, 4)) - 3 AS kurt_4800,
    (m4_5500 / POW(std_5500, 4)) - 3 AS kurt_5500,
    (m4_5700 / POW(std_5700, 4)) - 3 AS kurt_5700,
    (m4_6000 / POW(std_6000, 4)) - 3 AS kurt_6000,
    (m4_india / POW(std_india, 4)) - 3 AS kurt_india,
    (m4_wti / POW(std_wti, 4)) - 3 AS kurt_wti,
    (m4_brent / POW(std_brent, 4)) - 3 AS kurt_brent,
    (m4_dubai / POW(std_dubai, 4)) - 3 AS kurt_dubai,
    (m4_exxon / POW(std_exxon, 4)) - 3 AS kurt_exxon,
    (m4_shenhua / POW(std_shenhua, 4)) - 3 AS kurt_shenhua,
    (m4_all / POW(std_all, 4)) - 3 AS kurt_all,
    (m4_mining / POW(std_mining, 4)) - 3 AS kurt_mining,
    (m4_lng / POW(std_lng, 4)) - 3 AS kurt_lng,
    (m4_zar / POW(std_zar, 4)) - 3 AS kurt_zar,
    (m4_gas / POW(std_gas, 4)) - 3 AS kurt_gas,
    (m4_ice / POW(std_ice, 4)) - 3 AS kurt_ice,
    (m4_ttf / POW(std_ttf, 4)) - 3 AS kurt_ttf,
    (m4_exg / POW(std_exg, 4)) - 3 AS kurt_exg
FROM moments
JOIN means ON 1=1;