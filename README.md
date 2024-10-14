# Rails-Intro-Project

## 1 - Gathering and Storing Data

### 1.1 - Describe Datasets

I select the data source "Daily Temperature of Major Cities" from kaggle, the download URL is:https://www.kaggle.com/datasets/sudalairajkumar/daily-temperature-of-major-cities?resource=download. It shows temperature of major cities of the world daily, and the temperature values is present in "city_temperature.csv" file. 

As data is structed by regin, country, state, city, date, averate temperature columns. I'll use the database and split it into multiple table and columns. So I need to create databases below:

1. Regin, columns include: id, regin_name.
2. Country, columns include: id, country_name, belong_regin
3. State, columns include: id, state_name, belong_country
4. City, columns include: id, city_name, belong_state
5. Date, columns include: id, date
6. Temperature: columns include: id, averate_temp, city_id, date_id

Besides, I'll fake a Weather table, and contains columns include: id, weather, city_id, date_id

## 1.2 - Database ERD

![Database ERD](https://github.com/mingwangrrc/Rails-Intro-Project/blob/main/Database%20ERD.png)
