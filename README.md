# 2022-2023 Consumer Financial Protection Bureau (CFPB) Complaint Report
As part of my Google Data Analytics certificate program, I've analyzed the Consumer Financial Protection Bureau's complaint datasets. The datasets were obtained from the Google BigQuery's public dataset collection. I used SQL in Google BigQuery to perform data pull and Tableau to create graphs and mapping pictures. The objective is to build a report that shows the data containing complaints to CFPB from 2022-2023 and provide recommendations to improve the complaint process. This repository have my SQL script, which is needed to obtain the 2022-2023 complaint datasets, and my presentation slides.

## My Google BigQuery SQL script
SELECT
  complaint_id,  
  date_received,
  product,
  subproduct,
  issue,
  subissue,
  company_name,
  state,
  safe_cast(zip_code as string) AS Zip_Code,
  consumer_consent_provided,
  submitted_via,
  date_sent_to_company,
  company_response_to_consumer,
  company_public_response,
  timely_response,
  consumer_disputed
FROM `bigquery-public-data.cfpb_complaints.complaint_database` 
WHERE date_received >= '2022-01-01'
AND LENGTH(zip_code) = 5
AND state IS NOT NULL
