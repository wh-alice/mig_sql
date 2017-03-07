---
title: "Creating an Analysis Services Project (Basic Data Mining Tutorial) | Microsoft Docs"
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
ms.assetid: 784c0401-0358-4117-9c85-4e8220ce71d9
caps.latest.revision: 49
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Creating an Analysis Services Project (Basic Data Mining Tutorial)
Each [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] project defines the objects in a single [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database. An [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database can contains many different types of objects  
  
-   Multidimensional models (cubes)  
  
-   Mining structures and mining models  
  
-   Supporting objects such as data sources, data source views, and custom assemblies  
  
Note that you **do not** require a cube to do data mining. If you need to perform data mining on an existing cube, you should add the data mining models to the same project you used to build the cube. However, for most purposes you can build your models on relational data sources, such as a data warehouse, and get better performance if a cube is not involved.  
  
In this tutorial you will use a relational data warehouse, [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)], as the data source. You will deploy all your data mining objects to an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database named **BasicDataMining**, used just for data mining.  
  
By default, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] uses the **localhost** instance for new projects. If you are using a named instance or a different server, you must first create and open the project and then change the instance name.  
  
For more information about [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] projects, see [Creating an Analysis Services Project](../analysis-services/tutorials/lesson-1-1-creating-an-analysis-services-project.md).  
  
### To create an Analysis Services project  
  
1.  Open [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
2.  On the **File** menu, point to **New**, and then select **Project**.  
  
3.  Verify that **Business Intelligence Projects** is selected in the **Project types** pane.  
  
4.  In the **Templates** pane, select **Analysis Services Multidimensional and Data Mining Project**.  
  
5.  In the **Name** box, name the new project **BasicDataMining**.  
  
6.  [!INCLUDE[clickOK](../a9notintoc/includes/clickok-md.md)]  
  
### To change the instance where data mining objects are stored  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], on the **Project** menu, select **Properties**.  
  
2.  On the left side of the **Property Pages** pane, under **Configuration Properties**, click **Deployment**.  
  
3.  On the right side of the **Property Pages** pane, under **Target**, verify that the **Server** name is **localhost**. If you are using a different instance, type the name of the instance. [!INCLUDE[clickOK](../a9notintoc/includes/clickok-md.md)]  
  
## Next Task in Lesson  
[Creating a Data Source &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/creating-a-data-source-basic-data-mining-tutorial.md)  
  
## See Also  
[Build Analysis Services Projects &#40;SSDT&#41;](../analysis-services/multidimensional-models/build-analysis-services-projects-ssdt.md)  
[Create an Analysis Services Project &#40;SSDT&#41;](../analysis-services/multidimensional-models/create-an-analysis-services-project-ssdt.md)  
  
