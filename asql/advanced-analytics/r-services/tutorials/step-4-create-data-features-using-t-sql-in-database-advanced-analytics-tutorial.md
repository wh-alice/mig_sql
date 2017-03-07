---
title: "Step 4: Create Data Features using T-SQL (In-Database Advanced Analytics Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-04-19"
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
  - "TSQL"
ms.assetid: 5b2f4c44-6192-40df-abf1-fc983844f1d0
caps.latest.revision: 10
ms.author: "jeannt"
manager: "jhubbard"
---
# Step 4: Create Data Features using T-SQL (In-Database Advanced Analytics Tutorial)
After several rounds of data exploration, you have collected some insights from the data, and are ready to move on to *feature engineering*. This process of creating features from the raw data is a critical step in advanced analytics modeling.  
  
In this step, you'll learn how to create features from raw data by using a [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] function. You'll then call that function from a stored procedure to create a table that contains the feature values.  
  
## Define the Function  
The distance values reported in the original data are based on the reported meter distance, and don't necessarily represent geographical distance or distance traveled. Therefore, you'll need to calculate the direct distance between the pick-up and drop-off points, by using the coordinates available in the source NYC Taxi dataset. You can do this by using the [Haversine formula](https://en.wikipedia.org/wiki/Haversine_formula) in a custom [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] function.  
  
You'll use one custom T-SQL function, _fnCalculateDistance_, to compute the distance using the Haversine formula, and use a second custom T-SQL function, _fnEngineerFeatures_, to create a table containing all the features.  
  
#### To calculate trip distance using  fnCalculateDistance  
  
1.  The function _fnCalculateDistance_ should have been downloaded and registered with [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] as part of the preparation for this walkthrough. Take a minute to review the code  
  
    In [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], expand **Programmability**, expand **Functions** and then **Scalar-valued functions**.   
    Right-click _fnCalculateDistance_, and select **Modify** to open the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] script in a new query window.  
  
    ```  
    CREATE FUNCTION [dbo].[fnCalculateDistance] (@Lat1 float, @Long1 float, @Lat2 float, @Long2 float)  
    -- User-defined function that calculates the direct distance between two geographical coordinates.  
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
    GO  
  
    ```  
  
    -   The function is a scalar-valued function, returning a single data value of a predefined type.  
  
    -   It takes latitude and longitude values as inputs, obtained from trip pick-up and drop-off locations. The Haversine formula converts locations to radians and uses those values to compute the direct distance in miles between those two locations.  
  
To add the computed value to a table that can be used for training the model, you'll use another function, _fnEngineerFeatures_.  
  
#### To save the features using _fnEngineerFeatures_  
  
1.  Take a minute to review the code for the custom T-SQL function, _fnEngineerFeatures_, which should have been created for you as part of the preparation for this walkthrough.  
  
    This function is a table-valued function that takes multiple columns as inputs, and outputs a table with multiple feature columns.  The purpose of this function is to create a feature set for use in building a model. The function _fnEngineerFeatures_ calls the previously created T-SQL function, _fnCalculateDistance_, to get the direct distance between pickup and dropoff locations.  
  
    ```  
    CREATE FUNCTION [dbo].[fnEngineerFeatures] (  
    @passenger_count int = 0,  
    @trip_distance float = 0,  
    @trip_time_in_secs int = 0,  
    @pickup_latitude float = 0,  
    @pickup_longitude float = 0,  
    @dropoff_latitude float = 0,  
    @dropoff_longitude float = 0)  
    RETURNS TABLE  
    AS  
      RETURN  
      (  
      -- Add the SELECT statement with parameter references here  
      SELECT  
        @passenger_count AS passenger_count,  
        @trip_distance AS trip_distance,  
        @trip_time_in_secs AS trip_time_in_secs,  
        [dbo].[fnCalculateDistance](@pickup_latitude, @pickup_longitude, @dropoff_latitude, @dropoff_longitude) AS direct_distance  
  
      )  
    GO  
  
    ```  
  
2.  To verify that this function works, you can use it to calculate the geographical distance for those trips where the metered distance was 0 but the pick-up and drop-off locations were different.  
  
    ```  
        SELECT tipped, fare_amount, passenger_count,(trip_time_in_secs/60) as TripMinutes,  
        trip_distance, pickup_datetime, dropoff_datetime,   
        dbo.fnCalculateDistance(pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude) AS direct_distance  
        FROM nyctaxi_sample  
        WHERE pickup_longitude != dropoff_longitude and pickup_latitude != dropoff_latitude and trip_distance = 0  
        ORDER BY trip_time_in_secs DESC  
    ```  
  
    As you can see, the distance reported by the meter doesn't always correspond to geographical distance. This is why feature engineering is so important.  
  
In the next step, you'll learn how to use these data features to train a machine learning model using R.  
  
## Next Step  
[Step 5: Train and Save a Model using T-SQL](../Topic/Step%205:%20Train%20and%20Save%20a%20Model%20using%20T-SQL%20(In-Database%20Advanced%20Analytics%20Tutorial).md)  
  
## Previous Step  
[Step 3: Explore and Visualize the Data](../../../advanced-analytics/r-services/tutorials/step-3-explore-and-visualize-the-data-in-database-advanced-analytics-tutorial.md)  
  
## See Also  
[In-Database Advanced Analytics for SQL Developers &#40;Tutorial&#41;](../../../advanced-analytics/r-services/tutorials/in-database-advanced-analytics-for-sql-developers-tutorial.md)  
[SQL Server R Services Tutorials](../../../advanced-analytics/r-services/tutorials/sql-server-r-services-tutorials.md)  
  
  
  
