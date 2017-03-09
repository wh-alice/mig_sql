---
title: "View the List of Packages on the Integration Services Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 67a992d1-7524-4f4b-b3d8-ebd9e5ea82a8
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
---
# View the List of Packages on the Integration Services Server
  You can view the list of packages that are stored on the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server in one of two ways.  
  
 [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] access  
 To view the list of packages that are stored on the server, query the view, [catalog.packages &#40;SSISDB Database&#41;](../../integration-services/system/views/catalog.packages-ssisdb-database.md).  
  
 In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]  
 To view packages stored on the server by using Object Explorer in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], follow the procedure below.  
  
### To view packages using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]  
  
1.  In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], connect to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server. That is, connect to the instance of the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] that hosts the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] database.  
  
2.  In Object Explorer, expand the tree to display the **Integration Services Catalogs** node.  
  
3.  Expand the **Integration Services Catalogs** node to display the **SSISDB** node.  
  
4.  Expand the **SSISDB** node to display a list of one or more folders. Each folder contains one or more projects in the **Projects** folder, and each project contains one more packages in the **Packages** folder.  
  
  