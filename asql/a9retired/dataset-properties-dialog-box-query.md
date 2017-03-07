---
title: "Dataset Properties Dialog Box, Query | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "sql13.rtp.rptdesigner.datasetproperties.query.f1"
  - "10160"
ms.assetid: 1fa34a4b-7de0-4e92-99fa-bc28a206773f
caps.latest.revision: 37
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Dataset Properties Dialog Box, Query
  Select **Query** on the **Dataset Properties** dialog box to choose a data source and create a query.  
  
 The **Dataset Properties** dialog box includes the following:  
  
-   [Dataset Properties Dialog Box, Parameters](../reporting-services/report-data/dataset-properties-dialog-box-parameters.md)  
  
-   [Dataset Properties Dialog Box, Fields](../a9retired/dataset-properties-dialog-box-fields.md)  
  
-   [Dataset Properties Dialog Box, Options](../a9retired/dataset-properties-dialog-box-options.md)  
  
-   [Dataset Properties Dialog Box, Filters](../reporting-services/report-data/dataset-properties-dialog-box-filters.md)  
  
## Options  
 **Name**  
 Type a name for the dataset. The name cannot be the same as a name for any data region or group in the report.  
  
 **Data Source**  
 Select the data source on which to base the dataset. To create a new data source, click **New**.  
  
 **Query type**  
 Select the type of command or query to use for the dataset. Select **Text** to run a query to retrieve data from the database. Select **Table** to use the **TableDirect** feature of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] to select all the fields within a table. Select **Stored Procedure** to run a stored procedure by name. **Text** is selected by default and is used for most queries. To edit the selected data source query, click **Query Designer**.  
  
> [!NOTE]  
>  Not all query types are supported by all data sources. For example, **Table** is supported only by data source types **OLE DB** and **ODBC**.  
  
 **Query**  
 This option appears when you choose the **Text** command type option. Type a query or import a pre-existing query by clicking **Import**. Click the **Expression** (*fx*) button to edit the expression.  
  
> [!NOTE]  
>  If you used a query designer to build a query, the text of the query appears in this box.  
  
 **Table name**  
 Enter the name of the table that you want to use as a dataset. This option appears when you select **Table**.  
  
 **Select or enter stored procedure name**  
 Type or choose the name of the stored procedure that you want to use. Click the **Expression** (*fx*) button to edit the expression. This option appears when you choose the Stored Procedure command type option.  
  
 **Time out (in seconds)**  
 Type the number of seconds until the query times out. The default is 30 seconds. The value for **Time out** must be empty or greater than zero. If it is empty, the query does not time out.  
  
## See Also  
 [Data Connections, Data Sources, and Connection Strings &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/data-connections-data-sources-and-connection-strings-report-builder-and-ssrs.md)   
 [Report Datasets &#40;SSRS&#41;](../reporting-services/report-data/report-datasets-ssrs.md)   
 [Query Designers &#40;Report Builder&#41;](../a9retired/query-designers-report-builder.md)   
 [Reporting Services Query Designers](../a9retired/reporting-services-query-designers.md)  
  
  