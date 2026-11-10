--cleaned Dim_Customer table
SELECT 
     [CustomerKey], 
  --,[GeographyKey]
  --[CustomerAlternateKey],
  --,[Title]
    [FirstName], 
  --,[MiddleName]
    [LastName], 
    concat(FirstName, ' ', LastName) as full_Name, 
  --,[NameStyle]
  --[BirthDate],
  --,[MaritalStatus]
  --,[Suffix]
  --[Gender],
    case when Gender = 'M' then 'Male' when Gender = 'F' then 'Female' else 'unknown' end as Gender, 
    [EmailAddress] 
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  , 
    [AddressLine1] 
  --,[AddressLine2]
  --,[Phone]
    , 
    [DateFirstPurchase], 
  --,[CommuteDistance]
    DimGeography.City 
  FROM 
  [AdventureWorksDW2025].[dbo].[DimCustomer] 
  left join DimGeography on DimCustomer.GeographyKey = DimGeography.GeographyKey 
order by 
  CustomerKey
