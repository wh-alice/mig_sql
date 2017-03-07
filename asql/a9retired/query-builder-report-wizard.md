---
title: "Query Builder (Report Wizard) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.rtp.rptdesigner.dataview.vdtquerydesigner.f1"
  - "sql13.rtp.rptwizard.querybuilder.f1"
helpviewer_keywords: 
  - "Query Builder [Reporting Services]"
ms.assetid: 1b0904ea-28c1-448e-b56c-c0fdfbc8b222
caps.latest.revision: 23
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Query Builder (Report Wizard)
  Use the Query Builder to specify a query that retrieves a result set to use in a paginated report. You can choose between two query builders:  
  
-   The text-based query builder (default) provides a simple workspace for specifying a query and viewing the results. You can specify multiple [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] statements, query or command syntax for custom data processing extensions, and queries that are specified as expressions. Because the generic query builder does not preprocess the query and can accommodate any kind of query syntax, it is the default query builder tool for Report Designer.  
  
-   The graphical query builder provides a richer visual experience. It is used in [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] and in other parts of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. You can use the graphical query builder if you are not creating expressions or multi-part SQL statements.  
  
     To switch to the graphical query builder, toggle the **Edit As Text** button in the top left corner of the window.  
  
 You can also import a query from another report.  
  
## Query Builder Options  
 **Edit As Text**  
 Toggles between the text-based and graphical query designers, if both will work for the query.  
  
 **Import**  
 Opens the **Import Query** dialog box and displays .rdl and .sql files for any available report. You can use the imported query as it is, or you can modify it in the query builder.  
  
 **! (Run)**  
 Runs the query and returns a result set if the query is valid. Note that you cannot execute the query if it is an expression. To verify an expression-based query, you must preview the report.  
  
 **Command type**  
 Specifies text, stored procedure, or table direct. Availability of a command type depends on the data processing extension you specified.  
  
 **Query pane**  
 Type the query.  
  
 **Result pane**  
 Shows the result set returned from the query.  
  
## See Also  
 [Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md)   
 [Report Wizard Help](../a9retired/report-wizard-help.md)  
  
  