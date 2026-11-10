--cleaning Dim_Date table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as date 
  --,[DayNumberOfWeek]
, 
  [EnglishDayNameOfWeek] as Day_Name 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  , 
  [DayNumberOfMonth] Day_number 
  --,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  , 
  [EnglishMonthName] Month_Name 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] Month_Number, 
  [CalendarQuarter] Quarter, 
  [CalendarYear] year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2025].[dbo].[DimDate] 
where 
  CalendarYear >= 2012
