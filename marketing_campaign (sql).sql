create schema Marketing_Project;
#data is of the year 2017

use Marketing_Project;


select * from Marketing_campaign;


SELECT 
    COUNT(*)
FROM
    Marketing_campaign;



SELECT 
    COUNT(ID), COUNT(DISTINCT (ID))
FROM
    Marketing_campaign;
#Thus we dont have any duplicate value



select count(AcceptedCmp1) from Marketing_campaign where AcceptedCmp1=1 union all
select count(AcceptedCmp2) from Marketing_campaign where AcceptedCmp2=1 union all
select count(AcceptedCmp3) from Marketing_campaign where AcceptedCmp3=1 union all
select count(AcceptedCmp4) from Marketing_campaign where AcceptedCmp4=1 union all
select count(AcceptedCmp5) from Marketing_campaign where AcceptedCmp5=1 union all
select count(Response) from Marketing_campaign where Response=1;



SELECT 
    *
FROM
    Marketing_campaign
WHERE
    Income = 0;



SELECT 
    Year_Birth, Education, Marital_Status, Income
FROM
    Marketing_campaign
WHERE
    Complain = 1;



SELECT 
    Education, AVG(Income) AS Avg_Income
FROM
    Marketing_campaign
GROUP BY Education



SELECT 
    ID,
    Income,
    Education,
    (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS Total_purchase
FROM
    Marketing_campaign
ORDER BY Total_purchase DESC
LIMIT 10



SELECT 
    SUM(NumDealsPurchases),
    SUM(NumWebPurchases),
    SUM(NumCatalogPurchases),
    SUM(NumStorePurchases)
FROM
    Marketing_campaign



SELECT 
    AVG(NumDealsPurchases),
    AVG(NumWebPurchases),
    AVG(NumCatalogPurchases),
    AVG(NumStorePurchases)
FROM
    Marketing_campaign



SELECT 
    AVG(Income)
FROM
    Marketing_campaign;



SELECT 
    income, recency
FROM
    Marketing_campaign
ORDER BY recency DESC;



SELECT 
    Marital_Status, COUNT(Marital_Status)
FROM
    Marketing_campaign
GROUP BY Marital_Status



select ID,Income,MntWines,Marital_Status from Marketing_campaign group by Marital_Status order by MntWines asc limit 500
select ID,Income,MntFruits,Marital_Status from Marketing_campaign group by Marital_Status order by MntFruits asc limit 500
select ID,Income,MntMeatProducts,Marital_Status from Marketing_campaign group by Marital_Status order by MntMeatProducts asc limit 500
select ID,Income,MntFishProducts,Marital_Status from Marketing_campaign group by Marital_Status order by MntFishProducts asc limit 500
select ID,Income,MntSweetProducts,Marital_Status from Marketing_campaign group by Marital_Status order by MntSweetProducts asc limit 500
select ID,Income,MntGoldProds,Marital_Status from Marketing_campaign group by Marital_Status order by MntGoldProds asc limit 500



SELECT 
    AVG(MntWines),
    AVG(MntFruits),
    AVG(MntMeatProducts),
    AVG(MntFishProducts),
    AVG(MntSweetProducts),
    AVG(MntGoldProds)
FROM
    Marketing_campaign



SELECT 
    (2017 - Year_Birth) AS Age,
    Education,
    Marital_Status,
    AVG(Income)
FROM
    Marketing_campaign
GROUP BY Age
ORDER BY AVG(Income) DESC



SELECT 
    ID, (Kidhome + Teenhome) AS Total_Children
FROM
    Marketing_campaign



SELECT 
    Year_Birth, COUNT(Year_Birth)
FROM
    Marketing_campaign
GROUP BY Year_Birth
ORDER BY COUNT(Year_Birth) DESC



SELECT 
    ID
FROM
    Marketing_campaign
WHERE
    Complain = 1



SELECT 
    (2017 - Year_Birth) AS Age,
    COUNT(2017 - Year_Birth) AS Age_Count
FROM
    Marketing_campaign
GROUP BY (2017 - Year_Birth)
ORDER BY Age_Count DESC



SELECT 
    EXTRACT(YEAR FROM Dt_Customer) AS year_enrolled,
    SUM(MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS Total_purchase
FROM
    Marketing_campaign
GROUP BY year_enrolled



SELECT 
    (2017 - Year_Birth) AS Age,
    COUNT(2017 - Year_Birth) AS Age_Count,
    SUM(MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS Total_purchase,
    (SUM(MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) / COUNT(2017 - Year_Birth)) AS Avg_purcahse_per_age
FROM
    Marketing_campaign
GROUP BY Age
ORDER BY Avg_purcahse_per_age DESC



SELECT 
    (2017 - Year_Birth) AS Age,
    SUM(NumDealsPurchases+NumWebPurchases+NumCatalogPurchases+NumStorePurchases) AS Total_purchase_via
    FROM
    Marketing_campaign
GROUP BY Age
ORDER BY Total_purchase_via DESC



SELECT 
    (2017 - Year_Birth) AS Age,
    COUNT(2017 - Year_Birth) AS Age_Count,
    SUM(NumDealsPurchases+NumWebPurchases+NumCatalogPurchases+NumStorePurchases) AS Total_purchase_via,
    (SUM(NumDealsPurchases+NumWebPurchases+NumCatalogPurchases+NumStorePurchases) / COUNT(2017 - Year_Birth)) AS Avg_purchase_via_per_age
    FROM
    Marketing_campaign
GROUP BY Age
ORDER BY Avg_purchase_via_per_age DESC



SELECT 
    (2017 - Year_Birth) AS Age, avg(NumWebVisitsMonth)
FROM
    Marketing_campaign
GROUP BY age
ORDER BY avg(NumWebVisitsMonth) DESC



