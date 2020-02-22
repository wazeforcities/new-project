#Tables used: `waze-public-dataset.[partner dataset].view_alerts_clustered`

#Title: Accident by DOW

#Description: The following query provides the number of accidents by day of week.

#Dialect: SQL

#Query:
SELECT 
  date(ts) as date,
  EXTRACT(hour from ts) as hour,
  EXTRACT(DAYOFWEEK from ts) as day_of_week,
  country,
  city,
  street,
  type,
  subtype,
  geo
FROM `waze-public-dataset.[partner dataset].view_alerts_clustered`
WHERE type = "ACCIDENT"
