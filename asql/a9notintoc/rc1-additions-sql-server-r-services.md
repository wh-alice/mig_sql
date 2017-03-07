---
title: "RC1 Additions (SQL Server R Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d9414298-1b16-4a1b-beba-7043c63eae40
caps.latest.revision: 8
ms.author: "jeannt"
---
# RC1 Additions (SQL Server R Services)
  Insert introduction here.  
  
## RTM  
  
-   Integrated authentication is now supported.  
  
-   Support for developing and running parallel processing applications, using MPI. You can specify multiple tasks to speed up computations, rather than using a single task thread.  
  
     Microsoft MPI (MS-MPI) is a Microsoft implementation of the Message Passing Interface standard for developing and running parallel applications on the Windows platform.  
  
-   Telemetry using Extended Events and DMVs  
  
-   Configure R Wizard to enable the feature and tune external resource pool settings  
  
-   New default  resource pool to manage R and other external processes  
  
-   Runtime Dashboard for viewing the R version and for managing installed packages and their dependencies  
  
-   compatibility of R with all SQL Unicode collations. Automatically (?) perform conversion between UTF-16 and UTF-8. Note that R has limited support for non-Ascii code pages so some data loss is possible during conversion.  
  
## What's New in RC2  
  
-   New, easier integrated setup of   all components. The unified installer downloads Microsoft R Open, installs Microsoft R Server and all required components, and performs configuration of the R services needed for [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] integration.  
  
     Additionally, in Enterprise Edition, you can use SQL Server setup to install a matching version of the R components on a client computer used for data science development.  
  
     For RC1, the version of [!INCLUDE[rsql_rre-noversion](../a9notintoc/includes/rsql-rre-noversion-md.md)] has been updated to Revolution R Enterprise 8.0 (RRE- 8.0.1). For [!INCLUDE[rsql_rro-noversion](../a9notintoc/includes/rsql-rro-noversion-md.md)], RC1 uses **R-3.2.2 for RRE 8.0.1**.  
  
-   Integrated authentication is now supported. ??  
  
-   Significant performance improvements based on optimization of the SQL satellite processes that connect R and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].??  
  
-   Support for paging of data to enable high-volume data usage. You can easily work with billions of rows because they are loaded as needed, rather than being read into memory before R can work.??  
  
-   Support for streaming. If you are processing  a billion rows with a batch size of one million rows, the [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] interface will start returning results as soon as the first batch has been processed.  
  
-   Support for developing and running parallel processing applications, using MPI. You can specify multiple tasks to speed up computations, rather than using a single task thread.??  
  
     Microsoft MPI (MS-MPI) is a Microsoft implementation of the Message Passing Interface standard for developing and running parallel applications on the Windows platform.  
  
## Data Types  
 In addition to returning values as part of a result set (an R  data.frame ), you can also return scalar values from R script to   by specifying OUTPUT parameters.  
  
 In the following example, the first part of the R script builds a model and stores it,  
  
```  
declare @model varbinary(max);  
    exec sp_execute_external_script  
        @language = N'R'  
        , @script = N'  
    # build classification model  
    logitObj <- glm(tipped ~ passenger_count + trip_distance + trip_time_in_secs + direct_distance, data = featureDataSource, family = binomial(link=logit));  
  
    # Serialize a model and store it in a table  
    modelbin <- serialize(logitObj, NULL);  
    '  
        , @input_data_1 = N'  
SELECT tipped, passenger_count, trip_time_in_secs, trip_distance, d.direct_distance  
  FROM dbo.nyctaxi_sample TABLESAMPLE (1 PERCENT) REPEATABLE (98074)  
  CROSS APPLY CalculateDistance(pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude) as d  
'  
        , @input_data_1_name = N'featureDataSource'  
        , @params = N'@modelbin varbinary(max) OUTPUT'  
        , @modelbin = @model OUTPUT;  
```  
  
### Kown Issues  
 Note that this limitation applies only to use of the **RevoScaleR** functions from a remote client. Windows authentication is supported in the following scenarios: running R scripts in [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)], calling a stored procedure that uses a ScaleR function, or connecting to [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] by using another provider such as RODBC.  
  
  