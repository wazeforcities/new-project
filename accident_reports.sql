#Tables used: waze-public-dataset.[partner dataset].view_alerts_clustered`

#Title: Accident Trends

#Description: This query can be used to understand where accidents occur through a city, which can help inform street redesigns, intersection reconfigurations, or additional enforcement in particular areas. 

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
