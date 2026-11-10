--cleaning Product table
SELECT  [ProductKey]
      --,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] ProductName
      --,[SpanishProductName]
      --,[FrenchProductName]
      ,[StandardCost]
      --,[FinishedGoodsFlag]
      --,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      ,[ListPrice]
      ,[Size]
      ,[SizeRange]
      ,[Weight]
      ,[DaysToManufacture]
      ,[ProductLine]
      ,[DealerPrice]
	  ,pc.EnglishProductCategoryName ProductCategory
	  ,pcs.EnglishProductSubcategoryName ProductSubcategory
      --,[Class]
      --,[Style]
      --,[ModelName]
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	  ,ISNULL([Status],'outdated') as Status
  FROM [AdventureWorksDW2025].[dbo].[DimProduct] p
  left join  DimProductSubcategory pcs
  on p.ProductSubcategoryKey=pcs.ProductSubcategoryKey
  left join DimProductCategory pc
  on pcs.ProductCategoryKey=pc.ProductCategoryKey
