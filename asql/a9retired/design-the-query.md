---
title: "Design the Query | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.rtp.rptwizard.designquery.f1"
ms.assetid: 2dad800f-10a1-453c-8761-2935b9826d84
caps.latest.revision: 41
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Design the Query
  Use this page of the Report Wizard to create a query by typing the query manually, by using Query Builder to interactively build a query, or by importing a query from another report.  
  
 The data source type you chose on the Select the Data Source page, a previous page in the Report Wizard, determines the query you can enter on this page. For example, if the data source type is [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], you can enter [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] statements or stored procedure names. If the data source type is [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], the Query pane is disabled and you cannot enter a query directly. You can specify the query by using Query Builder.  
  
## Options  
 **Query string**  
 Type a query that retrieves the data you want to use in your report.  
  
 **Query Builder**  
 Click **Query Builder** to open a query designer for the data source, or to import a query from another report.  
  
 For more information about query designers, see [Reporting Services Query Designers](../a9retired/reporting-services-query-designers.md).  
  
## Example  
 For the data source type **Microsoft SQL Server**, the following query retrieves a list of last names from the **AdventureWorks2014** database **Person** table.  
  
```  
SELECT LastName FROM Person.Person;  
```  
  
 For the data source type **Microsoft SQL Server**, the following query runs the **AdventureWorks2014** stored procedure **uspGetEmployeeManagers** for the employee with identification number 1:  
  
```  
EXEC uspgetEmployeeManagers '1';  
```  
  
## See Also  
 [Report Wizard Help](../a9retired/report-wizard-help.md)   
 [Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md)   
 [Report Datasets &#40;SSRS&#41;](../reporting-services/report-data/report-datasets-ssrs.md)  
  
  