---
title: "Using the SOAP API in a Web Application | Microsoft Docs"
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
  - "SOAP [Reporting Services], Web applications"
  - "impersonation [Reporting Services]"
  - "user impersonation [Reporting Services]"
  - "report servers [Reporting Services], SOAP"
  - "Web applications [Reporting Services]"
ms.assetid: e8ca4455-0dc3-4741-8872-3636114938ad
caps.latest.revision: 34
ms.author: "carlasab"
manager: "erikre"
---
# Integrating Reporting Services Using SOAP - Web Application
  You can access the full functionality of the report server through the Reporting Services SOAP API. Because it's a Web service, the SOAP API can be easily accessed to provide enterprise reporting features to your custom business applications. You access the Report Server Web service from a Web application in much the same way that you access the SOAP API from a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows application. Using the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)], you can generate a proxy class that exposes the properties and methods of the Report Server Web service and enables you to use a familiar infrastructure and tools to build business applications on [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] technology.  
  
 [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report management functionality is just as easily accessed from a Web application as from a Windows application. From a Web application, you can add and remove items from the report server database, set item security, modify report server database items, manage scheduling and delivery, and more.  
  
## Enabling Impersonation  
 The first step in configuring your Web application is to enable impersonation from the Web service client. With impersonation, [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] applications can execute with the identity of the client on whose behalf they are operating. [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] relies on [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Internet Information Services (IIS) to authenticate the user and either pass an authenticated token to the [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] application or, if unable to authenticate the user, pass an unauthenticated token. In either case, the [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] application impersonates whichever token is received if impersonation is enabled. You can enable impersonation on the client, by modifying the Web.config file of the client application as follows:  
  
```  
<!-- Web.config file. -->  
<identity impersonate="true"/>  
```  
  
> [!NOTE]  
>  Impersonation is disabled by default.  
  
 For more information about [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] impersonation, see the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK documentation.  
  
## Managing the Report Server using SOAP API  
 You can also use your Web application to manage a report server and its contents. Report Manager, included with [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], is an example of a Web application that is completely built using [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] and the Reporting Services SOAP API. You can add the report management functionality of Report Manager to your custom Web applications. For example, you might want to return a list of available reports in the report server database and display them in a [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] **Listbox** control for your users to choose from. The following code connects to the report server database and returns a list of items in the report server database. The available reports are then added to a Listbox control, which displays the path of each report.  
  
```vb#  
Private Sub Page_Load(sender As Object, e As System.EventArgs)  
   ' Create a Web service proxy object and set credentials  
   Dim rs As New ReportingService2005()  
   rs.Credentials = System.Net.CredentialCache.DefaultCredentials  
  
   ' Return a list of catalog items in the report server database  
   Dim items As CatalogItem() = rs.ListChildren("/", True)  
  
   ' For each report, display the path of the report in a Listbox  
   Dim ci As CatalogItem  
   For Each ci In  items  
      If ci.Type = ItemTypeEnum.Report Then  
         catalogListBox.Items.Add(ci.Path)  
      End If  
   Next ci  
End Sub ' Page_Load   
```  
  
```c#  
private void Page_Load(object sender, System.EventArgs e)  
{  
   // Create a Web service proxy object and set credentials  
   ReportingService2005 rs = new ReportingService2005();  
   rs.Credentials = System.Net.CredentialCache.DefaultCredentials;  
  
   // Return a list of catalog items in the report server database  
   CatalogItem[] items = rs.ListChildren("/", true);  
  
   // For each report, display the path of the report in a Listbox  
   foreach(CatalogItem ci in items)  
   {  
      if (ci.Type == ItemTypeEnum.Report)  
         catalogListBox.Items.Add(ci.Path);  
   }  
}  
```  
  
## See Also  
 [Building Applications Using the Web Service and the .NET Framework](../../reporting-services/report-server-web-service/net-framework/building-applications-using-the-web-service-and-the-.net-framework.md)   
 [Integrating Reporting Services into Applications](../../reporting-services/application-integration/integrating-reporting-services-into-applications.md)   
 [Report Manager  &#40;SSRS Native Mode&#41;](../Topic/Report%20Manager%20%20\(SSRS%20Native%20Mode\).md)   
 [Using the SOAP API in a Windows Application](../Topic/Using%20the%20SOAP%20API%20in%20a%20Windows%20Application.md)  
  
  