# Rails-Intro-Project

## 1 - Gathering and Storing Data

### 1.1 - Describe Datasets

I select the data source "Daily Temperature of Major Cities" from kaggle, the download URL is: https://www.kaggle.com/datasets/sudalairajkumar/daily-temperature-of-major-cities?resource=download.

It shows temperature of major cities of the world daily, and the temperature values is present in "city_temperature.csv" file. 

As data is structed by regin, country, state, city, date, averate temperature columns. I'll use the database and split it into multiple table and columns. So I need to create databases below:

1. City, columns include: id, city name, state name, country name, region name
2. User, columns include: id, username, email
3. Temperature, columns include: id, average temperature, date, city ID
4. Comment, columns include: id, comment content, user ID, date


## 1.2 - Database ERD

![Database ERD](./Database%20ERD.png)


## 1.3 AR Models

Use Rails to generate the Active Record models and tables required.

Two tables are created and will be populated with data in 1.7.

Three t1.2	d and will be populated with data in 1.7.

Commands to generate below. But We can skip it as migrations are all ready. To make migrations, run `rails db:migrate`

### 1.3.1 City



```bash
rails generate model city city:string state:string country:string Region:string
```


### 1.3.2 User

```bash
rails generate model User username:string email:string
```

### 1.3.3 Temperature

```bash
rails generate model Temperature avg_temp:float date:date city:references
```


### 1.3.4 Comment

```bash
rails generate model Comment comment:string date:date user:references
```

### 1.3.5 TemperatureUser
```bash
rails generate model TemperatureUser user:references temperature:references
```

### 1.3.6 TemperatureComment
```bash
rails generate model TemperatureComment user:references temperature:references
```


## 1.4 - At least 1 model Association

Regin, Country, State, City model association is added.



## 1.5 - Model Associations

Add multiple ActiveRecord associations to my models.

	🕯️ 1.5 Two of more one-to-many associations: Weather and Temperations
	💡 1.5 At least one one-to-many and one many-to-many association: Implemented below.
	🔥 1.5 Two or more many-to-many associations: implement by City and RecordDate model



## 1.6 - Validations

Add two or more appropriate validations to all of my ActiveRecord models: add presence validates on City, Comment


## 1.7 - Data Sources

Write the seeds.rb script to pull in the data from my sources(city_temperature.csv) into my database.

    🕯️ 1.7 Data is pulled from a single data source. (Faker is 1 source)
	💡 1.7 Data is pulled from two data sources.
    🔥 1.7 Data is pulled from three or more data sources.


to import data (we prepared 1000 records):

```bash
rails db:reset
```
