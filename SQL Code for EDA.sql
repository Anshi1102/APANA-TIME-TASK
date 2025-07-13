SELECT AVG(Price_WTI) AS Mean_Price_WTI FROM dataset;

SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Price_WTI) AS Median_Price_WTI FROM dataset;

SELECT Price_WTI, COUNT(*) AS Frequency FROM dataset GROUP BY Price_WTI ORDER BY Frequency DESC


SELECT VARIANCE(Price_WTI) AS Variance_Price_WTI FROM dataset;

SELECT STDDEV(Price_WTI) AS StdDev_Price_WTI FROM dataset;

SELECT MAX(Price_WTI) - MIN(Price_WTI) AS Range_Price_WTI FROM dataset;


SELECT 
  COUNT(*) AS n,
  AVG(Price_WTI) AS mean,
  STDDEV(Price_WTI) AS stddev,
  SUM(POWER((Price_WTI - (SELECT AVG(Price_WTI) FROM dataset)) / 
      (SELECT STDDEV(Price_WTI) FROM dataset), 3)) 
      / COUNT(*) AS Skewness_Price_WTI
FROM dataset;

SELECT 
  SUM(POWER((Price_WTI - (SELECT AVG(Price_WTI) FROM dataset)) / 
      (SELECT STDDEV(Price_WTI) FROM dataset), 4)) 
      / COUNT(*) AS Kurtosis_Price_WTI
FROM dataset;