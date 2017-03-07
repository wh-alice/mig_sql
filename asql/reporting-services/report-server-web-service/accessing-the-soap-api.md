---
title: "Accessing the SOAP API | Microsoft Docs"
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
  - "XML Web service [Reporting Services], WSDL"
  - "Web service [Reporting Services], SOAP"
  - "calling Web service"
  - "SOAP [Reporting Services], accessing"
  - "Report Server Web service, SOAP"
  - "Web service [Reporting Services], WSDL"
  - "WSDL [Reporting Services]"
  - "XML Web service [Reporting Services], SOAP"
  - "Report Server Web service, WSDL"
  - "referencing WSDL"
ms.assetid: 63bb870a-4dbf-46bd-8921-78f8ebe5fd75
caps.latest.revision: 38
ms.author: "carlasab"
manager: "erikre"
---
# Accessing the SOAP API
  The Report Server Web service uses Simple Object Access Protocol (SOAP) over HTTP and acts as a communications interface between client programs and the report server. The Web service provides two endpoints - one for report execution and one for report management - and consists of methods and a set of complex type objects that you can use to access the complete functionality of [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)]. To call the service, you must reference the Reporting Services Web Services Description Language (WSDL).  
  
## Referencing the Reporting Services WSDL  
 To call a Web service successfully, you must know how to access the service, what operations the service supports, what parameters the service expects, and what the service returns. WSDL provides this information in an XML document that can be read or processed by a computer.  
  
 The Report Server Web services are exposed in three different endpoints. The name of the WSDL file is different for each endpoint. The <xref:ReportService2010> endpoint contains methods for managing objects in a Report Server in either native or SharePoint integrated mode. The WSDL for this endpoint is accessed through `ReportService2010.asmx?wsdl.`  
  
> [!NOTE]  
>  The <xref:ReportService2005> and <xref:ReportService2006> endpoints are deprecated in [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)]. The <xref:ReportService2010> endpoint includes the functionalities of both endpoints and contains additional management features.  
  
-   The <xref:ReportExecution2005> endpoint allows developers to programmatically process and render reports in a Report Server. The WSDL for this endpoint is accessed through `ReportExecution2005.asmx?wsdl`.  
  
 WSDL can be consumed by development kits that support SOAP and Web services, such as the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] SDK.  
  
 The following example shows the format of the URL to the [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] management WSDL file:  
  
```  
http://server/reportserver/ReportService2010.asmx?wsdl  
```  
  
 The following table describes each element in the URL.  
  
|URL element|Description|  
|-----------------|-----------------|  
|*server*|The name of the server on which the report server is deployed.|  
|*reportserver*|The name of the folder that contains the XML Web service. This is configured during setup.|  
|*\<endpoint name>.asmx*|The name of the web service endpoint.|  
  
 For more information about the WSDL format, see the World Wide Web Consortium (W3C) WSDL specification at http://www.w3.org/TR/wsdl.  
  
## See Also  
 [Building Applications Using the Web Service and the .NET Framework](../../reporting-services/report-server-web-service/net-framework/building-applications-using-the-web-service-and-the-.net-framework.md)   
 [Report Server Web Service](../../reporting-services/report-server-web-service/report-server-web-service.md)  
  
  