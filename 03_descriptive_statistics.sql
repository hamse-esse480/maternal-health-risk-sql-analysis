 select count(*) from [Maternal Health Risk Data Set]
-- What are the mean, median, minimum, maximum, and standard deviation of Age?

select AVG(Age) as Avg_Age from [Maternal Health Risk Data Set]
select 
PERCENTILE_CONT(0.5)
within Group (order by Age)
over()as PERCENTILE_CONT_Age
from [Maternal Health Risk Data Set]
select min(Age) as min_Age from [Maternal Health Risk Data Set]
select max(Age) as max_Age from [Maternal Health Risk Data Set]
select STDEV(Age) as STD_Age from [Maternal Health Risk Data Set]

-- What are the mean, median, minimum, maximum, and standard deviation of SystolicBP?

select AVG(SystolicBP) as Avg_SystolicBP from [Maternal Health Risk Data Set]
select 
PERCENTILE_CONT(0.5)
within Group (order by SystolicBP)
over()as PERCENTILE_CONT_SystolicBP
from [Maternal Health Risk Data Set]
select min(SystolicBP) as min_SystolicBP from [Maternal Health Risk Data Set]
select max(SystolicBP) as max_SystolicBP from [Maternal Health Risk Data Set]
select STDEV(SystolicBP) as STD_SystolicBP from [Maternal Health Risk Data Set]

-- What are the mean, median, minimum, maximum, and standard deviation of DiastolicBP?

select AVG(DiastolicBP) as Avg_DiastolicBP from [Maternal Health Risk Data Set]
select 
PERCENTILE_CONT(0.5)
within Group (order by DiastolicBP)
over()as PERCENTILE_CONT_DiastolicBP
from [Maternal Health Risk Data Set]
select min(DiastolicBP) as min_DiastolicBP from [Maternal Health Risk Data Set]
select max(DiastolicBP) as max_DiastolicBP from [Maternal Health Risk Data Set]
select STDEV(DiastolicBP) as STD_DiastolicBP from [Maternal Health Risk Data Set]

-- What are the mean, median, minimum, maximum, and standard deviation of Blood_sugar?

select AVG(Blood_sugar) as Avg_Blood_sugar from [Maternal Health Risk Data Set]
select 
PERCENTILE_CONT(0.5)
within Group (order by Blood_sugar)
over()as PERCENTILE_CONT_Blood_sugar
from [Maternal Health Risk Data Set]
select min(Blood_sugar) as min_Blood_sugar from [Maternal Health Risk Data Set]
select max(Blood_sugar) as max_Blood_sugarP from [Maternal Health Risk Data Set]
select STDEV(Blood_sugar) as STD_Blood_sugar from [Maternal Health Risk Data Set]

-- What are the mean, median, minimum, maximum, and standard deviation of BodyTemp?

select AVG(BodyTemp) as Avg_BodyTemp from [Maternal Health Risk Data Set]
select 
PERCENTILE_CONT(0.5)
within Group (order by BodyTemp)
over()as PERCENTILE_CONT_BodyTemp
from [Maternal Health Risk Data Set]
select min(BodyTemp) as min_BodyTemp from [Maternal Health Risk Data Set]
select max(BodyTemp) as max_BodyTemp from [Maternal Health Risk Data Set]
select STDEV(BodyTemp) as STD_BodyTemp from [Maternal Health Risk Data Set]
-- What are the mean, median, minimum, maximum, and standard deviation of HeartRate?

select AVG(HeartRate) as Avg_HeartRate from [Maternal Health Risk Data Set]
select 
PERCENTILE_CONT(0.5)
within Group (order by HeartRate)
over()as PERCENTILE_CONT_HeartRate
from [Maternal Health Risk Data Set]
select min(HeartRate) as min_HeartRate from [Maternal Health Risk Data Set]
select max(HeartRate) as max_HeartRate from [Maternal Health Risk Data Set]
select STDEV(HeartRate) as STD_HeartRate from [Maternal Health Risk Data Set]

   

   
  
   
    
   
 
    
  
