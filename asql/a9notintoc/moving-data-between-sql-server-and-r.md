---
title: "Moving Data Between SQL Server and R | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6d6d5bb5-8c21-4f80-941e-01c695ba1ddb
caps.latest.revision: 7
ms.author: "jeannt"
---
# Moving Data Between SQL Server and R
  One of the advantages of [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] is that you can keep your R code close to the data, avoiding export to CSV and other costly, insecure data transfers. This topics describes best practices for using SQL Server data in your R solutions.  
  
 Common data movement scenarios include:  
  
-   Calling SQL Server data from R  
  
-   Creating tables and inserting data using R  
  
-   Exporting data to the workspace of a data science client  
  
-   Using embedded RODBC calls  
  
-   Saving models to a table and using saved models for prediction  
  
     [Saving, Querying, and Managing R Models in SQL Server](../a9notintoc/saving-querying-and-managing-r-models-in-sql-server.md)  
  
-   Data cleaning and preparation  
  
## Calling SQL Server data from R  
 use case  
  
 methods  
  
##  <a name="bkmk_RResults"></a> Creating tables and inserting data using R  
 use cases  
  
 Generating and Saving R Results  
  
## Exporting Data to a Client  
 use case  
  
 methods  
  
##  <a name="bkmk_OtherDataSources"></a> Using Multiple Datasets  
 The stored procedure [sp_execute_external_script &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md) can accept only one dataset defined as the input parameter to a query. However, there are many cases where you might need to get multiple datasets for use in your R code. For example:  
  
-   To aggregate a dataset by external dimension values, rather than recomputing the factors as part of your code  
  
-   To use R functions, rather than  a SQL operator such as JOIN, to combine the datasets  
  
-   To get a set of reference values, labels, and so forth  
  
 To get additional data sets, use a package such as RODBC or RJDBC from within your R script, just as you would if you were combining the datasets on your laptop or other client machine. Generally we recommend that you get the larger dataset by using the input dataset parameter, and get smaller tables by using ODBC.  
  
 For example, the  following stored procedure demonstrates how you can use an  RODBC call as part of R script inside a stored procedure to get a set of values to apply to the main dataset. Here, the main data input is by the *@input_data_1* parameter, which includes the query definition `SELECT object_id FROM sys.tables`. The ODBC call queries the same database, but returns the data defined by `SELECT name FROM sys.tables`.  
  
```  
CREATE PROCEDURE multiple_datasets  
AS  
BEGIN  
    DECLARE @instance_name nvarchar(100) = @@SERVERNAME  
        , @database_name nvarchar(128) = db_name();  
    exec sp_execute_external_script  
        @language = N'R'  
        , @script = N'  
    library(RODBC);  
    connStr <- paste("Driver=SQL Server;Server=", instance_name, ";Database=", database_name, ";Trusted_Connection=true;", sep="");  
    dbhandle <- odbcDriverConnect(connStr)  
    OutputDataSet <- sqlQuery(dbhandle, "select name from sys.tables");  
    OutputDataSet <- cbind(InputDataSet, apply(OutputDataSet, 1, nchar));  
    '  
        , @input_data_1 = N'select object_id from sys.tables'  
        , @params = N'@instance_name nvarchar(100), @database_name nvarchar(128)'  
        , @instance_name = @instance_name  
        , @database_name = @database_name  
    WITH RESULT SETS ((id int, c_len int));   
END;  
GO  
```  
  
 The results contains the object_ID and the string length of the object name.  
  
> [!NOTE]  
>  If you get an error when running this stored procedure, you might need to ensure that the Windows group for the instance (for a default instance, SQLRUsersGroup) has permission to connect to the instance. That is because the [!INCLUDE[rsql_launchpad](../a9notintoc/includes/rsql-launchpad-md.md)] uses this group account to perform ODBC calls that are sent from external script. If this Windows group has permission to connect, when the RODBC call is made, the [!INCLUDE[rsql_launchpad](../a9notintoc/includes/rsql-launchpad-md.md)] impersonates the credentials of the user who originally ran the stored procedure that contains the call.  
  
## Data cleaning and preparations  
 In addition to standard data cleansing methods that are familiar to SQL developers, R can be used to perform many specialized data preparation tasks, including normalization, scaling, outlier detections, statistical profiling and transformations that would be tme-consuming to code using [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)].  
  
-   Outlier detection  
  
-   Filtering  
    by attributes or  
  
-   Historical pricing summary (e.g. average margins by quarter)  
    Top N revenue customers/products  
  
 Although in many cases the data transformation process can be performed using ETL tools or T-SQL, in many cases R offers multiple advantages:  
  
-   Fully developed statistical libraries  
  
-   R supports rapid iteration, rather than a single predetermined process as in ETL. The data scientist might need to try different transformation and test the results  
  
-   R enables exploration as part of  transformation. Source data might not contain the needed attributes, but this is often determined by using visualizations  
  
 However, R is has its own problems: performance on large data sets, and the difficulty of bringing R to the data. Discoveries made in R can be difficult to port back into  other tools, and models are hard to understand if not integrated with the source data.  
  
##  <a name="bkmk_RelatedTasks"></a> Related Tasks  
  
-   Create a helper function that uses R to create a table-valued function  
  
-   Embed an input query as parameter to the system stored procedure  
  
-   Call the RX functions from [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Use SQL Server connector for optimized access to data from [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Invoke multiple instances and distribute data to each R process  
  
  