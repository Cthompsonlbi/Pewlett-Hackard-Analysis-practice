# World_Weather_Analysis
Module 7 Challenge

## Overview of Project

Due to it's aging employee population and it's antiquated 'database' system, Pewlett-Hackard finds itself unprepared for what they are calling a 'Silver Tsunami' of employees retiring as they have the perfect combination of age and years of service and possibly moving towards retirement.  A concern so overwhelming that they have enlisted our services to update their database systems and conduct an analysis to provide better visability of the situation and possible solutions to assist in an transition that may occur if their aging team members decide to retire.

### Purpose

The purpose of this challenge is to apply our database and query skills, coupled with analytics that can provide insight their current situation of the employee population and possible recommendations.

## Results

### Deliverable 1: Retrieve Potential Retiring Employees and Titles
The purpose of the first deliverable is to compile a list of employees, their titles and Pewlett-Hackard start dates based on their year of birth.  This will help the executive team access how many team members are nearing retiremnt age and the positions they currently hold.  With this information, Pewlett-Hackard can put together an action plan and a roadmap to navigate through this possible transition  

* Below is the 'Retirement Titles Query' that pulls back all employees and titles nearing retirment age.  
![retirement_titles_queries](Resources/retirement_titles_queries.png)

* Based on the 'Retirement Titles Output' below, We can see that the limitation of this data is there are many duplicate entries with regards to names as Pewlett_Hackard employees have held many positions over the years.  We will need to limit the data set to only include the most recent position held by employees of interest.

![RetirmentTitles](Resources/RetirmentTitles.png)

* Unique Titles Query was created to return only the most recent title held by the employees that are nearing retirement age.

![UniqueTitlesOnlyQuery2nd_deli1](Resources/UniqueTitlesOnlyQuery2nd_deli1.png)

* Unique Titles Output table below shows the result of the above query.  Please note that all duplicate employee names have been removed.

![UniqueTitleDuplicatesRemoved](Resources/UniqueTitleDuplicatesRemoved.png)

* The resultant table above in it's entirety is still quite a large data set and would take the executive team a long time to analyze and put together an action plan.  To assist the executive team we created a 'Retiring Titles Query' table to quickly summarize the data a present an overview of the number of employees that could retire based on their titles. The query below was constructed to return that information.

![queryTitleCountRetires](Resources/queryTitleCountRetires.png)

* Retiring TItles Ouptut is the resulting output based on the query above.  It is quite evident that Pewlett-Hackard could potentially lose a large number of very experienced employees.

![UniqueTitleCountOutPut](Resources/UniqueTitleCountOutPut.png)


### Deliverable 2: Identify Potential Mentorship Candidates and Current Titles
After acquiring the data regarding employees that are nearing retiring age, the Executive team requested data on team members are currently with the company and could be mentored and eventually take over for those who will retiring.  The query below was created to pull that information and place it in a mentorship eligibility table.

* Mentorship Eligibility Query

![MentorshipEligibilityQuery](Resources/MentorshipEligibilityQuery.png)

* Mentorship Eligibility Output is the result from the quiery above.

![MentorshipEligibilityOutput](Resources/MentorshipEligibilityOutput.png)

### Deliverable 3: Create a Travel Itinerary Map
For the final deliverable, we will use the Google Directions API to create a travel itinerary that shows the route between four cities chosen from the user's possible travel destinations. The user will select four cities and we will create a travel itinerary.  In addition to the travel itinerary, we will provide the user basic information about that city when they click the marker.



* Map showing weather and hotel information of the cities selected by the user

![WeatherPy_travel_map_markers](Vacation_Itinerary/WeatherPy_travel_map_markers.png)


## Summary
In summary, this was a very interesting exercise that helped open the wide ranging possibilities and uses for Python, APIs, etc.
