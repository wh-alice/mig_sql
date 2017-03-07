---
title: "Create Graphs and Plots Using R (Data Science End-to-End Walkthrough) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-11-23"
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
ms.assetid: 5f70f0a6-fd4a-410f-9f44-1605503f77ec
caps.latest.revision: 15
ms.author: "jeannt"
manager: "jhubbard"
---
# Lesson 2-2 - Create Graphs and Plots Using R
In this lesson, you'll learn techniques for generating plots and maps using R with [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] data.  You'll see how easy it is to view plots that are created on the server, and how you can pass graphics objects to the server.  
  
## Creating Graphics
In [!INCLUDE[rsql_productname](../../../a9notintoc/includes/rsql-productname-md.md)], graphics objects as well as models and results are serialized between your computer and the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] compute context.

When using a SQL Server compute context, you might not be able to download the map representation, because most production database servers completely block Internet access.  Therefore, to create the second set of plots, you will generate the map representation in the client and then overlay on the map the points that are stored as attributes in the *nyctaxi_sample* table.   

To do this, you first create the map representation by calling into Google maps, and then pass the map representation to the SQL context.  
  
This is a pattern that you might find useful when developing your own applications.   
  
### Create a Histogram  
To create a histogram, you'll use the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] data source you created earlier, together with the `rxHistogram` function provided in R Services.  
  
1.  Generate the first plot, using the *rxHistogram* function.  The *rxHistogram* function provides functionality similar to that in open source R packages, but can run in a remote execution context. 
  
    ```R  
    #Plot fare amount on SQL Server and return the plot  
    start.time <- proc.time()  
    rxHistogram(~fare_amount, data = inDataSource, title = "Fare Amount Histogram")  
    used.time <- proc.time() - start.time  
    print(paste("It takes CPU Time=", round(used.time[1]+used.time[2],2), " seconds, Elapsed Time=", round(used.time[3],2), " seconds to generate features.", sep=""))    
    ```         
  
2.  The image is returned in the R graphics device for your development environment.  For example, in RStudio, click the **Plot** window.  In [!INCLUDE[rsql_rtvs](../../../advanced-analytics/r-services/includes/rsql-rtvs-md.md)], a separate graphics window is opened.  
  
    ![using rxHistogram to plot fare amounts](../../../advanced-analytics/r-services/tutorials/media/rsql-e2e-rxhistogramresult.png "using rxHistogram to plot fare amounts")  
  
    > [!NOTE]
    >  Because the ordering of rows using TOP is non-deterministic  without an ORDER BY clause, you might see very different results. We recommend that you experiment with different numbers of rows to get different graphs, and note how long it takes to return the results in your environment.  This particular image was generated using ~10,000 rows of data.
  
### Create a Map Plot  
In this example, you'll generate a plot object using the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instance as the compute context, and then return the plot object to the local compute context for rendering.  
   
1.  First, define the function that creates the plot object.  

    ```R  
    mapPlot <- function(inDataSource, googMap){  
        library(ggmap)  
        library(mapproj)     
        ds <- rxImport(inDataSource)  
        p <- ggmap(googMap)+  
        geom_point(aes(x = pickup_longitude, y =pickup_latitude ), data=ds, alpha =.5,  
    color="darkred", size = 1.5)  
        return(list(myplot=p))  
    }  
    ```  
    + The custom R function *mapPlot* creates a  scatter plot that uses the taxi pickup locations to plot the number of rides that started from each location. It uses the **ggplot2** and  **ggmap** packages, which should already be installed and loaded.  
    + The *mapPlot* function takes two arguments: an existing data object, which you defined earlier using *RxSqlServerData*, and the map representation passed from the client.    
    + Note the use of the *ds* variable to load data from the previously created data source, *inDataSource*.  Whenever you use open source R functions, data must be loaded into data frames in memory. You can do this by using the *rxImport* function in the **RevoScaleR** package.  However, this function runs in memory in the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] context defined earlier. That is, the function is not using the memory of your local workstation.  
  
2.  Next, load the libraries required for creating the maps in your local R environment.  
  
    ```R  
    library(ggmap)  
    library(mapproj)  
    gc <- geocode("Times Square", source = "google")  
    googMap <- get_googlemap(center = as.numeric(gc), zoom = 12, maptype = 'roadmap', color = 'color';    
    ```  
    + This code is run on the R client. Note the repeated call to the libraries **ggmap** and **mapproj**. The reason is that the previous function definition ran in the server context and the libraries were never loaded locally; now you are bringing the plotting operation back to your workstation.  
  
    -   The *gc* variable stores a set of coordinates for Times Square, NY.  
  
    -   The line beginning with *googmap* generates a map with the specified coordinates at the center.  
          
  
3.  Execute the plotting function and render the results in your local R environment. To do this, wrap the plot function in *rxExec* as shown here.  The *rxExec* function is included in the **RevoScaleR** package, and supports execution of arbitrary R functions in a remote compute context. 
  
    ```R  
    myplots <- rxExec(mapPlot, inDataSource, googMap, timesToRun = 1)  
    plot(myplots[[1]][["myplot"]]);  
  
    ```  
    + In the first line, you can see that the map data is passed as an argument (*googMap*) to the  remotely executed function *mapPlot*. That is because the maps were generated in your local environment, and must be passed to the function in order to create the plot in the context of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].   
  
        The rendered data is then serialized back to the local R environment so that you can view it, using the **Plot** window in RStudio or other R graphics device.  
  
  
4.  Here is the output plot, showing the pickup locations on the map as red dots.  
  
    ![plotting taxi rides using a custom R function](../../../advanced-analytics/r-services/tutorials/media/rsql-e2e-mapplot.png "plotting taxi rides using a custom R function")  
  
## Next Lesson  
[Lesson 3: Create Data Features &#40;Data Science End-to-End Walkthrough&#41;](../../../advanced-analytics/r-services/tutorials/lesson-3-create-data-features-data-science-end-to-end-walkthrough.md)  
  
  
  
