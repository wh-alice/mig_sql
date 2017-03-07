---
title: "Technical Preview of Power BI reports in SSRS - Release notes | Microsoft Docs"
ms.custom: ""
ms.date: "2017-01-17"
ms.prod: "sql-vnext"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4c2f20d7-a9f9-47e3-8dc3-c544a14457e0
caps.latest.revision: 5
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services Release notes
 ||  
|-|  
|**[!INCLUDE[applies](../a9retired/includes/applies-md.md)]**  January 2017 Technical Preview of Power BI reports in SQL Server Reporting Services|

This topic describes limitations and issues with the Technical Preview of Power BI reports in SQL Server Reporting Services.

- To read what's new in this release, see [What's new in Reporting Services](../reporting-services/what-s-new-in-sql-server-reporting-services-ssrs.md).

 **Try it out:**    
   -   [![Download from Microsoft Download center](../a9notintoc/media/download.png)](https://go.microsoft.com/fwlink/?linkid=839351)  Download the Technical Preview of Power BI reports in SQL Server Reporting Services, and Power BI Desktop (SQL Server Reporting Services), from the **[Microsoft Download Center](https://go.microsoft.com/fwlink/?linkid=839351)**


## January  2017

### Report server

- Https is now supported. This was not available in the Technical Preview VM that was released in October 2016. For more information, see [Configure SSL Connections on a Native Mode Report Server](../reporting-services/security/configure-ssl-connections-on-a-native-mode-report-server.md).
   - Https is required to use the PowerPoint web viewer add-in and exposing Power BI Reports within that.
- Scale-out is now supported. This was not available in the Technical Preview VM that was released in October 2016. For more information, see [Configure a Native Mode Report Server Scale-Out Deployment](../reporting-services/install/windows/b30d0308-4d9b-4f85-9f83-dece4dcb2775.md).

### Power BI reports

- Power BI reports must be created with Power BI Desktop (SQL Server Reporting Services) in order to work with SQL Server Reporting Services. You can download Power BI Desktop (SQL Server Reporting Services) from the Evaluation Center.
- Power BI Reports only support live connections to Analysis Services (tabular or multidimensional).
- No support for custom visuals.
- No support for R visuals.