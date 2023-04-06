

--HIGHER PRECISION FUNCTIONS :: SQL Server High Precision Date and Time Functions have a scale of 7 and are:
--SYSDATETIME – returns the date and time of the machine the SQL Server is running on
--SYSDATETIMEOFFSET – returns the date and time of the machine the SQL Server is running on plus the offset from UTC
--SYSUTCDATETIME - returns the date and time of the machine the SQL Server is running on as UTC

-- higher precision functions 
SELECT SYSDATETIME()       AS 'DateAndTime';        -- return datetime2(7)       
SELECT SYSDATETIMEOFFSET() AS 'DateAndTime+Offset'; -- datetimeoffset(7)
SELECT SYSUTCDATETIME()    AS 'DateAndTimeInUtc';   -- returns datetime2(7)



--LESSER PRECISION FUNCTIONS :: SQL Server Lesser Precision Data and Time Functions have a scale of 3 and are:
--CURRENT_TIMESTAMP - returns the date and time of the machine the SQL Server is running on
--GETDATE() - returns the date and time of the machine the SQL Server is running on
--GETUTCDATE() - returns the date and time of the machine the SQL Server is running on as UTC

-- lesser precision functions - returns datetime
SELECT CURRENT_TIMESTAMP AS 'DateAndTime'; -- note: no parentheses   
SELECT GETDATE()         AS 'DateAndTime';    
SELECT GETUTCDATE()      AS 'DateAndTimeUtc'; 


--DATENAME FUNCTIONS  ::  Returns a string(nvarchar) corresponding to the datepart specified for the given date as shown in the following table
-- date and time parts - returns nvarchar 
SELECT DATENAME(YEAR, GETDATE())        AS 'Year';        
SELECT DATENAME(QUARTER, GETDATE())     AS 'Quarter';     
SELECT DATENAME(MONTH, GETDATE())       AS 'Month Name';       
SELECT DATENAME(DAYOFYEAR, GETDATE())   AS 'DayOfYear';   
SELECT DATENAME(DAY, GETDATE())         AS 'Day';         
SELECT DATENAME(WEEK, GETDATE())        AS 'Week';        
SELECT DATENAME(WEEKDAY, GETDATE())     AS 'Day of the Week';     
SELECT DATENAME(HOUR, GETDATE())        AS 'Hour';        
SELECT DATENAME(MINUTE, GETDATE())      AS 'Minute';      
SELECT DATENAME(SECOND, GETDATE())      AS 'Second';      
SELECT DATENAME(MILLISECOND, GETDATE()) AS 'MilliSecond'; 
SELECT DATENAME(MICROSECOND, GETDATE()) AS 'MicroSecond'; 
SELECT DATENAME(NANOSECOND, GETDATE())  AS 'NanoSecond';  
SELECT DATENAME(ISO_WEEK, GETDATE())    AS 'Week';

--DATENAME FUNCTIONS :: returns an integer(int) corresponding to the datepart specified
-- date and time parts - returns int
SELECT DATEPART(YEAR, GETDATE())        AS 'Year';        
SELECT DATEPART(QUARTER, GETDATE())     AS 'Quarter';     
SELECT DATEPART(MONTH, GETDATE())       AS 'Month';       
SELECT DATEPART(DAYOFYEAR, GETDATE())   AS 'DayOfYear';   
SELECT DATEPART(DAY, GETDATE())         AS 'Day';         
SELECT DATEPART(WEEK, GETDATE())        AS 'Week';        
SELECT DATEPART(WEEKDAY, GETDATE())     AS 'WeekDay';     
SELECT DATEPART(HOUR, GETDATE())        AS 'Hour';        
SELECT DATEPART(MINUTE, GETDATE())      AS 'Minute';      
SELECT DATEPART(SECOND, GETDATE())      AS 'Second';      
SELECT DATEPART(MILLISECOND, GETDATE()) AS 'MilliSecond'; 
SELECT DATEPART(MICROSECOND, GETDATE()) AS 'MicroSecond'; 
SELECT DATEPART(NANOSECOND, GETDATE())  AS 'NanoSecond';  
SELECT DATEPART(ISO_WEEK, GETDATE())    AS 'Week'; 

