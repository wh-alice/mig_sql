---
title: "Multi-Lingual and Global Deployments (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c3d485f8-867c-4aa2-a90d-f38fda192534
caps.latest.revision: 8
ms.author: "carlasab"
manager: "jhubbard"
---
# Multi-Lingual and Global Deployments (Master Data Services)
  [!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)] supports deployment of components and tools in all languages supported by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information, see [Local Language Versions in SQL Server](../../../sql-server/install/local-language-versions-in-sql-server.md).  
  
## How languages are used  
 The following table describes the language support for the [!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)] components and tools.  
  
|Component or Tool|Description|  
|-----------------------|-----------------|  
|[!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)] Setup|Select the English Setup program when you want the [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] web application to be available and supported in languages that differ from the Setup language. For more information, see the [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] description below.|  
|[!INCLUDE[ssMDScfgmgr](../../../database-engine/install/windows/includes/ssmdscfgmgr-md.md)]|The Setup language determines the [!INCLUDE[ssMDScfgmgr](../../../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] language. For example, if you choose German for the Setup language, [!INCLUDE[ssMDScfgmgr](../../../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] is available in German on that computer.|  
|[!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)]|When you run Setup in English, the [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] web application is available and supported in all application languages. [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] can display in any of those application languages and accept locale-specific input based on the language preferences of the client web browser. If the language preferences are configured for a non-supported application language, [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] defaults to English.<br /><br /> When you run Setup in a language other than English, resources are included for the all other application languages but it is not a supported scenario for clients to use [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] in a language other than the selected Setup language. If you try to access [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] in a language different from the Setup language, you might experience problems with data display and input in the application.|  
|[!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)] database|Information in the [!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)] database is not specific to any locale. This enables [!INCLUDE[ssMDSmdm](../../../database-engine/install/windows/includes/ssmdsmdm-md.md)] to determine how to display information, such as dates and numbers, in the format determined by the language preferences of the client web browser.|  
  
## See Also  
 [Install Master Data Services](../../../master-data-services/install/windows/install-master-data-services.md)  
  
  