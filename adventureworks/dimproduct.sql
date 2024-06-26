SELECT 
	   p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      --,p.[ProductSubcategoryKey]
      --,p.[WeightUnitMeasureCode]
      --,p.[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product Name]
	  ,ps.EnglishProductSubcategoryName AS [Sub Category]
	  ,pc.EnglishProductCategoryName AS [Product Category]
      --,p.[SpanishProductName]
      --,p.[FrenchProductName]
      --,p.[StandardCost]
      --,p.[FinishedGoodsFlag]
      ,p.[Color] AS [Product Color]
      ,p.[SafetyStockLevel]
      ,p.[ReorderPoint]
      ,p.[ListPrice]
      ,p.[Size] AS [Product Size]
      --,p.[SizeRange]
      --,p.[Weight]
      --,p.[DaysToManufacture]
      ,p.[ProductLine] AS [Product Line]
      --,p.[DealerPrice]
      --,p.[Class]
      --,p.[Style]
      ,p.[ModelName] AS [Product Model Name]
      --,p.[LargePhoto]
      ,p.[EnglishDescription] AS [Product Description]
      --,p.[FrenchDescription]
      --,p.[ChineseDescription]
      --,p.[ArabicDescription]
      --,p.[HebrewDescription]
      --,p.[ThaiDescription]
      --,p.[GermanDescription]
      --,p.[JapaneseDescription]
      --,p.[TurkishDescription]
      --,p.[StartDate]
      --,p.[EndDate]
      ,ISNULL (p.[Status], 'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] p
  LEFT JOIN dbo.DimProductSubcategory ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
  ORDER BY 
	p.ProductKey ASC
