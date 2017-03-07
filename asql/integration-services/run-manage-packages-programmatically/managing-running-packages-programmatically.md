---
title: "Managing Running Packages Programmatically | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "packages [Integration Services], managing"
  - "running packages [Integration Services]"
ms.assetid: 0e91f4ac-6f29-40d7-8c28-9b82e4802c35
caps.latest.revision: 19
ms.author: "douglasl"
manager: "jhubbard"
---
# Managing Running Packages Programmatically
  As you work programmatically with [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] packages, you may want to determine which packages are currently running. The <xref:Microsoft.SqlServer.Dts.Runtime.Application> class of the <xref:Microsoft.SqlServer.Dts.Runtime> namespace provides methods and classes to satisfy these requirements.  
  
 For more information about monitoring packages, see [Package Management &#40;SSIS Service&#41;](../../integration-services/service/package-management-ssis-service.md).  
  
 All the methods discussed in this topic require a reference to the **Microsoft.SqlServer.ManagedDTS** assembly. After you add the reference in a new project, import the <xref:Microsoft.SqlServer.Dts.Runtime> namespace with a **using** or **Imports** statement.  
  
> [!IMPORTANT]  
>  The methods of the <xref:Microsoft.SqlServer.Dts.Runtime.Application> class for working with the SSIS Package Store support only ".", localhost, or the server name for the local server. You cannot use "(local)".  
  
## Determining Which Packages Are Currently Running  
 To determine which packages are currently running on the specified server, call the <xref:Microsoft.SqlServer.Dts.Runtime.Application.GetRunningPackages%2A> method. This method returns a <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackages> collection of <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage> objects.  
  
> [!NOTE]  
>  Administrators see all packages that are currently executing on the computer; other users see only those packages that they have launched.  
  
## Working with Running Packages  
 After you have determined which packages are currently running, you can retrieve information about the packages and request that a package be stopped.  
  
### Getting Information about a Running Package  
 As you iterate through the <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackages> collection, you can use the properties of the <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage> object to locate a package or to obtain additional information about the packages that are running:  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.ExecutionDuration%2A>  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.ExecutionStartTime%2A>  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.InstanceID%2A>  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.PackageDescription%2A>  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.PackageID%2A>  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.PackageName%2A>  
  
-   <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.UserName%2A>  
  
### Stopping a Running Package  
 You can call the <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage.Stop%2A> method of a <xref:Microsoft.SqlServer.Dts.Runtime.RunningPackage> object to request that the package be stopped. There may be a delay between the time that a stop request is issued and the time that the package actually stops.  
  
||  
|-|  
|![Integration Services icon (small)](../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Package Management &#40;SSIS Service&#41;](../../integration-services/service/package-management-ssis-service.md)   
 [Enumerating Available Packages Programmatically](../../integration-services/run-manage-packages-programmatically/enumerating-available-packages-programmatically.md)  
  
  