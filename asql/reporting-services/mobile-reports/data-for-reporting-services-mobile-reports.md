---
title: "Data for Reporting Services mobile reports | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-02-08"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 91138ef8-ddb4-4ac5-a1e4-fa4cf1c58dcc
caps.latest.revision: 15
ms.author: "maggies"
manager: "erikre"
---
# Data for Reporting Services mobile reports
The [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-long.md)] data model is simple. Data is imported into [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] as a collection of datasets. Formal relationships between datasets aren't necessary. Lookups from one dataset to another work as long as the key values match. Date/time aggregations are handled by the mobile report runtime and they will match between different datasets, even if the date/time data granularity is different between datasets.   
  
You can import data from two types of sources:   
  
* **Local Excel files**: Select an Excel document and pick which worksheet(s) to import. After import, the data is stored within the mobile report definition. To refresh the data from the original Excel file, use the **Refresh Data** command in the upper-right corner on the [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] **Data** tab. Read more about [preparing Excel data for SSRS mobile reports](../../reporting-services/mobile-reports/prepare-excel-data-for-reporting-services-mobile-reports.md).  
  
* **[!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/server-product-name.md)] shared datasets**: Browse the list of published datasets on the server and select the ones to add to the mobile report. Mobile reports based on server data always stay connected to the original server datasets and reflect the latest state of the data on the server. See a [list of supported data sources](https://msdn.microsoft.com/library/ms159219.aspx).   
  
  Read more about [getting data from shared datasets in Mobile Report Publisher](../../reporting-services/mobile-reports/get-data-from-shared-datasets-in-reporting-services-mobile-reports.md).  
  
After you import data into [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)], the rest of the mobile report creation and design experience is the same, regardless of where the data came from.   
  
## Connect mobile report elements to data ##  
  
Each [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/short-product-name.md)] element contains one or more data settings. For example, the Radial Gauge element contains two data settings: Main Value and Comparison Value. Each of these settings points to exactly one field (column) in a specific dataset.   
  
The mobile report runtime provides aggregated values for the gauge, based on user selections. Note that the Comparison Value of the same Radial Gauge instance can be bound to a field from a different dataset.   
  
### See also  
-  [Prepare data for Reporting Services mobile reports](../../reporting-services/mobile-reports/prepare-data-for-reporting-services-mobile-reports.md)
- [Create and publish mobile reports with SQL Server Mobile Report Publisher](../../reporting-services/mobile-reports/create-mobile-reports-with-sql-server-mobile-report-publisher.md)  
- [Get data from shared datasets](../../reporting-services/mobile-reports/get-data-from-shared-datasets-in-reporting-services-mobile-reports.md)
- [Retain date formatting for Analysis Services data in mobile reports](../../reporting-services/mobile-reports/e9a9a199-40e3-4381-b250-1b99fb83aa62.md) 
  
  
