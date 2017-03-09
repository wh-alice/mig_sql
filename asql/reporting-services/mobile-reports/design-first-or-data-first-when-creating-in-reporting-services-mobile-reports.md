---
title: "Design first or data first when creating in Reporting Services mobile reports | Microsoft Docs"
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
ms.assetid: a7b355fa-312b-4074-bc9b-776269d4fb51
caps.latest.revision: 17
ms.author: "maggies"
manager: "erikre"
---
# Design first or data first when creating in Reporting Services mobile reports
  
With [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-long.md)], you can quickly create mobile reports that scale well to any screen size, on a design surface with adjustable grid rows and columns, and flexible mobile report elements.   
  
When creating mobile reports, you have your choice of two basic approaches: start with the data first, or start with the design first. [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] supports both.   
  
## Design first  
  
The following diagram shows the components of the [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] layout view:   
  
![SS_MRP_LayoutTab](../../reporting-services/mobile-reports/media/ss-mrp-layouttab.png)  
  
In the design-first approach, you create a mobile report layout first without importing any data. This is a good way to create a mobile report when you are not sure if the data is formatted correctly. Without real data, gallery elements are automatically bound to generated simulated data, which you can export and use as a template to describe the required data.  
  
## Data first  
The data-first approach is to import all required data first, then design the mobile report and set data properties on the mobile report elements. This has the advantage of being able to connect each element to real data when you add it to the layout. When using a data-first approach, be sure that your real data is formatted correctly for use with [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)].   
  
 The following diagram shows all the components of the [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] data view:  
  
![SS_MRP_DataTab](../../reporting-services/mobile-reports/media/ss-mrp-datatab.png)  
  
### See also  
- [Create and publish mobile reports with SQL Server Mobile Report Publisher](../../reporting-services/mobile-reports/create-mobile-reports-with-sql-server-mobile-report-publisher.md)  
-  View [SQL Server mobile reports and KPIs in the iPad app](https://pbiwebprod-docs.azurewebsites.net/en-us/documentation/powerbi-mobile-ipad-kpis-mobile-reports)  (Power BI for iOS)  
-  View [SQL Server mobile reports and KPIs in the iPhone app](https://pbiwebprod-docs.azurewebsites.net/en-us/documentation/powerbi-mobile-iphone-kpis-mobile-reports) (Power BI for iOS)  
  
  
  
  
