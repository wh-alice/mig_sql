---
title: "Render a Report History Snapshot Using URL Access | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "URL access [Reporting Services], report history"
  - "history snapshots [Reporting Services]"
  - "historical data [Reporting Services]"
  - "snapshots [Reporting Services], URL access"
  - "snapshots [Reporting Services], rendering report history"
ms.assetid: 3f87f82d-0e61-4492-9c4b-f5238c39e8cd
caps.latest.revision: 32
ms.author: "asaxton"
manager: "erikre"
---
# Render a Report History Snapshot Using URL Access
  You can render a report based on a report history snapshot by supplying the *rs:Snapshot* parameter and setting its value to a valid snapshot ID. The parameter value is in the format YYYY-MM-DDTHH:MM:SS, based on the International Organization for Standardization (ISO) 8601 standard.  
  
 If you omit this parameter, the report is rendered according to the report execution and cache management option settings of the report server. For more information about report execution, see [Set Report Processing Properties](../reporting-services/report-server/set-report-processing-properties.md).  
  
## Example  
 The following example shows a URL that retrieves a report history snapshot:  
  
```  
http://myrshost/reportserver?/SampleReports/Company Sales&rs:Snapshot=2003-04-07T13:40:02  
```  
  
## See Also  
 [URL Access &#40;SSRS&#41;](../reporting-services/url-access-ssrs.md)   
 [URL Access Parameter Reference](../reporting-services/url-access-parameter-reference.md)  
  
  