---
title: "Create Master Data Manager Web Service Proxy Classes | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 8bdab026-a0c0-41f3-9d36-f3919c23247f
caps.latest.revision: 8
ms.author: "carlasab"
manager: "jhubbard"
---
# Create Master Data Manager Web Service Proxy Classes
  The [!INCLUDE[ssMDSmdm](../../database-engine/install/windows/includes/ssmdsmdm-md.md)] web service lets you make programmatic use of the features of [!INCLUDE[ssMDSshort](../../analysis-services/includes/ssmdsshort-md.md)] from any computer that can access your [!INCLUDE[ssMDSmdm](../../database-engine/install/windows/includes/ssmdsmdm-md.md)] web site. Before you can start writing code to access the web service, you must generate proxy classes. The main proxy class you use to perform web service operations is the <xref:Microsoft.MasterDataServices.ServiceClient> class, which implements the <xref:Microsoft.MasterDataServices.IService> interface.  
  
## Enable Web Service Metadata Publishing  
 Before you can generate proxy classes, you must enable web service metadata publishing. Follow these steps to do this:  
  
1.  Open the [!INCLUDE[ssMDSshort](../../analysis-services/includes/ssmdsshort-md.md)] Web.config file in a text editor. This file is in the WebApplication folder of the [!INCLUDE[ssMDSshort](../../analysis-services/includes/ssmdsshort-md.md)] installation path.  
  
2.  Find the **mdsWsHttpBehavior** section under **\<serviceBehaviors>**. For the **\<serviceMetadata>** element, set **httpGetEnabled** to **true**.  
  
    > [!NOTE]  
    >  If you want to enable Web services over Secure Sockets Layer (SSL), set **httpsGetEnabled** to **true** in the **mdsWsHttpBehavior** section of the web.config file. You also need to change **mdsWsHTTPBinding** so that it is configured for SSL, as well, and comment out the non-SSL section.  
  
3.  Save changes to the file.  
  
4.  Test metadata publishing by browsing to the service URL, for example: http://yourserver/MDS/service/service.svc. If metadata publishing is enabled, a page is displayed that begins with   
    “You have created a service.”  
  
## Creating Proxy Classes by Using Visual Studio  
 If you have Visual Studio 2010 installed, the simplest way to generate proxy classes is to add a **Service Reference** to your project. The address of the service reference is the URL of the [!INCLUDE[ssMDSmdm](../../database-engine/install/windows/includes/ssmdsmdm-md.md)] web application, appended with /service/service.svc. For example: http://yourserver/MDS/service/service.svc. For more information, see [How to: Add, Update, or Remove a Service Reference](http://go.microsoft.com/fwlink/?LinkId=221167).  
  
## Creating Proxy Classes by Using Svcutil.exe  
 You must have either [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] or the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows SDK installed in order to have Svcutil.exe on your computer. If you use [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)], you must use the [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] command prompt to run the command. For more information, see [ServiceModel Metadata Utility Tool (Svcutil.exe)](http://go.microsoft.com/fwlink/?LinkId=165027) and [Generating a WCF Client from Service Metadata](http://go.microsoft.com/fwlink/?LinkId=164821).  
  
 To create a set of C# proxy classes by using Svcutil.exe, use a command such as the following:  
  
```  
svcutil.exe http://<server_name:port>/<virtual_path>/Service/Service.svc   
/out:<proxy_name>.cs /messageContract /tcv:Version35   
/noconfig /ct:System.Collections.ObjectModel.Collection`1   
/namespace:*,Microsoft.MasterDataServices  
```  
  
 Where:  
  
-   *servername*:*port* are the computer name and port number of the computer that hosts [!INCLUDE[ssMDSmdm](../../database-engine/install/windows/includes/ssmdsmdm-md.md)].  
  
-   *virtual_path* is the virtual path of [!INCLUDE[ssMDSmdm](../../database-engine/install/windows/includes/ssmdsmdm-md.md)] in Internet Information Services (IIS).  
  
-   *proxy_name* is the name for the generated proxy file.  
  
## See Also  
 [Categorized Web Service Operations &#40;Master Data Services&#41;](../../master-data-services/develop/categorized-web-service-operations-master-data-services.md)  
  
  