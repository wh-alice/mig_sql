---
title: "Specify Device Information Settings in a URL | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "device information settings [Reporting Services], URLs"
  - "URL access [Reporting Services], device information settings"
ms.assetid: cb7f7577-c6a8-4e6f-8e60-5ec0760f29c3
caps.latest.revision: 32
ms.author: "asaxton"
manager: "erikre"
---
# Specify Device Information Settings in a URL
  Device information settings are parameters that are passed to a rendering extension. If you use the methods of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Report Server Web service to render a report, a **DeviceInfo** XML element is passed as an input parameter. Child elements of the **DeviceInfo** element are specific to the device information settings of different rendering extensions. You can include device information settings in a URL by using the *rc:tag=value* parameter string, where *tag* is the name of the device information settings element being accessed. For more information about device information settings in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)], see [Passing Device Information Settings to Rendering Extensions](../reporting-services/report-server-web-service/net-framework/passing-device-information-settings-to-rendering-extensions.md).  
  
## Example  
 The following example sets the format of the specified report to JPEG by using the *OutputFormat* device information setting of the image rendering extension (the line breaks have been added for legibility):  
  
```  
http://servername/reportserver?/SampleReports  
/Employee Sales Summary&EmployeeID=38&rs:  
Command=Render&rs:Format=IMAGE&rc:OutputFormat=JPEG  
```  
  
## See Also  
 [URL Access &#40;SSRS&#41;](../reporting-services/url-access-ssrs.md)   
 [URL Access Parameter Reference](../reporting-services/url-access-parameter-reference.md)  
  
  