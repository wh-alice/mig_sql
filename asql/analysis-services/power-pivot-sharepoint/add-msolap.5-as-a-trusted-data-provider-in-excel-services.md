---
title: "Add MSOLAP.5 as a Trusted Data Provider in Excel Services | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c1f40fa4-de6d-41ee-8124-14b4d65988f5
caps.latest.revision: 6
ms.author: "owend"
manager: "erikre"
---
# Add MSOLAP.5 as a Trusted Data Provider in Excel Services
  MSOLAP.5 refers to the Analysis Services OLE DB provider for SQL Server 2012. Excel Services must trust this provider before it will make the connection request that results in the availability of [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] data on a server.  
  
 If you configured [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint using the [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] Configuration Tool, MSOLAP.5 might already be a trusted provider because the tool includes an action that satisfies this requirement. However, if you are using PowerShell, Central Administration, or if you excluded the trusted provider action in the configuration tool, the provider might be missing, which case you should add it now as part of configuring the farm for [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] data access.  
  
 You only need to perform this step once for each Excel Services service application.  
  
 Each physical server that handles a [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] data request, such as a [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint server or an Excel Services server, must have the OLE DB provider installed on the computer. A [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint installation always includes the OLE DB provider, but if Excel Services is running on a computer that does not have [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint, you must install the provider manually. For more information, see [Install the Analysis Services OLE DB Provider on SharePoint Servers](http://msdn.microsoft.com/en-us/2c62daf9-1f2d-4508-a497-af62360ee859).  
  
## Add a trusted provider to Excel Services  
  
1.  In Central Administration, click **Manage service applications**, and then click the Excel Services service application.  
  
2.  Click **Trusted Data Providers**.  
  
3.  Verify that MSOLAP.5 appears in the list. Depending on how you configured [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint, MSOLAP.5 might already be trusted.  
  
4.  If it is not listed, click **Add Trusted Data Provider**.  
  
5.  In Provider ID, type **MSOLAP.5**.  
  
6.  For Provider Type, ensure that OLE DB is selected.  
  
7.  In Provider Description, type **Microsoft OLE DB Provider for OLAP Services 11.0**.  
  
  