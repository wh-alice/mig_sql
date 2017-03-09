---
title: "Working with R Data Types | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-01-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5df99e1c-a89a-42c1-9d68-ffe8d9577c94
caps.latest.revision: 16
ms.author: "jeannt"
manager: "jhubbard"
---
# Working with R Data Types
  Whereas [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports several dozen  data types, R has a limited number of scalar data types (numeric, integer, complex, logical, character, date/time and raw). When you use data from  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in R scripts, sometimes data is implicitly converted to a compatible data type, but more often an exact conversion cannot be performed automatically, and an error is returned, such as "Unhandled SQL data type".  
  
  This topic lists the implicit conversions that are provided, as well as unsupported data types, and guidance on mapping schemas between R and SQL Server. 
  
## Implicit data type conversions between R and SQL Server  
 The following table shows the changes in data types and values when data from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is used in an R script and then returned to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] type|R class|RESULT SET type|Comments|  
|-|-|-|-|  
|**smalldatetime**|`POSIXct`|**datetime**|Represented as GMT|  
|**smallmoney**|`numeric`|**float**||  
|**datetime**|`POSIXct`|**datetime**|Represented as GMT|  
|**money**|`numeric`|**float**||  
|**uniqueidentifier**|`character`|**varchar(max)**||  
|**numeric(p,s)**|`numeric`|**float**||  
|**decimal(p,s)**|`numeric`|**float**||  
|**date**|`POSIXct`|**datetime**|Represented as GMT|  
|**tinyint**|`integer`|**int**||  
|**bit**|`logical`|**bit**||  
|**smallint**|`integer`|**int**||  
|**int**|`integer`|**int**||  
|**float**|`numeric`|**float**||  
|**real**|`numeric`|**float**||  
|**bigint**|`numeric`|**float**||  
|**binary(n)**<br /><br /> n <= 8000|`raw`|**varbinary(max)**|Only allowed as input parameter and output|  
|**char(n)**<br /><br /> n <= 8000|`character`|**varchar(max)**||  
|**varbinary(n)**<br /><br /> n <= 8000|`raw`|**varbinary(max)**|Only allowed as input parameter and output|  
|**varchar(n)**<br /><br /> n <= 8000|`character`|**varchar(max)**||  
|**varbinary(max)**|`raw`|**varbinary(max)**|Only allowed as input parameter and output|  


  
## Data types not supported by R
  
  Of the categories of data types supported by the [SQL Server type system](https://msdn.microsoft.com/library/ms187752.aspx), the following types are likely to pose problems when passed to R code:

+ Data types listed in the **Other** section: **cursor**, **timestamp**, **hierarchyid**, **uniqueidentifier**, **sql_variant**, **xml**, **table**
+ All spatial types
+ **image**

## Data types that might convert poorly

+ Most datetime types should work, except for **datetimeoffset** 
+ Most numeric data types are supported, but conversions might fail for **money** and **smallmoney**
+ **varchar** is supported, but because SQL Server uses Unicode as a rule, use of **nvarchar** and other Unicode text data types is recommended where possible.
+ Functions from the RevoScaleR library prefixed with rx can handle the SQL binary data types (**binary** and **varbinary**), but in most scenarios special handling will be required for these types. Most R code cannot work with binary columns.

  
 For more information about [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data types, see [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)  

## Changes in data types between SQL Server 2016 and earlier versions

Microsoft SQL Server 2016 and Microsoft Azure SQL Database include improvements in data type conversions and in several other operations. Most of these improvements offer increased precision when you deal with floating-point types, as well as minor changes to operations on classic **datetime** types. 

These improvements are all available by default when you use a database compatibility level of 130 or later. However, if you use a different compatibility level, or connect to a database using an older version, you might see differences in the precision of numbers or other results. 

For more information, see [SQL Server 2016 improvements in handling some data types and uncommon operations](https://support.microsoft.com/help/4010261/sql-server-2016-improvements-in-handling-some-data-types-and-uncommon-).
 

## Verify R and SQL data schemas in advance 

In general, whenever you have any doubt about how a particular data type or data structure is being used in R, use the  `str()` function to get the internal structure and type of the R object. The result of the function is printed to the R console and is also available in the query results, in the **Messages** tab in [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)].  
 
When retrieving data from a database for use in R code, you should always eliminate columns that cannot be used in R, as well as columns that are not useful for analysis, such as GUIDS (uniqueidentifier), timestamps and other columns used for auditing, or lineage informatioh created by ETL processes. 

Note that inclusion of unnecessary columns can greatly reduce the performance of R code, especially if high cardinality columns are used as factors. Therefore, we recommend that you use SQL Server system stored procedures and information views to get the data types for a given table in advance, and eliminate or convert incompatible columns. For more information, see [Information Schema Views in Transact-SQL](https://msdn.microsoft.com/library/ms186778.aspx)

 If a particular [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data type is not supported by R, but you need to use the columns of data in the R script, we recommend that you use the [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md) functions to ensure that the data type conversions are performed as intended before using the data in your R script.  
 
 > [!WARNING]
If you use the **rxDataStep** to drop incompatible columns while moving data, be aware that the arguments _varsToKeep_ and _varsToDrop_ are not supported for the **RxSqlServerData** data source type.
    
## Examples  

### Example 1: Implicit conversion

 The following example demonstrates how data is transformed when making the round-trip between SQL Server and R.
 
 The query gets a series of values from a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table, and uses the stored procedure  [sp_execute_external_script &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md) to output the values using the R runtime.  
  
```  
CREATE TABLE MyTable (    
 c1 int,    
 c2 varchar(10),    
 c3 uniqueidentifier    
);    
go    
INSERT MyTable VALUES(1, 'Hello', newid());    
INSERT MyTable VALUES(-11, 'world', newid());    
SELECT * FROM MyTable;    
  
EXECUTE sp_execute_external_script    
 @language = N'R'    
 , @script = N'    
inputDataSet["cR"] <- c(4, 2)    
str(inputDataSet)    
outputDataSet <- inputDataSet'    
 , @input_data_1 = N'SELECT c1, c2, c3 FROM MyTable'    
 , @input_data_1_name = N'inputDataSet'    
 , @output_data_1_name = N'outputDataSet'    
 WITH RESULT SETS((C1 int, C2 varchar(max), C3 varchar(max), C4 float));  
```  
  
 **Results**  
  
||||||  
|-|-|-|-|-|  
||C1|C2|C3|C4|  
|1|1|Hello|6e225611-4b58-4995-a0a5-554d19012ef1|4|  
|1|-11|world|6732ea46-2d5d-430b-8ao1-86e7f3351c3e|2|  
  
 Note the use of the `str` function in R to get the schema of the output data. This function returns the following information:  
  
```  
'data.frame':2 obs. of  4 variables:   
 $ c1: int  1 -11   
 $ c2: Factor w/ 2 levels "Hello","world": 1 2   
 $ c3: Factor w/ 2 levels "6732EA46-2D5D-430B-8A01-86E7F3351C3E",..: 2 1   
 $ cR: num  4 2  
```  
  
 From this, you can see that the following data type conversions were implicitly performed as part of this query:  
  
-   **Column C1**. The column is represented as **int** in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], `integer` in R, and **int** in the output result set.  
  
     No type conversion was performed.  
  
-   **Column C2**. The column is represented as **varchar(10)** in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], `factor` in R, and **varchar(max)** in the output.  
  
     Note how the output changes; any string from R (either a factor or a regular string) will be represented as **varchar(max)**, no matter what the length of the strings is.  
  
-   **Column C3**.  The column is represented as **uniqueidentifier** in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], `character` in R, and **varchar(max)** in the output.  
  
     Note the data type conversion that happens. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports the **uniqueidentifier** but R does not; therefore, the identifiers are represented as strings.  
  
-   **Column C4**. The column contains values generated by the R script and not present in the original data.  
 


## Example 2: Dynamic column selection using R

 The following example shows how you can use R code to check for invalid column types. The gets the schema of a specified table using the SQL Server system views, and removes any columns that have a specified invalid type.
 
```R
connStr <- "Server=.;Database=TestDB;Trusted_Connection=Yes"
data <- RxSqlServerData(connectionString = connStr, sqlQuery = "SELECT COLUMN_NAME FROM TestDB.INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'testdata' AND DATA_TYPE <> 'image';")
columns <- rxImport(data)
columnList <- do.call(paste, c(as.list(columns$COLUMN_NAME), sep = ","))
sqlQuery <- paste("SELECT", columnList, "FROM testdata")
```
 
 
 ## See Also
 [SQL Server R Services Features and Tasks](../../advanced-analytics/r-services/sql-server-r-services-features-and-tasks.md)
  
  