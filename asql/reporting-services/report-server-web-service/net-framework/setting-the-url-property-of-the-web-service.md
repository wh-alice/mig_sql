---
title: "Setting the Url Property of the Web Service | Microsoft Docs"
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
  - "Url property"
  - "Report Server Web service, proxies"
  - "proxies [Reporting Services]"
  - "XML Web service [Reporting Services], proxies"
  - "Web service [Reporting Services], proxies"
  - "Web references [Reporting Services]"
ms.assetid: 4eac4e40-dafb-4403-acde-13df317c8ec8
caps.latest.revision: 36
ms.author: "carlasab"
manager: "erikre"
---
# Setting the Url Property of the Web Service
  At any time in your [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../a9retired/includes/dnprdnshort-md.md)] applications, you can modify the base URL of the Report Server Web service to which your application is currently directed. To do this, simply set the **Url** property of the service object. For example:  
  
```vb#  
Dim rs As New ReportingService2010()  
rs.Credentials = System.Net.CredentialCache.DefaultCredentials  
rs.Url = "http://<Server Name>/reportserver/ReportService2010.asmx"  
```  
  
```c#  
ReportingService2010 service = new ReportingService2010();  
rs.Credentials = System.Net.CredentialCache.DefaultCredentials;  
rs.Url = "http://<Server Name>/reportserver/ReportService2010.asmx";  
```  
  
 The following example retrieves a report definition from one report server and uses that definition to create an identical report on a different report server:  
  
```vb#  
Imports System  
Imports System.Web.Services.Protocols  
  
Class Sample  
   Public Shared Sub Main()  
      Dim rs As New ReportingService2010()  
      rs.Credentials = System.Net.CredentialCache.DefaultCredentials  
      ' Set the base Web service URL of the source server  
      rs.Url = "http://<Server Name>/reportserver/ReportService2010.asmx"  
  
      Dim reportName As String = "/SampleReports/Company Sales"  
      Dim reportDefinition As Byte() = Nothing  
  
      Try  
         ' Get the report definition of a report on a source server  
         reportDefinition = rs.GetItemDefinition(reportName)  
         ' Set the base Web service URL of the destination server  
         rs.Url = "http://<Server Name>/reportserver/ReportService2010.asmx"  
         ' Create a copy of the report on the destination server  
         Dim warnings As Warning() = {}  
         rs.CreateCatalogItem("Report", "Company Sales Copy", "/", False, reportDefinition, Nothing, warnings)        
      Catch e As SoapException  
         Console.WriteLine(e.Detail.InnerXml.ToString())  
      End Try  
   End Sub 'Main  
End Class 'Sample  
```  
  
```c#  
using System;  
using System.Web.Services.Protocols;  
  
class Sample  
{  
   public static void Main()  
   {  
      ReportingService2010 rs = new ReportingService2010();  
      rs.Credentials = System.Net.CredentialCache.DefaultCredentials;  
      // Set the base Web service URL of the source server  
      rs.Url = "http://<Server Name>/reportserver/reportservice2010.asmx";  
  
      string reportName = "/SampleReports/Company Sales";  
      byte[] reportDefinition = null;  
  
      try  
      {  
         reportDefinition = rs.GetItemDefinition(reportName);  
         // Set the base Web service URL of the destination server  
         rs.Url = "http://<Server Name>/reportserver/ReportService2010.asmx";  
         // Create a copy of the report on the destination server  
         Warning[] warnings = {};  
         rs.CreateCatalogItem("Report", "Company Sales Copy", "/", false, reportDefinition, null, out warnings);  
      }  
  
      catch (SoapException e)  
      {  
         Console.WriteLine(e.Detail.InnerXml.ToString());   
      }  
   }  
}  
```  
  
 For more information about creating the initial Web service proxy, see [Creating the Web Service Proxy](../../../reporting-services/report-server-web-service/net-framework/creating-the-web-service-proxy.md).  
  
## See Also  
 <xref:ReportService2010.ReportingService2010.CreateCatalogItem%2A>   
 <xref:ReportService2010.ReportingService2010.GetItemDefinition%2A>   
 [Building Applications Using the Web Service and the .NET Framework](../../../reporting-services/report-server-web-service/net-framework/building-applications-using-the-web-service-and-the-.net-framework.md)   
 [Report Server Web Service](../../../reporting-services/report-server-web-service/report-server-web-service.md)  
  
  