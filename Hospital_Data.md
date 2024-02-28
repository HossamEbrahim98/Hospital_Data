# Hospital_Data
In the beginning, I fetched the data from the Kaggle website, which is available in the link : https://www.kaggle.com/datasets/brandao/diabetes
Then I worked on this project using two tools: MYSQL workbench & Power BI ..
I wanted to reach some logical analytical goals, such as the relationship of laboratory procedures to the number of days the patient spends in the hospital and some other things.

## MySQL
I imported the data into MySQL because it was in CSV format, so I fetched it and then tried to extract 4 information from it:
1- Knowing Count of Patients of Number of Days in Hospital.
2- The Relationship between Time in Hospital & Lab Time of Procedures.
3- Readmission Status for each Race.
4- Knowing Number of Patients and Average LAb Procedures for each Specialty in Hospital.
Finally, I saved the data as a CSV file.

## Power BI
I used the data from within MySQL DataBase and not through the CSV File in order to modify it in its form. I created a new column, which is Procedure, to determine the number of days that the hospital spent in laboratory procedures. Is it many, few, or moderate? I created this column to use it within the three charts that I do them:
1- Showing Count of Patients of Number of Days in Hospital.
2- The Relationship between Time in Hospital & Lab Time of Procedures.
3- Average of Num Lab Procedures for every Race.
Points 1 and 2 are similar to points 1 and 2 inside data analysis in MySQL, which is normal because after displaying the data inside MySQL, I made a graphical chart for it, but points 3 and 4 in MySQL were difficult to do inside the Power BI program, so I contented myself with displaying the average procedures inside The coefficient for each Race and I finished the dashboard with it.
