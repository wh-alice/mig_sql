---
title: "Integrating Reporting Services Using the ReportViewer Controls | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-06"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "ReportViewer controls"
  - "integrating reports [Reporting Services]"
ms.assetid: 3ba47fb4-73a9-4059-89fd-329adebe94a8
caps.latest.revision: 26
ms.author: "asaxton"
manager: "erikre"
---
# Integrating Reporting Services Using ReportViewer Controls
  [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual Studio 2015 provides two ReportViewer controls for integrating report viewing functionality into your applications. There is a version for Windows Forms-based applications and one for Web Forms applications. Each control provides similar functionality but each is designed to target their individual environments. Both controls can process reports that have been deployed to a report server (remote processing mode) or have been copied to a computer where [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] has not been installed (local processing mode).  
  
 The ReportViewer control does not include built-in support for dynamically adapting to different devices with different screen resolutions.  
  
## Remote Processing Mode  
 Remote processing mode is the preferred method for viewing reports that have been deployed to a report server. Remote processing mode provides the following advantages:  
  
-   Remote processing provides an optimized solution for running reports because the report is processed by the report server.  
  
-   Because all processing is handled by the report server, a report request can be processed by multiple report servers in a scale-out deployment or a server that has multiple processors in a scale-up scenario.  
  
 In addition, reports run in remote mode can utilize the full functionality of the report server including all rendering and data extensions.  
  
> [!NOTE]  
>  The list of extensions available to the ReportViewer control when it is running in remote processing mode depends on the edition of [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] that is installed on the report server.  
  
## Local Processing Mode  
 Local processing mode provides an alternative method for viewing and rendering reports when [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] is not installed. Unlike remote processing only a subset of the functionality provided by the report server is available in the control. In local processing mode, data processing is not handled by the control but rather implemented by the hosting application. However report processing is handled by the control itself. In local processing mode, only the PDF, Excel, Word, and Image rendering extensions are available.  
  
## See Also  
 [Integrating Reporting Services into Applications](../../reporting-services/application-integration/integrating-reporting-services-into-applications.md)   
 [Using the WebForms ReportViewer Control](Using%20the%20WebForms%20ReportViewer%20Control.md)   
 [Using the WinForms ReportViewer Control](Using%20the%20WinForms%20ReportViewer%20Control.md)  

  
  