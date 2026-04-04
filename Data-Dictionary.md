# Dataset-Description
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| id   | integer   | integer |  unique identifier for each building.     |
| name     | string  | text         | name of each building.       |
| host id |integer | integer         | unique identifier of each building owner.        |
| host name      | text |text          | name of each building owner.       |
| neighbourhood group | text | text | NYC segment where building is located.|
| neighbourhood| text | text | neighbourhood where building is located.|
|latitude| numeric| numeric|specific coordinates north or south of the equator.|
| longitude| numeric| numeric| specific coordinates east and west of the prime meridian.|
| room type| text | text | subset of the room rented.| 
|minimum nights| integer |integer| minimum nights host enforces.|
| number of reviews| integer | integer |number of reviews left by customers.|
|last review|timestamp with time zone|timestamp with time zone| recent date and time a consumer left a review.|
|reviews per month| integer| integer| average reviews submitted a month|
|calculated host listing count| integer| integer| number of listings per host|
|availability 365|integer| integer| number of available days in a year|

DATASET SIZE: 48,894 rows, 15 columns.
TIME PERIOD COVERED: January 2015 - December 2019.
