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

### Retirement vs Mentorship
To provide better clarity to the Executive team, we decided to run two additional queries to get a better understanding of how many people could be leaving Pewlett Hackard in the near future compare to those who are ready to mentor or be mentored.  The first query below returned information regardin which departments will feel the greatest impact if the 'Silver Tsunami' were to happen at once.  The second query returned how many people from each department were identified as those ready to be mentored by those that are retiring and in-turn mentor those with less experience



* Query used to Return Total Retirment Ready Individuals by Department

![retirmentbydeptquery](Resources/retirmentbydeptquery.png)

* Total Retirement Ready Individuals by Department

![retirmentbydeptoutput](Resources/retirmentbydeptoutput.png)

* Query used to Return Total Number of Mentorship Ready Individuals by Department

![mentorshipbydepartmentquery](Resources/mentorshipbydepartmentquery.png)

* Total Mentorship Ready Individuals by Department

![mentorshipbydepartmentoutput](Resources/mentorshipbydepartmentoutput.png)

* Pie Chart displaying which departments will be impacted most if the Tsunami hits

![retirementPie](Resources/retirementPie.png)

* Bar Chart displaying the difference between the 'Silver Tsunami' and the mentorship eligible group
* 
![Tsunamibar](Resources/Tsunamibar.png)

## Summary
In summary, this was a very interesting exercise that helped open the wide ranging possibilities and uses for Python, APIs, etc.
