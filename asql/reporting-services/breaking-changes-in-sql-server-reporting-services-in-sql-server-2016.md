---
title: "Breaking changes in SQL Server Reporting Services in SQL Server 2016 | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-09-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Me.Value references"
  - "Reporting Services, backward compatibility"
  - "breaking changes [Reporting Services]"
ms.assetid: 39c7aafd-dcb9-4317-b8f7-d15828eb4f9a
caps.latest.revision: 120
ms.author: "asaxton"
manager: "erikre"
---
# Breaking changes in SQL Server Reporting Services in SQL Server 2016
  This topic describes breaking changes in [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. These changes might break applications, scripts, or functionalities that are based on earlier versions of [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)]. You might encounter these issues when you upgrade, or in custom scripts or reports.  
  
  ## Security Extensions
  
  Custom security extensions need some modification to work with the new [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)]. Security extensions need to use the IAuthenticationExtension2 interface.
  
  ## WMI Provider
  
  The [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)] application name changes from "ReportManager" to "ReportServerWebApp".
  
## See Also 

[Behavior changes to SQL Server Reporting Services  in SQL Server 2016](../reporting-services/behavior-changes-to-sql-server-reporting-services-in-sql-server-2016.md)

[What's New in Reporting Services (SSRS)](../reporting-services/what-s-new-in-sql-server-reporting-services-ssrs.md)
 
 [Deprecated features in SQL Server Reporting Services in SQL Server 2016](../reporting-services/deprecated-features-in-sql-server-reporting-services-ssrs.md)
  
[Discontinued functionality to SQL Server Reporting Services in SQL Server 2016](../reporting-services/discontinued-functionality-to-sql-server-reporting-services-in-sql-server.md)

