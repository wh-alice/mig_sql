---
title: "Connect in Online Mode to an Analysis Services Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Analysis Services, connecting"
ms.assetid: 33041234-7106-404f-a289-8e904f32aff2
caps.latest.revision: 13
ms.author: "owend"
manager: "erikre"
---
# Connect in Online Mode to an Analysis Services Database
  You can connect directly to an existing [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database and directly modify objects within that database. When you connect directly to an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database, changes to objects occur immediately and no [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project is created within [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)].  
  
### To Connect Directly to an Analysis Services Database by using SQL Server Data Tools  
  
1.  Open [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)].  
  
2.  On the **File** menu, point to **Open** and then click **Analysis Services Database**.  
  
3.  Select **Connect to existing database**.  
  
4.  Specify the server name and the database name.  
  
     You can either type the database name or query the server to view the existing databases on the server.  
  
5.  Click **OK**.  
  
     You can now directly edit any objects within the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database.  
  
## See Also  
 [Working with Analysis Services Projects and Databases During the Development Phase](../Topic/Working%20with%20Analysis%20Services%20Projects%20and%20Databases%20During%20the%20Development%20Phase.md)   
 [Creating Multidimensional Models Using SQL Server Data Tools &#40;SSDT&#41;](../../analysis-services/multidimensional-models/creating-multidimensional-models-using-sql-server-data-tools-ssdt.md)  
  
  