--DAY, MONTH AND YEAR FUNCTIONS 
--DAY – returns an integer corresponding to the day specified
--MONTH– returns an integer corresponding to the month specified
--YEAR– returns an integer corresponding to the year specified
SELECT DAY(GETDATE())   AS 'Day';                            
SELECT MONTH(GETDATE()) AS 'Month';                       
SELECT YEAR(GETDATE())  AS 'Year';

--DATEFROMPARTS, DATETIME2FROMPARTS, DATETIMEFROMPARTS, DATETIMEOFFSETFROMPARTS, SMALLDATETIMEFROMPARTS AND  TIMEFROMPARTS FUNCTIONS
--DATEFROMPARTS – returns a date from the date specified
--DATETIME2FROMPARTS – returns a datetime2 from part specified
--DATETIMEFROMPARTS – returns a datetime from part specified
--DATETIMEOFFSETFROMPARTS - returns a datetimeoffset from part specified
--SMALLDATETIMEFROMPARTS - returns a smalldatetime from part specified
--TIMEFROMPARTS - returns a time from part specified
-- date and time from parts
SELECT DATEFROMPARTS(2019,1,1)                         AS 'Date';          -- returns date
SELECT DATETIME2FROMPARTS(2019,1,1,6,0,0,0,1)          AS 'DateTime2';     -- returns datetime2
SELECT DATETIMEFROMPARTS(2019,1,1,6,0,0,0)             AS 'DateTime';      -- returns datetime
SELECT DATETIMEOFFSETFROMPARTS(2019,1,1,6,0,0,0,0,0,0) AS 'Offset';        -- returns datetimeoffset
SELECT SMALLDATETIMEFROMPARTS(2019,1,1,6,0)            AS 'SmallDateTime'; -- returns smalldatetime
SELECT TIMEFROMPARTS(6,0,0,0,0)                        AS 'Time';          -- returns time


--DATEDIFF and DATEDIFF_BIG FUNCTIONS
--DATEDIFF - returns the number of date or time datepart boundaries crossed between specified dates as an int
--DATEDIFF_BIG - returns the number of date or time datepart boundaries crossed between specified dates as a bigint
--Date and Time Difference
SELECT DATEDIFF(DAY, 2019-31-01, 2019-01-01)      AS 'DateDif'    -- returns int
SELECT DATEDIFF_BIG(DAY, 2019-31-01, 2019-01-01)  AS 'DateDifBig' -- returns bigint

--DATEADD, EOMONTH, SWITCHOFFSET and TODATETIMEOFFSET FUNCTIONS
--DATEADD - returns datepart with added interval as a datetime
--EOMONTH – returns last day of month of offset as type of start_date
--SWITCHOFFSET - returns date and time offset and time zone offset
--TODATETIMEOFFSET - returns date and time with time zone offset
-- modify date and time
SELECT DATEADD(DAY,1,GETDATE())        AS 'DatePlus1';          -- returns data type of the date argument
SELECT EOMONTH(GETDATE(),1)            AS 'LastDayOfNextMonth'; -- returns start_date argument or date
SELECT SWITCHOFFSET(GETDATE(), -6)     AS 'NowMinus6';          -- returns datetimeoffset
SELECT TODATETIMEOFFSET(GETDATE(), -2) AS 'Offset';             -- returns datetimeoffset


--ISDATE FUNCTIONS to Validate Date and Time Values
--ISDATE – returns int - Returns 1 if a valid datetime type and 0 if not
-- validate date and time - returns int
SELECT ISDATE(GETDATE()) AS 'IsDate'; 
SELECT ISDATE(NULL) AS 'IsDate';

