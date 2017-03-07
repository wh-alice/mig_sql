---
title: "Saving, Querying, and Managing R Models in SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 649677ce-7850-494d-a3d0-e77bfc0403e7
caps.latest.revision: 5
ms.author: "jeannt"
---
# Saving, Querying, and Managing R Models in SQL Server
  Frictionless deployment of trained models is key to using an R solution in production environments.  
  
 This topic provides guidance on how to use [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] stored procedures to encapsulate R code for model training and scoring. Use of stored procedures makes it easier to pass in parameters and call the model from applications.  
  
## Model Management in SQL Server  
 In [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], you can save an R model object (trained or untrained) to a database table using the **varbinary** data type. The saved model can then be called by a stored procedure to perform scoring, or updated as necessary by training on new data,  
  
 A predictive model can be stored in a table like any other binary object. For example, the following statement defines a simple table that can be used to store a model.  
  
```  
CREATE TABLE my_models (  
    model_name varchar(30) NOT NULL default('default model') primary key,  
    model varbinary(max) NOT NULL  
);  
```  
  
 However, to make management of model metadata simpler, we recommend that you create a standard schema for model tables, and define a standard stored procedure for inserting model metadata into the table together with the model object. For example, the following stored procedure populates the model table with metadata such as:  
  
-   The time required to train the model  
  
-   Creation date and time  
  
-   The application that started the training job  
  
```  
CREATE PROCEDURE train_and_store_model (  
    @input_query nvarchar(max)  
)  
  
AS  
BEGIN  
    DECLARE @start datetime2 = SYSDATETIME(), @model_generation_duration float, @model varbinary(max)  
          , @instance_name nvarchar(100) = @@SERVERNAME  
          , @database_name nvarchar(128) = db_name();  
  
   # R script that defines a model it and trains the model  
    exec sp_execute_external_script  
        @language = N'R'  
        , @script = N'  
     model_generation_duration <- system.time(logitObj <- rxLogit(<formulas> <data>);   
        modelbin <- serialize(logitObj, NULL);  
    '  
        , @input_data_1 = N''  
        , @params = N'@instance_name nvarchar(100),   
           @database_name nvarchar(128),   
           @modelbin varbinary(max) OUTPUT,   
           @model_generation_duration float OUTPUT'  
        , @instance_name = @instance_name  
        , @database_name = @database_name  
     , @modelbin = @model OUTPUT  
        , @model_generation_duration = @model_generation_duration OUTPUT;  
  
insert into my_models (model_name, model, training_duration_ms, model_generation_duration_ms)  
        values(OBJECT_NAME(@@PROCID), @model, DATEDIFF_BIG(ms, @start, SYSDATETIME()), @model_generation_duration);  
END;  
```  
  
 To use a stored model, execute a SELECT statement and pass the model to an application (such as R) that can consume the model object.  
  
## Create and Save a Model using [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)]  
 To create and train a model, write R code as you would in any development environment, and then call the R code by using the stored procedure [sp_execute_external_script &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md).  
  
 To define the model parameter values, you can pass in parameters as arguments to the [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] stored procedure, or you can embed them in your R code.  
  
### Defining all Parameters in R  
 The following example demonstrates the simplest approach, in which all parameters are defined as part of the embedded R code. Assuming a simple linear model created using the `rxLinMod` package:  
  
```  
arrDelayLm1 <- rxLinMod(ArrDelay ~ DayOfWeek, data = airDS)  
```  
  
 This R code returns a model object, which must be serialized before for storage in SQL Server.  
  
### Passing Model Parameters to R as Stored Procedure Arguments  
 Insert subsection body here.  
  
 For a simple walkthrough of the model creation process, see [Using R Code in Transact-SQL &#40;SQL Server R Services&#41;](../advanced-analytics/r-services/tutorials/using-r-code-in-transact-sql-sql-server-r-services.md).  
  
## Update a Model by Retraining  
  
## Call a Stored Model for Scoring  
  
  