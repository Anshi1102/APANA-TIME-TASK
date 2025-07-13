
-- SQL Code for Exploratory Data Analysis (EDA)
-- Load the dataset
-- Mean
SELECT AVG(column_name) AS mean FROM dataset;

-- Median
SELECT column_name FROM (
    SELECT column_name, ROW_NUMBER() OVER (ORDER BY column_name) AS rownum
    FROM dataset
) AS temp
WHERE rownum = (SELECT COUNT(*)/2 FROM dataset);

-- Mode
SELECT column_name FROM dataset
GROUP BY column_name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Standard Deviation and Variance
SELECT STDDEV(column_name), VARIANCE(column_name) FROM dataset;

-- Skewness and Kurtosis (needs manual calculation or extension functions)
