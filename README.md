# World_Weather_Analysis
Module 7 Challenge

## Overview of Project

Due to the aging employee population and it's antiquated 'database' system, Pewlett-Hackard finds itself unprepared for what they are calling a 'Silver Tsunami' of employees that have the perfect combination of age and years of service and possibly moving towards retirement.  A concern so overwhelming that they have enlisted our services to update their database systems and conduct an analysis to provide better visability of the situation and possible solutions to assist in an transition that may occur if their aging team members decide to retire.

### Purpose

The purpose of this challenge is to apply our database and query skills, coupled with analytics that can provide insight their current situation of the employee population and possible recommendations.

## Results

### Deliverable 1: Retrieve Weather Data
For the first deliverable, we had to generate 2000 random longitudes and latitudes and save them to a list.  Once generated we had to do a search to locate the closest cities to  the longitude and latitudes in the list.  Not all coordinates returned a city value as many of the coordinates were over bodies of water.  Once cities were identified, a JSON file was created to parse the data to return the city name, country name, actual longitude and latitude, maximum temp, humidity, wind speed and current weather description. Please find the JSON code snippet below and a snippet of the resultant output of the JSON code.

* Retirement Titles Query

![retirement_titles_queries](Resources/retirement_titles_queries.png)

* Retirement Titles Output

![weather](Resources/weather.png)

* Unique Titles Query

![weather](Resources/weather.png)

* Unique Titles Output

![weather](Resources/weather.png)

* Retiring Titles Query

![weather](Resources/weather.png)

* Retiring TItles Ouptut


### Deliverable 2: Create a Customer Travel Destinations Map
For this deliverable we are required to take inputs supplied by the user regarding weather preferences and search the list of cities that were created during first deliverable and return cities that meet the users weather requirements.  The output will be an interactive map generated utilizing Google maps and APIs with markers on cities that met the users input criteria.  The user then can click on specific marker and return a short list of information regarding the name of the city, country, nearby hotel and current weather.

* Map meeting user weather requirements

![WeatherPy_vacation_map](Vacation_Search/WeatherPy_vacation_map.png)

### Deliverable 3: Create a Travel Itinerary Map
For the final deliverable, we will use the Google Directions API to create a travel itinerary that shows the route between four cities chosen from the user's possible travel destinations. The user will select four cities and we will create a travel itinerary.  In addition to the travel itinerary, we will provide the user basic information about that city when they click the marker.

* Map showing an example itinerary based on user's inputs.

![WeatherPy_travel_map](Vacation_Itinerary/WeatherPy_travel_map.png)

* Map showing weather and hotel information of the cities selected by the user

![WeatherPy_travel_map_markers](Vacation_Itinerary/WeatherPy_travel_map_markers.png)


## Summary
In summary, this was a very interesting exercise that helped open the wide ranging possibilities and uses for Python, APIs, etc.
