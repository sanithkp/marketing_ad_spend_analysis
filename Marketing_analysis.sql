select count(*) as total_rows from marketing_data

select top 5 * from marketing_data


select 
	MIN(date) as first_date,
	MAX(date) as last_date,
	count(*) as total_rows,
	COUNT(distinct platform) as platform,
	count(distinct campaign_type) as campaign_type,
	COUNT(distinct industry)as industry,
	COUNT(distinct country)as country
	from marketing_data


select distinct country as country from marketing_data
order by country

select * from marketing_data

select 
	ROUND(SUM(ad_spend),2)as total_spend,
	ROUND(SUM(revenue),2) as total_revenue,
	ROUND(SUM(revenue)-SUM(ad_spend),2)as total_profit,
	ROUND(((SUM(revenue)-SUM(ad_spend))/SUM(ad_spend))*100,2) as overall_ROI_pct,
	ROUND(SUM(revenue)/SUM(ad_spend),2)as overall_ROAS,
	SUM(impressions) as total_impressions,
	SUM(clicks) as toal_clicks,
	SUM(conversions)as total_conversion,
	ROUND(sum(clicks)*100.0/SUM(impressions),4)as overall_CTR,
	ROUND(SUM(conversions)*100.0/SUM(clicks),2)as overall_CVR
	from marketing_data


SELECT
    ROUND(SUM(ad_spend), 2) AS Total_Spend,
    ROUND(SUM(revenue), 2) AS Total_Revenue,
    ROUND(SUM(revenue) - SUM(ad_spend), 2) AS Total_Profit,
    ROUND(((SUM(revenue) - SUM(ad_spend)) / SUM(ad_spend)) * 100, 2) AS Overall_ROI_Pct,
    ROUND(SUM(revenue) / SUM(ad_spend), 2) AS Overall_ROAS
FROM marketing_data;



select * from marketing_data

SELECT platform,
count(*)as total_campaigns,
ROUND(SUM(ad_spend),2)as total_spend,
ROUND(SUM(revenue),2)as total_revenue,
ROUND(SUM(revenue)-SUM(ad_spend),2)as total_profit,
ROUND(SUM(revenue)/SUM(ad_spend),2)as ROAS,
ROUND((SUM(revenue)-SUM(ad_spend))/SUM(ad_spend)*100.0,2) as ROI_pct,
ROUND(SUM(clicks)*100.0/SUM(impressions),4)as CTR,
ROUND(SUM(conversions)*100.0/SUM(clicks),2)as CVR,
ROUND(SUM(ad_spend)/SUM(conversions),2) as CPA
FROM marketing_data
group by platform
order by ROAS desc


select campaign_type,
COUNT(*)as total_campaign,
ROUND(SUM(ad_spend),2)as total_spend,
ROUND(SUM(revenue),2)as total_revenue,
ROUND(SUM(revenue)-SUM(ad_spend),2)as total_profit,
ROUND(SUM(revenue)/SUM(ad_spend),2) as ROAS,
ROUND((SUM(revenue)-SUM(ad_spend))/SUM(ad_spend)*100.0,2) as ROI_pct,
ROUND(SUM(clicks)*100.0/SUM(impressions),4)as CTR,
ROUND(SUM(conversions)*100.0/SUM(clicks),2)as CVR,
ROUND(SUM(ad_spend)/SUM(conversions),2)as CPA
from marketing_data
group by campaign_type
order by ROAS desc;

select industry,
COUNT(*)as total_campaign,
ROUND(SUM(ad_spend),2)as total_spend,
ROUND(SUM(revenue),2)as total_revenue,
ROUND(SUM(revenue)-SUM(ad_spend),2)as total_profit,
ROUND(SUM(revenue)/SUM(ad_spend),2) as ROAS,
ROUND((SUM(revenue)-SUM(ad_spend))/SUM(ad_spend)*100.0,2) as ROI_pct,
ROUND(SUM(clicks)*100.0/SUM(impressions),4)as CTR,
ROUND(SUM(conversions)*100.0/SUM(clicks),2)as CVR,
ROUND(SUM(ad_spend)/SUM(conversions),2)as CPA
from marketing_data
group by industry
order by ROAS desc;


select country,
COUNT(*)as total_campaign,
ROUND(SUM(ad_spend),2)as total_spend,
ROUND(SUM(revenue),2)as total_revenue,
ROUND(SUM(revenue)-SUM(ad_spend),2)as total_profit,
ROUND(SUM(revenue)/SUM(ad_spend),2) as ROAS,
ROUND((SUM(revenue)-SUM(ad_spend))/SUM(ad_spend)*100.0,2) as ROI_pct,
ROUND(SUM(clicks)*100.0/SUM(impressions),4)as CTR,
ROUND(SUM(conversions)*100.0/SUM(clicks),2)as CVR,
ROUND(SUM(ad_spend)/SUM(conversions),2)as CPA
from marketing_data
group by country
order by ROAS desc;


select 
MONTH(date)as month,
DATENAME(MONTH,date)as month_name,
ROUND(SUM(ad_spend),2)as ad_spend,
ROUND(SUM(revenue),2)as total_revenue,
ROUND(SUM(revenue)/SUM(ad_spend),2)	as ROAS,
ROUND((SUM(revenue)-SUM(ad_spend))/SUM(ad_spend)*100,2)as ROI_pct,
SUM(conversions)as total_conversions
from marketing_data
group by MONTH(date),DATENAME(MONTH,date)
order by month;


select 
platform,
campaign_type,
industry,
country,
ROUND(ad_spend,2)as ad_spend,
ROUND(revenue,2)as revenue,
ROUND(ROAS,2)ROAS,
ROUND((revenue-ad_spend)/ad_spend*100,2)as ROI_pct
from marketing_data
where ROAS<1
order by ROAS Asc


select 
platform,
COUNT(*) as loss_camapigns,
ROUND(SUM(ad_spend),2)as wasted_spend,
ROUND(SUM(revenue),2)as revenue_generated,
ROUND(SUM(ad_spend)-SUM(revenue),2) as total_loss,
ROUND(AVG(ROAS),2)as avg_ROAS
from marketing_data
where ROAS<1
group by platform
order by loss_camapigns desc