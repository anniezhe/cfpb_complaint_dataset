/* 
Analyst: Annie Zhang He
Purpose: Grab 2022-2023 data from the Google BigQuery's CFPB complaints database.
*/
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