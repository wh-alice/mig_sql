---
title: "Using R Functions with SQL Server Data (R in T-SQL Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-10"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
  - "SQL"
ms.assetid: e2fe5d90-eee9-4daf-9eae-21d17b3ef320
caps.latest.revision: 6
ms.author: "jeannt"
manager: "jhubbard"
---
# Using R Functions with SQL Server Data (R in T-SQL Tutorial)
Now that you're familiar with basic operations, it's time to have some fun with R. For example, many advanced statistical functions can be run using a single line of R code, but might be very complicated to implement using T-SQL.  With R Services, it's easy to embed R utility scripts in a stored procedure.   
In this step, you'll use some R mathematical and utility functions in SQL Server and embed the calls in a stored procedure.

## Create a stored procedure to generate random numbers  
  
To keep this example simple, we'll use the R `stats` package, which is installed and loaded by default with R Services. The package contains hundreds of functions for common statistical tasks, among them the `rnorm` function, which generates some number of random numbers in a normal distribution, given a standard deviation and mean.    

For example, this R code returns 100 numbers on a mean of 50, given a standard deviation of 3. 

```R
as.data.frame(rnorm(100, mean = 50, sd = 3));
```

To call this line of R from T-SQL, you can provide the function and its arguments in a stored procedure call like this one: 
   
```sql    
EXEC sp_execute_external_script    
      @language = N'R'    
    , @script = N' 
         OutputDataSet <- as.data.frame(rnorm(100, mean = 50, sd =3));'    
    , @input_data_1 = N'   ;'    
      WITH RESULT SETS (([Density] float NOT NULL));    
```    

But you'd like to make it easier to generate a different set of random numbers. To do this, create another stored procedure, add the preceding call to sp_execute_external_script, and pass in the arguments to  `rnorm`. 


```sql
CREATE PROCEDURE MyRNorm (@param1 int, @param2 int, @param3 int)
AS
    EXEC sp_execute_external_script    
      @language = N'R'    
    , @script = N'
	     OutputDataSet <- as.data.frame(rnorm(mynumbers, mymean, mysd));'    
    , @input_data_1 = N'   ;' 
	, @params = N' @mynumbers int, @mymean int, @mysd int'  
	, @mynumbers = @param1
	, @mymean = @param2
	, @mysd = @param3
    WITH RESULT SETS (([Density] float NOT NULL));   
```
+ The first line defines each of the input parameters required when the stored procedure is executed. 
+ The line beginning with `@params` defines all variables used by the R code, and the corresponding SQL data types. 
+ You then map all the SQL parameter names to the corresponding R variable names.

By wrapping the R function in a stored procedure, you can easily call any well-defined R function from SQL code and pass in different values, like this:

```sql
EXEC MyRNorm @param1 = 100,@param2 = 50, @param3 = 3
```  

**Notes**

+ If you need to install new packages, see [Installing and Managing R packages](../../../advanced-analytics/r-services/installing-and-managing-r-packages.md). 
+ The R Services team created an R package to help you convert your standalone R code to a format that can be easily parameterized using SQL Server stored procedures. For more information, see [How to Create a Stored Procedure using sqlrutils](../../../advanced-analytics/r-services/how-to-create-a-stored-procedure-using-sqlrutils.md). 
    
## Use R utility functions for troubleshooting 
  
By default, R Services includes the `utils` package, which provides a variety of utility functions for investigating the current R environment. This can be useful if you are finding discrepancies in the way your R code performs in SQL Server and in outside environments.

For example, you might use the R `memory.limit()` function to get memory for the current R environment. Because the `utils` package is installed but not loaded by default, you must use the `library()` function to load it first.    
    
```sql    
EXECUTE sp_execute_external_script    
      @language = N'R'    
    , @script = N'    
        library(utils);    
        mymemory <- memory.limit();    
        OutputDataSet <- as.data.frame(mymemory);'    
    , @input_data_1 = N' ;'    
WITH RESULT SETS (([Col1] int not null));    
```    


> [!TIP] 
> You can use the system timing functions in R, such as `system.time` and `proc.time`,  to capture the time used by R processes and analyze performance issues. 
> 
> For an example, see this tutorial: [Create Data Features](https://msdn.microsoft.com/library/mt634286.aspx). In this walkthrough, R timing functions are used to compare the performance of two feature engineering methods: using R functions, or using T-SQL functions. 


## Next Step

Next, it's time to build some predictive models using R in SQL Server.

[Create a Predictive Model](../../../advanced-analytics/r-services/tutorials/create-a-predictive-model-r-in-t-sql-tutorial.md)

    
    

