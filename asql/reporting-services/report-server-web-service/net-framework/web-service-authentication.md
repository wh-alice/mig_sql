---
title: "Web Service Authentication | Microsoft Docs"
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
  - "Web service [Reporting Services], authentication"
  - "XML Web service [Reporting Services], authentication"
  - "Report Server Web service, authentication"
ms.assetid: 852b4947-a090-4e54-8555-5a503945ceab
caps.latest.revision: 33
ms.author: "carlasab"
manager: "erikre"
---
# Web Service Authentication
  You can use either Windows Authentication or Basic authentication to authenticate the calls made to the Report Server Web service. Any client that makes SOAP requests to the report server must implement the client portion of one of the supported authentication protocols. If you are using the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)], you can use the managed code HTTP classes to implement authentication. Using these APIs makes it easy to send authentication information along with the SOAP requests.  
  
 If you do not have appropriate credentials before you make a call to the Report Server Web service, the call fails. At run time, you can pass credentials to the Web service by setting the **Credentials** property of the client-side object that represents the Web service before you call its methods.  
  
 The following sections contain example code that sends credentials using the [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)].  
  
## Windows Authentication  
 The following code passes Windows credentials to the Web service.  
  
```vb#  
Dim rs As New ReportingService()  
rs.Credentials = System.Net.CredentialCache.DefaultCredentials  
```  
  
```c#  
ReportingService rs = new ReportingService();  
rs.Credentials = System.Net.CredentialCache.DefaultCredentials;  
```  
  
## Basic Authentication  
 The following code passes Basic credentials to the Web service.  
  
```vb#  
Dim rs As New ReportingService()  
rs.Credentials = New System.Net.NetworkCredential("username", "password", "domain")  
```  
  
```c#  
ReportingService service = new ReportingService();  
service.Credentials = new System.Net.NetworkCredential("username", "password", "domain");  
```  
  
 The credentials must be set before you call any of the methods of the Report Server Web service. If you do not set the credentials, you receive the error code an HTTP 401 Error: Access Denied. You must authenticate the service before you use it, but after you have set the credentials, you do not need to set them again as long as you continue to use the same service variable (such as *rs*).  
  
## Custom Authentication  
 [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] includes a programming API that provides developers with the opportunity to design and develop custom authentication extensions, known as security extensions. For more information, see [Implementing a Security Extension](../../../reporting-services/extensions/security-extension/implementing-a-security-extension.md).  
  
## See Also  
 [Building Applications Using the Web Service and the .NET Framework](../../../reporting-services/report-server-web-service/net-framework/building-applications-using-the-web-service-and-the-.net-framework.md)   
 [Report Server Web Service](../../../reporting-services/report-server-web-service/report-server-web-service.md)  
  
  