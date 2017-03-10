---
title: "Lesson 3: Create Data Features (Data Science End-to-End Walkthrough) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
dev_langs: 
  - "R"
ms.assetid: 4981d4eb-0874-4fe9-82e1-edf99890e27a
caps.latest.revision: 19
ms.author: "jeannt"
manager: "jhubbard"
---
# Lesson 3: Create Data Features (Data Science End-to-End Walkthrough)
Data engineering is another important part of machine learning. Often data needs to be transformed before you can use it for predictive modeling. If the data does not have the features you need, you can engineer them from existing values.  
  
For this modeling task, rather than using the raw latitude and longitude values of the pickup and drop-off location, you'd like to have the distance in miles between the two locations. To create this feature, you'll compute the direct linear distance between two points, by using the [haversine formula](https://en.wikipedia.org/wiki/Haversine_formula).  
You'll compare two different methods for creating a feature from data:  
  
-   Using R and the *rxDataStep* function    
-   Using a custom function in [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)]  
  
For both methods, the result of the code is a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data source object, *featureDataSource*, that includes the new numeric feature, *direct_distance*.  
  
## Creating Features Using R  

The R language is well-known for its rich and varied statistical libraries, but you still might need to create custom data transformations. 

+ You'll create a new R function, *ComputeDist*, to calculate the linear distance between two points specified by latitude and longitude values.  
+ You'll  call the function to transform the data in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data object you created earlier, an save it in a new data source, *featureDataSource*.  

### Create the transformation function  
1.  Create a custom R function, *ComputeDist*. It takes in two pairs of latitude and longitude values, and calculates the linear distance between them.  The function returns a distance in miles.
  
    ```R  
    env <- new.env()  
    env$ComputeDist <- function(pickup_long, pickup_lat, dropoff_long, dropoff_lat){  
      R <- 6371/1.609344 #radius in mile  
      delta_lat <- dropoff_lat - pickup_lat  
      delta_long <- dropoff_long - pickup_long  
      degrees_to_radians = pi/180.0  
      a1 <- sin(delta_lat/2*degrees_to_radians)  
      a2 <- as.numeric(a1)^2  
      a3 <- cos(pickup_lat*degrees_to_radians)  
      a4 <- cos(dropoff_lat*degrees_to_radians)  
      a5 <- sin(delta_long/2*degrees_to_radians)  
      a6 <- as.numeric(a5)^2  
      a <- a2+a3*a4*a6  
      c <- 2*atan2(sqrt(a),sqrt(1-a))  
      d <- R*c  
      return (d)  
    }  
    ```  
  
    + The first line defines a new environment. In R, an environment can be used to encapsulate name spaces in packages and such.
    + You can use the `search()` function to view the environments in your workspace. To view the objects in a specific environment, type `ls(<envname>)`. 
    + The lines beginning with `$env.ComputeDistance` contain the code that defines the haversine formula, which calculates the *great-circle distance* between two points on a sphere.  
 
  
### Apply the transformation function to data

Having defined the function, you will apply it to the data to create a new feature column, *direct_distance*.

1. Create a data source to work with by using the *RxSqlServerData* constructor.  
  
    ```R  
    featureDataSource = RxSqlServerData(table = "features",   
       colClasses = c(pickup_longitude = "numeric", 
       pickup_latitude = "numeric",   
       dropoff_longitude = "numeric", 
       dropoff_latitude = "numeric",  
       passenger_count  = "numeric", 
       trip_distance  = "numeric",  
       trip_time_in_secs  = "numeric", 
       direct_distance  = "numeric"),  
      connectionString = connStr)  
    ```  
  
3.  Call the *rxDataStep* function to apply the `env$ComputeDist` function to the specified data.  
    
    ```R  
    start.time <- proc.time()  
  
    rxDataStep(inData = inDataSource, outFile = featureDataSource,  
         overwrite = TRUE,  
         varsToKeep=c("tipped", "fare_amount", passenger_count", "trip_time_in_secs", 
            "trip_distance", "pickup_datetime", "dropoff_datetime", "pickup_longitude",
            "pickup_latitude", "dropoff_longitude", "dropoff_latitude")
         , transforms = list(direct_distance=ComputeDist(pickup_longitude, 
            pickup_latitude, dropoff_longitude, dropoff_latitude)),
            transformEnvir = env, rowsPerRead=500, reportProgress = 3)  
  
    used.time <- proc.time() - start.time  
    print(paste("It takes CPU Time=", round(used.time[1]+used.time[2],2)," seconds, Elapsed Time=", round(used.time[3],2), " seconds to generate features.", sep=""))    
    ```  
  
    + The *rxDataStep* function can modify data in place. The arguments include a character vector of columns to pass through (*varsToKeep*), and a  list that defines transformations.
    + Any columns that are transformed are automatically output and therefore do not need to be included in the *varsToKeep* argument.
    + Alternatively, you can specify that all columns in the source be included except for the specified variables, by using the *varsToDrop* argument.  
  
