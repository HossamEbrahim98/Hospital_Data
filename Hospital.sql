select * from diabetic_data limit 5;
# Knowing Count of Patients of Number of Days in Hospital ==> (1)
select round(time_in_hospital,1) as bucket, count(*) as Count from diabetic_data
group by bucket order by bucket;
#---------------------------------------------------------------------------------
# The Relation between Time in Hospital & Lab Time of Procedures ==> (2)

select min(num_lab_procedures),avg(num_lab_procedures),max(num_lab_procedures) from diabetic_data;
select num_lab_procedures ,
case
when num_lab_procedures >=0 and num_lab_procedures <25 then "Few"
when num_lab_procedures >=25 and num_lab_procedures <50 then "Average"
else "Many"
end as procedure_frequency
from diabetic_data;
select round(avg(time_in_hospital),2) as Avg_Time,
case
when num_lab_procedures >=0 and num_lab_procedures <25 then "Few"
when num_lab_procedures >=25 and num_lab_procedures <50 then "Average"
else "Many"
end as procedure_frequency
from diabetic_data
group by procedure_frequency
order by Avg_Time Desc;
# ------------------------------------------------
# Readmission Status for each Race ==> (3)

select concat("Patient ", patient_nbr," was ",race," and ",(case 
when readmitted = "<30" then ' was readmitted <30 after discharge.'
when readmitted = "yes" then ' was readmitted. They had'
else ' was not Readmitted.'
end) )
as summary from diabetic_data limit 50;
#--------------------------------------------------------------------------------------------
# Knowing Num of Patients and Average LAb Procedures for each Specialty in Hospital ==> (4)

select distinct(medical_specialty) from diabetic_data order by medical_specialty;
select medical_specialty, round(avg(num_procedures),1) as Avg_Procedures, count(*) as Count
from diabetic_data
group by medical_specialty
order by Avg_Procedures Desc;
select medical_specialty, round(avg(num_procedures),1) as Avg_Procedures, count(*) as Count
from diabetic_data
group by medical_specialty
Having Count >50 AND Avg_Procedures >2.5
order by Avg_Procedures Desc;
#-----------------------------------------------------
/* Convert DataBase Table to CSV File :
Export Data Wizard from Navigator Tab
*/