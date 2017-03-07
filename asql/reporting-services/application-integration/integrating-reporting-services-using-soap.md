---
title: "Integrating Reporting Services Using SOAP | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "Report Server Web service, application integration"
  - "SOAP [Reporting Services]"
  - "SOAP [Reporting Services], about report integration"
  - "integrating reports [Reporting Services]"
  - "Web service [Reporting Services], application integration"
ms.assetid: 6bc17af5-883c-4bfa-87d9-48cd7056d145
caps.latest.revision: 45
ms.author: "carlasab"
manager: "erikre"
---
# Integrating Reporting Services Using SOAP
  The [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)] [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] SOAP API provides several Web service endpoints for developing custom reporting solutions. The endpoints currently fall into two categories: management and execution. The management functionality is exposed through the <xref:ReportService2005>, <xref:ReportService2006>, and <xref:ReportService2010> endpoints. The <xref:ReportService2005> endpoint is used for managing a report server that is configured in native mode and the <xref:ReportService2006> endpoint is used for managing a report server that is configured for SharePoint integrated mode. The <xref:ReportService2010> merges the functionalities of <xref:ReportService2005> and <xref:ReportService2006> and can manage a report server that is configured for either native or SharePoint integrated mode.  
  
> [!NOTE]  
>  The <xref:ReportService2005> and <xref:ReportService2006> endpoints are deprecated in [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)]. The <xref:ReportService2010> endpoint includes the functionalities of both endpoints and contains additional management features.  
  
 The execution functionality is exposed through the <xref:ReportExecution2005> endpoint and it is used when the report server is configured in native or SharePoint integrated mode. The following topics show how these endpoints can be used for developing reporting solutions in [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows, SharePoint, and Web applications.  
  
## In This Section  
 [Using the SOAP API in a Windows Application](../../reporting-services/application-integration/integrating-reporting-services-using-soap-windows-application.md)  
 Describes how to use the SOAP API to integrate [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] into a Windows environment.  
  
 [Using the SOAP API in a Web Application](../../reporting-services/application-integration/integrating-reporting-services-using-soap-web-application.md)  
 Describes how to use the SOAP API to integrate [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] into a Web environment.  
  
## See Also  
 [Integrating Reporting Services into Applications](../../reporting-services/application-integration/integrating-reporting-services-into-applications.md)   
 [Report Server Web Service](../../reporting-services/report-server-web-service/report-server-web-service.md)   
 [Building Applications Using the Web Service and the .NET Framework](../../reporting-services/report-server-web-service/net-framework/building-applications-using-the-web-service-and-the-.net-framework.md)  
  
  