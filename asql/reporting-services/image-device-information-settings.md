---
title: "Image Device Information Settings | Microsoft Docs"
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
  - "images [Reporting Services], rendering"
  - "device information settings [Reporting Services], IMAGE rendering"
ms.assetid: edad9498-69f7-4726-8699-fa615f704dff
caps.latest.revision: 39
ms.author: "asaxton"
manager: "erikre"
---
# Image Device Information Settings
  The following table lists the device information settings for rendering in IMAGE format.  
  
|Setting|Value|  
|-------------|-----------|  
|**Columns**|The number of columns to set for the report. This value overrides the report's original settings.|  
|**ColumnSpacing**|The column spacing to set for the report. This value overrides the report's original settings.|  
|**DpiX**|The horizontal resolution of the output image. The default value is **96**. Applies to **BMP**, **GIF**, **PNG**, and **TIFF** output formats.|  
|**DpiY**|The vertical resolution of the output image. The default value is **96**. Applies to **BMP**, **GIF**, **PNG**, and **TIFF** output formats.|  
|**EndPage**|The last page of the report to render. The default value is the value for **StartPage**.|  
|**MarginBottom**|The bottom margin value, in inches, to set for the report. You must include an integer or decimal value followed by "in" (for example, **1in**). This value overrides the report's original settings.|  
|**MarginLeft**|The left margin value, in inches, to set for the report. You must include an integer or decimal value followed by "in" (for example, **1in**). This value overrides the report's original settings.|  
|**MarginRight**|The right margin value, in inches, to set for the report. You must include an integer or decimal value followed by "in" (for example, **1in**). This value overrides the report's original settings.|  
|**MarginTop**|The top margin value, in inches, to set for the report. You must include an integer or decimal value followed by "in" (for example, **1in**). This value overrides the report's original settings.|  
|**OutputFormat**|One of the [!INCLUDE[ndptecgdiexpanded](../reporting-services/includes/ndptecgdiexpanded-md.md)] ([!INCLUDE[ndptecgdi](../reporting-services/includes/ndptecgdi-md.md)]) supported output formats: **BMP**, **EMF**, **GIF**, **JPEG**, **PNG**, or **TIFF**.|  
|**PageHeight**|The page height, in inches, to set for the report. You must include an integer or decimal value followed by "in" (for example, **11in**). This value overrides the report's original settings.|  
|**PageWidth**|The page width, in inches, to set for the report. You must include an integer or decimal value followed by "in" (for example, **8.5in**). This value overrides the report's original settings.|  
|**PrintDpiX**|The horizontal resolution of the output image. The default value is **300**. Applies to the Enhanced MetaFile (**EMF**) output format.|  
|**PrintDpiY**|The vertical resolution of the output image. The default value is **300**. Applies to the Enhanced MetaFile (**EMF**) output format.|  
|**StartPage**|The first page of the report to render. A value of **0** indicates that all pages are rendered. The default value is **1**.|  
  
## See Also  
 <xref:ReportExecution2005.ReportExecutionService.Render%2A>   
 [Passing Device Information Settings to Rendering Extensions](../reporting-services/report-server-web-service/net-framework/passing-device-information-settings-to-rendering-extensions.md)   
 [Customize Rendering Extension Parameters in RSReportServer.Config](../reporting-services/customize-rendering-extension-parameters-in-rsreportserver.config.md)   
 [Technical Reference &#40;SSRS&#41;](../reporting-services/technical-reference-ssrs.md)  
  
  