# marketing_ad_spend_analysis
Here are a few options: Option 1 — Short and direct:  Analysis of 1,800 digital marketing campaigns across Google, Meta and TikTok — identifying budget waste, platform efficiency and ROI optimization opportunities using SQL and Power BI.
Digital Marketing Ad Spend Analysis
Performance analysis of global digital marketing campaigns across Google, Meta and TikTok platforms for 2024.
Overview
This project analyses 1,800 marketing campaign records across 3 platforms, 4 campaign types, 5 industries and 7 countries to identify what drives returns and where budget is being wasted.
The core business question: Which campaigns are generating real returns and where is money being lost?

Dataset

Source: Kaggle — Digital Marketing Metrics & KPIs Dataset
Records: 1,800 campaigns
Period: January 2024 — December 2024
Columns: date, platform, campaign_type, industry, country, impressions, clicks, CTR, CPC, ad_spend, conversions, CPA, revenue, ROAS


Data Validation
Unlike Project 1, this dataset had no missing values or duplicates. However metric validation was performed:

CTR verified against Clicks/Impressions — all values below 100% ✅
ROAS verified against Revenue/Ad Spend — no negative values ✅
CPC verified against Spend/Clicks ✅
Minimum ad spend of $58 — no zero spend campaigns ✅
135 campaigns identified with ROAS < 1 — loss-making campaigns flagged for analysis


Tools Used

SQL Server (MSSQL) — data analysis and KPI calculation
Power BI — interactive 4-page dashboard


KPIs Calculated
KPIFormulaBusiness QuestionROASRevenue / Ad SpendRevenue per $1 spentROI(Revenue - Spend) / Spend × 100Profit % on ad spendCTRClicks / Impressions × 100Ad engagement rateCVRConversions / Clicks × 100Click to conversion rateCPASpend / ConversionsCost per conversionCPMSpend / Impressions × 1000Cost per 1000 impressions

Analysis Structure
1. Overall Performance

Total Spend: $11.11M
Total Revenue: $54.18M
Total Profit: $43.07M
Overall ROAS: 4.88x
Overall ROI: 387.75%
Total Conversions: 326,812

2. Platform Performance
PlatformSpendROASROICPALoss CampaignsTikTok$2.65M7.62x662%$21.6710Meta$2.10M5.66x466%$28.7533Google$6.34M3.47x247%$48.4392
Key finding: Google receives 57% of total budget but delivers the lowest ROAS. TikTok delivers 7.62x ROAS with only 2.2% loss campaign rate vs Google's 12.8%.
3. Campaign Type Performance
Campaign TypeROASROICVRCPASearch5.31x430%4.78%$31.64Display4.84x383%4.69%$34.41Video4.77x377%4.38%$35.30Shopping4.58x358%4.49%$34.96
Key finding: Search campaigns deliver highest ROAS and lowest CPA — intent-based advertising converts at higher rates.
4. Industry Performance
IndustryROASROICVRSaaS5.04x404%4.59%EdTech5.03x402%4.48%E-commerce5.01x400%4.49%Healthcare4.84x383%4.74%Fintech4.48x347%4.61%
Key finding: Healthcare has the highest CVR at 4.74% despite lower CTR — highly motivated audiences that convert well once engaged. Fintech underperforms likely due to competitive bidding and compliance restrictions.
5. Country Performance
CountryROASROICPAIndia5.50x449%$30.76Australia4.99x399%$34.58Germany4.96x396%$34.65UK4.95x395%$33.03UAE4.92x391%$33.40Canada4.79x378%$35.54USA4.16x316%$36.01
Key finding: India delivers highest ROAS at 5.50x with lowest CPA — emerging markets offer better returns due to lower competition. USA despite being largest spend market delivers weakest ROAS.
6. Monthly Trends

Best months: October (5.38x), March (5.26x), August (5.25x)
Worst months: May (4.17x), June (4.51x), July (4.63x)
December: Highest conversions (32,282) but elevated costs reduce ROAS to 4.70x

7. Underperformance Analysis

135 loss-making campaigns (ROAS < 1) — 7.5% of total
Total wasted spend: $1.20M
Total loss: $416,580
Google accounts for 68% of all loss campaigns (92 out of 135)
Google wasted $966,966 — 81% of total wasted spend


Key Business Recommendations

Reallocate budget from Google to TikTok — TikTok delivers 7.62x ROAS vs Google's 3.47x with significantly lower waste
Prioritise Search campaigns — highest ROAS (5.31x) and lowest CPA ($31.64) across all campaign types
Expand India market presence — best ROAS (5.50x) and lowest CPA ($30.76) of all 7 countries
Audit Google campaigns immediately — 92 loss campaigns wasting $966K needs urgent review
Reduce spend in May-July — consistent Q2 underperformance (ROAS 4.17–4.63x) vs Q4 strength
Increase Healthcare investment — highest CVR at 4.74% despite lower CTR indicates high-quality audience


Dashboard Pages

Overview — KPI cards, monthly revenue trend, spend vs revenue by month
Platform Analysis — ROAS by platform, spend distribution, loss campaigns by platform
Campaign & Industry — ROAS by campaign type, industry, country, conversions by type
Underperformance Analysis — Wasted spend, loss campaigns, gauge charts
