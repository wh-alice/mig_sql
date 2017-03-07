---
title: "Calling Web Service Methods | Microsoft Docs"
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
  - "Web service [Reporting Services], SOAP"
  - "Web service [Reporting Services], calls"
  - "calling Web service"
  - "Report Server Web service, SOAP"
  - "XML Web service [Reporting Services], calls"
  - "Report Server Web service, calls"
  - "XML Web service [Reporting Services], SOAP"
  - "SOAP [Reporting Services], calls"
ms.assetid: f6f0c6e3-8bb5-4c44-9d19-1872edc72746
caps.latest.revision: 38
ms.author: "carlasab"
manager: "erikre"
---
# Calling Web Service Methods
  When you use a [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../a9retired/includes/dnprdnshort-md.md)] proxy class to call Web service operations, you do so by using the methods of that class. These methods respond like any other method of a class in the [!INCLUDE[dnprdnshort](../../../a9retired/includes/dnprdnshort-md.md)] class library. All Web service methods have public access and require you to supply the appropriate number of arguments and argument types. After you have created an instance of the proxy class in your project, you can call the methods to perform reporting operations via the report server. The following C# code illustrates the use of the <xref:ReportService2010.ReportingService2010.ListChildren%2A> method of the <xref:ReportService2010.ReportingService2010> proxy class. The code is used to make a recursive call to the Web service that returns an array of <xref:ReportService2010.CatalogItem> objects that contains a list of all items in the report server database:  
  
```vb#  
Dim rs As New ReportingService2010()  
rs.Credentials = System.Net.CredentialCache.DefaultCredentials  
Dim items As CatalogItem() = rs.ListChildren("/", True)  
```  
  
```c#  
ReportingService2010 rs = new ReportingService2010();  
rs.Credentials = System.Net.CredentialCache.DefaultCredentials;  
CatalogItem[] items = rs.ListChildren("/", true);  
```  
  
## See Also  
 [Building Applications Using the Web Service and the .NET Framework](../../../reporting-services/report-server-web-service/net-framework/building-applications-using-the-web-service-and-the-.net-framework.md)   
 [Report Server Web Service](../../../reporting-services/report-server-web-service/report-server-web-service.md)   
 [Technical Reference &#40;SSRS&#41;](../../../reporting-services/technical-reference-ssrs.md)  
  
  