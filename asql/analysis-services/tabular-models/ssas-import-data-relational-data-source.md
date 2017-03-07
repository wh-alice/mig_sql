---
title: "Import from a Relational Data Source (SSAS Tabular) | Microsoft Docs"
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
ms.assetid: 043201cc-fbef-4ed0-bde8-dc5e3a3e8bea
caps.latest.revision: 15
ms.author: "owend"
manager: "erikre"
---
# SSAS Import Data - Relational Data Source
  You can import data from a variety of relational databases by using the Table Import Wizard. The wizard is available in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], on the **Model** menu. To connect to a data source, you must have the appropriate provider installed on your computer. For more information about supported data sources and providers, see [Data Sources Supported &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/data-sources-supported-ssas-tabular.md).  
  
 The Table Import Wizard supports importing data from the following data sources:  
  
 **Relational Databases**  
  
-   Microsoft SQL Server database  
  
-   Microsoft SQL Azure  
  
-   Microsoft Access database  
  
-   Microsoft SQL Server Parallel Data Warehouse  
  
-   Oracle  
  
-   Teradata  
  
-   Sybase  
  
-   Informix  
  
-   IBM DB2  
  
-   OLE DB/ODBC  
  
 **Multidimensional Sources**  
  
-   Microsoft SQL Server Analysis Services cube  
  
 The Table Import Wizard does not support importing data from a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Workbook as a data source.  
  
### To import data from a database  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], click the **Model** menu, and then click **Import from Data Source**.  
  
2.  On the **Connect to a Data Source** page, select the type of database to connect to, and then click **Next**.  
  
3.  Follow the steps in the Table Import Wizard. On subsequent pages, you will be able to select specific tables and views or apply filters by using the **Select Tables and Views** page or by creating a SQL query on **Specify a SQL Query** page.  
  
## See Also  
 [Import Data &#40;SSAS Tabular&#41;](../Topic/Import%20Data%20\(SSAS%20Tabular\).md)   
 [Data Sources Supported &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/data-sources-supported-ssas-tabular.md)  
  
  