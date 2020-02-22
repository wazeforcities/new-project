#Table used: `waze-public-dataset.[partner dataset].view_irregularites_clustered`

#Title: Comparison between Average Free Flow Speed and Average Speed in an Irregularity 

#Description: This query compares average free flow speed against the average speed within an irregularity. 

#Dialect: SQL 

#Query:
SELECT
  EXTRACT(date from updateDateTS) as date,
  EXTRACT(hour from updateDateTS) as hour,
  country, 
  city,
  street,
  startNode,
  endNode,
  length as length_meters,
  geoWKT,
  avg(regularSpeed) as avg_regular_speed,
  avg(speed) as avg_irregularity_speed
FROM `waze-public-dataset.[partner dataset].view_irregularites_clustered`
GROUP BY 1,2,3,4,5,6,7,8,9
