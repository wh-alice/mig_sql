---
title: "Creating a Solution and Data Source (Intermediate Data Mining Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 0488b231-1045-4169-aabb-c1005d86ca30
caps.latest.revision: 22
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Creating a Solution and Data Source (Intermediate Data Mining Tutorial)
To work with data mining, you must first create a project in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] using the template, **Analysis Services Multidimensional and Data Mining Project**. When you open the template, it loads into the designer all the schemas that you might need for data mining: data sources, mining structures and mining models, and even cubes if your mining structure uses multidimensional data.  
  
When you create the project, your solution is stored as a local file until the solution is deployed. When you deploy the solution, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] looks for the [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] server specified in the project properties, and creates a new [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database with the same name as the project. By default, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] uses the **localhost** instance for new projects. If you are using a named instance, or if you specified a different name for the default instance, you must change the deployment database property of the project to the location where you want to create your data mining objects.  
  
For more information about [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] projects, see [Create an Analysis Services Project &#40;SSDT&#41;](../analysis-services/multidimensional-models/create-an-analysis-services-project-ssdt.md).  
  
### To create a new Analysis Services project for this tutorial  
  
1.  Open [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
2.  On the **File** menu, point to **New**, and then click **Project**.  
  
3.  Select **Analysis Services Multidimensional and Data Mining Project** from the **Installed Templates** pane.  
  
4.  In the **Name** box, name the new project **DM Intermediate**.  
  
5.  [!INCLUDE[clickOK](../a9notintoc/includes/clickok-md.md)]  
  
### To change the instance where data mining objects are stored (optional)  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], on the **Project** menu, click **Properties**.  
  
2.  In the left side of the **Property Pages** pane, click **Deployment**.  
  
3.  Verify that the **Server** name is **localhost**. If you are using a different instance, type the name of the instance. If you are using a named instance of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], type the machine name and then the instance name. [!INCLUDE[clickOK](../a9notintoc/includes/clickok-md.md)]  
  
### To change the deployment properties for a project (optional)  
  
1.  In Solution Explorer, right-click the project, and then select **Properties**.  
  
    -- or --  
  
    In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], on the **Project** menu, select **Properties**.  
  
2.  In the left side of the **Property Pages** pane, click **Deployment**.  
  
    In the **Options** pane, select **Deployment Mode**, and set the options to **Deploy All** to overwrite, or to **Deploy Changes Only** to update objects or add objects.  
  
## Creating a Data Source  
In the Basic Data Mining Tutorial, you created a *data source* that stores connection information for the [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] database. Follow the same steps to create the [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] data source in this solution.  
  
#### To create a data source  
  
-   [Creating a Data Source &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/creating-a-data-source-basic-data-mining-tutorial.md)  
  
A single data source can support multiple data source views, and each data source view can have multiple tables. However, because the data source and data source view are deployed to your [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database together with the data mining models that you create, as a best practice you should include in each data source view only those tables that are required for each data mining model or group of models.  
  
In the following lessons, you will add data source views to support each of the new scenarios. Only the market basket and sequence clustering lessons use the same data source view; otherwise, each scenario uses a different data source view, so the lessons are independent of each other and can be completed separately.  
  
|Scenario|Data included in the data source view|  
|------------|-----------------------------------------|  
|[Lesson 2: Building a Forecasting Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-2-building-a-forecasting-scenario-intermediate-data-mining-tutorial.md)|Monthly sales reports for bicycle models in different regions, collected as a single view.|  
|[Lesson 3: Building a Market Basket Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-3-building-a-market-basket-scenario-intermediate-data-mining-tutorial.md)|A table containing a list of customer orders, and a nested table showing the individual purchases for each customer.|  
|[Lesson 4: Building a Sequence Clustering Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/63436bbd-0f73-4012-b6f1-358c81e4d92a.md)|The same data that is used for the market basket analysis, with the addition of an identifier that shows the order in which items were purchased.|  
|[Lesson 5: Building Neural Network and Logistic Regression Models &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/42c3701a-1fd2-44ff-b7de-377345bbbd6b.md)|A single table containing some preliminary performance tracking data from a call center.|  
  
## Next Lesson  
[Lesson 2: Building a Forecasting Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-2-building-a-forecasting-scenario-intermediate-data-mining-tutorial.md)  
  
## See Also  
[Data Mining Projects](../analysis-services/data-mining/data-mining-projects.md)  
[Data Source Views in Multidimensional Models](../analysis-services/multidimensional-models/data-source-views-in-multidimensional-models.md)  
  
