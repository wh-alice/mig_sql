---
title: "Disconnected, connected, and load-on-demand modes in SQL Server mobile reports | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-12-17"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server (starting with 2016 CTP3)"
ms.assetid: 5f2dcc73-b2ad-42e7-aba8-4f456bfb6e8c
caps.latest.revision: 8
ms.author: "maggies"
robots: noindex,nofollow
---
# Disconnected, connected, and load-on-demand modes in SQL Server mobile reports
The purpose of the [!INCLUDE[PRODUCT_NAME](../a9retired/includes/ss-mobilereptpub-long.md)] mobile report runtime is to instantiate a mobile report, load the required data, and process user actions. Processing user actions &ndash; like filter or date/time selections &ndash; involves aggregating the original data and updating all visual elements of the mobile report. The [!INCLUDE[PRODUCT_NAME](../a9retired/includes/short-product-name.md)] mobile report runtime can operate in three different modes:   
  
* Disconnected mode   
* Connected mode   
* Load-on-demand mode   
  
## Disconnected mode ##  
  
In disconnected mode, the device running [!INCLUDE[PRODUCT_NAME](../a9retired/includes/short-product-name.md)] is not connected to the server. The device may actually be completely disconnected from the network, or running in "airplane mode". In this mode, the runtime loads the mobile report definition (containing offline data) instantiates the mobile report and processes user actions by performing filtering and date/time aggregations on the client:   
  
## Connected mode  
  
In connected mode, the device running [!INCLUDE[PRODUCT_NAME](../a9retired/includes/short-product-name.md)] is connected to the [!INCLUDE[PRODUCT_NAME](../a9retired/includes/server-product-name.md)]. After instantiating a mobile report, the runtime loads fresh data views from the server. From that point on, all user actions are handled on the client, same as in the disconnected mode.   
  
## Load-on-demand mode  
  
Load-on-demand mode is appropriate when working with very large datasets. In this mode, the device running [!INCLUDE[PRODUCT_NAME](../a9retired/includes/short-product-name.md)] is connected to the [!INCLUDE[PRODUCT_NAME](../a9retired/includes/server-product-name.md)]. After instantiating a mobile report, the runtime loads fresh data views from the server. Following that, the runtime handles user actions by issuing new requests to the server &ndash; passing selection parameters to parameterized data views &ndash; and sending the aggregated results to visualization elements on the mobile report.   
  
### See also  
[Create and publish mobile reports with SQL Server Mobile Report Publisher](Create%20and%20publish%20mobile%20reports%20with%20SQL%20Server%20Mobile%20Report%20Publisher.md)  
