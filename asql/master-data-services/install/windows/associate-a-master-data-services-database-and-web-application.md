---
title: "Associate a Master Data Services Database and Web Application | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ccb25672-f71d-4135-b548-f50eb45d8fa5
caps.latest.revision: 9
ms.author: "carlasab"
manager: "jhubbard"
---
# Associate a Master Data Services Database and Web Application
  Associate your [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)] web application with a [!INCLUDE[ssMDSshort](../../../a9notintoc/includes/ssmdsshort-md.md)] database to specify the database to use for web operations.  
  
## Prerequisites  
  
-   [!INCLUDE[ssMDScfgmgr](../../../a9retired/includes/ssmdscfgmgr-md.md)] must be installed on the local computer. For more information, see [Install Master Data Services](../../../master-data-services/install/windows/install-master-data-services.md).  
  
-   A local [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)] web application must exist. For more information, see [Create a Master Data Manager Web Application &#40;Master Data Services&#41;](../../../master-data-services/install/windows/create-a-master-data-manager-web-application-master-data-services.md).  
  
-   Either a local or remote [!INCLUDE[ssMDSshort](../../../a9notintoc/includes/ssmdsshort-md.md)] database must exist. For more information, see [Create a Master Data Services Database](../../../master-data-services/install/windows/create-a-master-data-services-database.md).  
  
### To associate a Master Data Services database and web application  
  
1.  Open [!INCLUDE[ssMDScfgmgr](../../../a9retired/includes/ssmdscfgmgr-md.md)].  
  
2.  In the left pane, click **Web Configuration**.  
  
3.  On the **Web Configuration** page, under **Web application**, from the **Website** list, select the website that contains your [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)] web application.  
  
4.  In the **Web application** box, select the web application that hosts [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)].  
  
5.  Under **Associate Application with Database**, click **Select**. The **Connect to Database** dialog box opens.  
  
6.  Specify connection information for the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] that hosts the [!INCLUDE[ssMDSshort](../../../a9notintoc/includes/ssmdsshort-md.md)] database, and click **Connect**.  
  
7.  From the **Master Data Services database** list, select the database you want to associate the web application with and then click **OK**.  
  
8.  Under **Associate Application with Database**, verify that the instance and database information are correct, and then click **Apply**.  
  
## Next Steps  
  
-   Programmatic access to [!INCLUDE[ssMDSshort](../../../a9notintoc/includes/ssmdsshort-md.md)] web services is automatically enabled when the web application is created. To let developers access the service metadata to easily generate proxy classes for programmatic access, enable metadata publishing. For more information, see [Create Master Data Manager Web Service Proxy Classes](../../../master-data-services/develop/create-master-data-manager-web-service-proxy-classes.md).  
  
-   Add users and groups to [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)]. If no users or groups have been granted access to [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)], you must open [!INCLUDE[ssMDSmdm](../../../a9notintoc/includes/ssmdsmdm-md.md)] using the [!INCLUDE[ssMDSshort](../../../a9notintoc/includes/ssmdsshort-md.md)] system administrator credentials. For more information, see [Administrators &#40;Master Data Services&#41;](../../../master-data-services/administrators-master-data-services.md) and [Users and Groups &#40;Master Data Services&#41;](../../../master-data-services/users-and-groups-master-data-services.md).  
  
## See Also  
 [Install Master Data Services](../../../master-data-services/install/windows/install-master-data-services.md)   
 [Web Configuration Page &#40;Master Data Services Configuration Manager&#41;](../../../master-data-services/web-configuration-page-master-data-services-configuration-manager.md)  
  
  