4.  Finally, call *rxGetVarInfo* to inspect the schema of the new data source:  
  
    ```R  
    rxGetVarInfo(data = featureDataSource)  
    ```  
  
    *Results*
    
    *"It takes CPU Time=0.74 seconds, Elapsed Time=35.75 seconds to generate features."*  
    *Var 1: tipped, Type: integer*   
    *Var 2: fare_amount, Type: numeric*   
    *Var 3: passenger_count, Type: numeric*   
    *Var 4: trip_time_in_secs, Type: numeric*   
    *Var 5: trip_distance, Type: numeric*   
    *Var 6: pickup_datetime, Type: character*   
    *Var 7: dropoff_datetime, Type: character*   
    *Var 8: pickup_longitude, Type: numeric*   
    *Var 9: pickup_latitude, Type: numeric*   
    *Var 10: dropoff_longitude, Type: numeric*   
    *Var 11: dropoff_latitude, Type: numeric*   
    *Var 12: direct_distance, Type: numeric*   
  
## Creating Features using Transact-SQL  
Now that you've seen how to create a feature using an R function, you'll create a custom SQL function, *ComputeDist*, to do the same thing. The custom SQL function *ComputeDist* operates on an existing *RxSqlServerData* data object to create the new distance features from the existing latitude and longitude values.  
  
You'll save the results of the transformation to a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data object, *featureDataSource*, just as you did using R.  
  
Very often, feature engineering using [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] will be faster than R. Choose the most efficient method based on your data and task.  

### Define the T-SQL custom function
  
1.  Define a new SQL function, named *fnCalculateDistance*.  
  
    ```tsql  
    CREATE FUNCTION [dbo].[fnCalculateDistance] (@Lat1 float, @Long1 float, @Lat2 float, @Long2 float)  
    -- User-defined function calculates the direct distance between two geographical coordinates.  
    RETURNS float  
    AS  
    BEGIN  
      DECLARE @distance decimal(28, 10)  
      -- Convert to radians  
      SET @Lat1 = @Lat1 / 57.2958  
      SET @Long1 = @Long1 / 57.2958  
      SET @Lat2 = @Lat2 / 57.2958  
      SET @Long2 = @Long2 / 57.2958  
      -- Calculate distance  
      SET @distance = (SIN(@Lat1) * SIN(@Lat2)) + (COS(@Lat1) * COS(@Lat2) * COS(@Long2 - @Long1))  
      --Convert to miles  
      IF @distance <> 0  
      BEGIN  
        SET @distance = 3958.75 * ATAN(SQRT(1 - POWER(@distance, 2)) / @distance);  
      END  
      RETURN @distance  
    END  
  
    ```  

    + The code for this user-defined SQL function is provided as part of the PowerShell script you ran to create and configure the database.  The function should already exist in your database.  If it does not exist, use SQL Server Management Studio to generate the function in the same database where the taxi data is stored.

2.  To see how the function works, the following [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statement from any application that supports [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)].   
  
    ```tsql  
    SELECT tipped, fare_amount, passenger_count,trip_time_in_secs,trip_distance, pickup_datetime, dropoff_datetime,       
    dbo.fnCalculateDistance(pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude) as direct_distance,  
    pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude   
    FROM nyctaxi_sample  
  
    ```  
### Call the SQL function from R

1. Save the SQL statement that calls the custom function in an R variable.  
  
    ```R  
    featureEngineeringQuery = "SELECT tipped, fare_amount, passenger_count,  
        trip_time_in_secs,trip_distance, pickup_datetime, dropoff_datetime,   
        dbo.fnCalculateDistance(pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude) as direct_distance,  
        pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude  
        FROM nyctaxi_joined_1_percent  
        tablesample (1 percent) repeatable (98052)"    
    ```  
  
    > [!TIP]
    > This query is slightly different from the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] query used earlier. It has been modified to get a smaller sample of data, to make this walkthrough faster.  
  
4.  Now, use the following lines of code to call the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] function from your R environment and apply it to the data defined in *featureEngineeringQuery*.  
  
    ```R  
    featureDataSource = RxSqlServerData(sqlQuery = featureEngineeringQuery,  
      colClasses = c(pickup_longitude = "numeric", pickup_latitude = "numeric",           
             dropoff_longitude = "numeric", dropoff_latitude = "numeric",  
             passenger_count  = "numeric", trip_distance  = "numeric",  
              trip_time_in_secs  = "numeric", direct_distance  = "numeric"),  
      connectionString = connStr)  
    ```  
  
5.  Now that the new feature is created, call *rxGetVarsInfo* to create a summary of the feature table.  
  
    ```R  
    rxGetVarInfo(data = featureDataSource)  
    ```  
  
## Comparing R Functions and SQL Functions

As it turns out, for this particular task, the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] function approach is faster than the custom R function. Therefore, you'll use the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] function for these calculations in subsequent steps.  

Proceed to the next lesson to learn how to build a predictive model using this data and save the model to a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table.  
  
## Next Lesson  
[Lesson 4: Build and Save the Model &#40;Data Science End-to-End Walkthrough&#41;](../../../advanced-analytics/r-services/tutorials/lesson-4-build-and-save-the-model-data-science-end-to-end-walkthrough.md)  
  
## Previous Lesson  
[Lesson 2: View and Explore the Data &#40;Data Science End-to-End Walkthrough&#41;](../../../advanced-analytics/r-services/tutorials/lesson-2-view-and-explore-the-data-data-science-end-to-end-walkthrough.md)  
  
  
  
