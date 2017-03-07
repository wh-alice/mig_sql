---
title: "Lesson 1: Create a Project and Basic Package with SSIS | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 84d0b877-603f-4f8e-bb6b-671558ade5c2
caps.latest.revision: 35
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 1: Create a Project and Basic Package with SSIS
In this lesson, you will create a simple ETL package that extracts data from a single flat file source, transforms the data using two lookup transformation components, and writes that data to the **FactCurrency** fact table in **AdventureWorksDW2012**. As part of this lesson, you will learn how to create new packages, add and configure data source and destination connections, and work with new control flow and data flow components.  
  
> [!IMPORTANT]  
> This tutorial requires the **AdventureWorksDW2012** sample database. For more information on installing and deploying **AdventureWorksDW2012**, see [Reporting Services Product Samples on CodePlex](http://go.microsoft.com/fwlink/p/?LinkID=526910).  
  
## Understanding the Package Requirements  
This tutorial requires Microsoft SQL Server Data Tools.  
  
For more information on installing the SQL Server Data Tools see [SQL Server Data Tools Download](http://msdn.microsoft.com/en-us/data/hh297027).  
  
Before creating a package, you need a good understanding of the formatting used in both the source data and the destination. Once you understand both of these data formats, you will be ready to define the transformations necessary to map the source data to the destination.  
  
### Looking at the Source  
For this tutorial, the source data is a set of historical currency data contained in the flat file, SampleCurrencyData.txt. The source data has the following four columns: the average rate of the currency, a currency key, a date key, and the end-of-day rate.  
  
Here is an example of the source data contained in the SampleCurrencyData.txt file:  
  
<pre>1.00070049USD9/3/05 0:001.001201442  
1.00020004USD9/4/05 0:001  
1.00020004USD9/5/05 0:001.001201442  
1.00020004USD9/6/05 0:001  
1.00020004USD9/7/05 0:001.00070049  
1.00070049USD9/8/05 0:000.99980004  
1.00070049USD9/9/05 0:001.001502253  
1.00070049USD9/10/05 0:000.99990001  
1.00020004USD9/11/05 0:001.001101211  
1.00020004USD9/12/05 0:000.99970009</pre>  
  
When working with flat file source data, it is important to understand how the Flat File connection manager interprets the flat file data. If the flat file source is Unicode, the Flat File connection manager defines all columns as [DT_WSTR] with a default column width of 50. If the flat file source is ANSI-encoded, the columns are defined as [DT_STR] with a column width of 50. You will probably have to change these defaults to make the string column types more appropriate for your data. To do this, you will need to look at the data type of the destination where the data will be written to and then choose the correct type within the Flat File connection manager.  
  
### Looking at the Destination  
The ultimate destination for the source data is the **FactCurrency** fact table in **AdventureWorksDW**. The **FactCurrency** fact table has four columns, and has relationships to two dimension tables, as shown in the following table.  
  
|Column Name|Data Type|Lookup Table|Lookup Column|  
|---------------|-------------|----------------|-----------------|  
|AverageRate|float|None|None|  
|CurrencyKey|int (FK)|DimCurrency|CurrencyKey (PK)|  
|DateKey|Int (FK)|DimDate|DateKey (PK)|  
|EndOfDayRate|float|None|None|  
  
### Mapping Source Data to be Compatible with the Destination  
Analysis of the source and destination data formats indicates that lookups will be necessary for the **CurrencyKey** and **DateKey** values. The transformations that will perform these lookups will obtain the **CurrencyKey** and **DateKey** values by using the alternate keys from **DimCurrency** and **DimDate** dimension tables.  
  
|Flat File Column|Table Name|Column Name|Data Type|  
|--------------------|--------------|---------------|-------------|  
|0|FactCurrency|AverageRate|float|  
|1|DimCurrency|CurrencyAlternateKey|nchar (3)|  
|2|DimDate|FullDateAlternateKey|date|  
|3|FactCurrency|EndOfDayRate|float|  
  
## Lesson Tasks  
This lesson contains the following tasks:  
  
-   [Step 1: Creating a New Integration Services Project](../Topic/Step%201:%20Creating%20a%20New%20Integration%20Services%20Project.md)  
  
-   [Step 2: Adding and Configuring a Flat File Connection Manager](../Topic/Step%202:%20Adding%20and%20Configuring%20a%20Flat%20File%20Connection%20Manager.md)  
  
-   [Step 3: Adding and Configuring an OLE DB Connection Manager](../Topic/Step%203:%20Adding%20and%20Configuring%20an%20OLE%20DB%20Connection%20Manager.md)  
  
-   [Step 4: Adding a Data Flow Task to the Package](../Topic/Step%204:%20Adding%20a%20Data%20Flow%20Task%20to%20the%20Package.md)  
  
-   [Step 5: Adding and Configuring the Flat File Source](../Topic/Step%205:%20Adding%20and%20Configuring%20the%20Flat%20File%20Source.md)  
  
-   [Step 6: Adding and Configuring the Lookup Transformations](../Topic/Step%206:%20Adding%20and%20Configuring%20the%20Lookup%20Transformations.md)  
  
-   [Step 7: Adding and Configuring the OLE DB Destination](../Topic/Step%207:%20Adding%20and%20Configuring%20the%20OLE%20DB%20Destination.md)  
  
-   [Step 8: Making the Lesson 1 Package Easier to Understand](../Topic/Step%208:%20Making%20the%20Lesson%201%20Package%20Easier%20to%20Understand.md)  
  
-   [Step 9: Testing the Lesson 1 Tutorial Package](../Topic/Step%209:%20Testing%20the%20Lesson%201%20Tutorial%20Package.md)  
  
## Start the Lesson  
[Step 1: Creating a New Integration Services Project](../Topic/Step%201:%20Creating%20a%20New%20Integration%20Services%20Project.md)  
  
