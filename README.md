# Rails-Intro-Project

## 1 - Gathering and Storing Data

### 1.1 - Describe Datasets

I select the data source "Daily Temperature of Major Cities" from kaggle, the download URL is: https://www.kaggle.com/datasets/sudalairajkumar/daily-temperature-of-major-cities?resource=download.

It shows temperature of major cities of the world daily, and the temperature values is present in "city_temperature.csv" file. 

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


## 1.3 AR Models

Use Rails to generate the Active Record models and tables required.

Two tables are created and will be populated with data in 1.7.

Three t1.2	d and will be populated with data in 1.7.

Commands to generate below.

### 1.3.1 Regin

```bash
rails generate model Regin name:string
```

### 1.3.2 Country

```bash
rails generate model Country name:string regin_id:references
```

### 1.3.3 State

```bash
rails generate model State name:string contry_id:references
```

### 1.3.4 City

```bash
rails generate model City name:string state_id:references
```

### 1.3.4 City

```bash
rails generate model City name:string state_id:references
```

### 1.3.5 Date

```bash
rails generate model RecordDate date:string
```

### 1.3.6 Weather

```bash
rails generate model Weather weather:string record_date_id:string city_id:string
```

### 1.3.7 Temperature

```bash
rails generate model Temperature avg_temp:string record_date_id:string city_id:string
```


## 1.4 - At least 1 model Association

Regin, Country, State, City model association is added.
