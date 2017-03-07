---
title: "Uninstall and Remove Master Data Services | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: efc2431c-588b-42e7-b23b-c875145a33f6
caps.latest.revision: 10
ms.author: "mikeray"
manager: "jhubbard"
---
# Uninstall and Remove Master Data Services
  To uninstall the [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] feature from an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], follow the steps in [Uninstall an Existing Instance of SQL Server &#40;Setup&#41;](../../sql-server/install/uninstall-an-existing-instance-of-sql-server-setup.md) and specify [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] as a feature to remove on the **Select Features** page. The uninstall process removes [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] folders and files, and uninstalls [!INCLUDE[ssMDScfgmgr](../../a9retired/includes/ssmdscfgmgr-md.md)] from the local computer.  
  
 To prevent data loss and avoid affecting other computers in the system, some items are not removed or changed by the uninstall process. Review the following table to determine whether to leave or remove items.  
  
|Item|Description|  
|----------|-----------------|  
|Folders and files|The uninstall process removes most folders and files from the installation path.<br /><br /> The uninstall process does not remove the Master Data Services and MDSTempDir folders from the installation location. After the uninstall process is complete, you can manually delete these folders from the file system. For more information, see [Folder and File Permissions &#40;Master Data Services&#41;](../../master-data-services/folder-and-file-permissions-master-data-services.md).|  
|[!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] assemblies|The uninstall process removes [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] assemblies from the Global Assembly Cache (GAC).|  
|Database|The uninstall process does not affect the [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] database. The database remains intact in the instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] so that you do not lose any data, including master data, model objects, user and group permissions, business rules, and so on.<br /><br /> If you do not need the database, and do not anticipate connecting it to another [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] web site or application in the future, you might want to delete the database from the instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] that hosts it. For more information, see [Delete a Database](../../relational-databases/databases/delete-a-database.md).|  
|[!INCLUDE[ssMDSmdm](../../a9notintoc/includes/ssmdsmdm-md.md)] and Web.config|The uninstall process removes the WebApplication folder from the file system. The WebApplication folder contains the web application files and Web.config file for [!INCLUDE[ssMDSmdm](../../a9notintoc/includes/ssmdsmdm-md.md)].<br /><br /> **\*\* Important \*\*** Before you uninstall, you might want to copy the Web.config file to another location to preserve any custom settings or other information in the file. After the uninstall process completes, the Web.config file is not recoverable.|  
|Internet Information Services (IIS) items|The uninstall process does not affect any application pools, web sites, or web applications in IIS on the local computer. Because the uninstall process removes the WebApplication folder and Web.config file for [!INCLUDE[ssMDSmdm](../../a9notintoc/includes/ssmdsmdm-md.md)], any [!INCLUDE[ssMDSmdm](../../a9notintoc/includes/ssmdsmdm-md.md)] web applications that require those files will no longer serve content. If users try to access the web application, they will receive HTTP Error 500.19-Internal Server Error: "The requested page cannot be accessed because the related configuration data for the page is invalid."<br /><br /> If you no longer require the web site or application, and the application pool serving your site or application, you can use an IIS tool to delete them. For more information, see [IIS 7 Operations Guide](http://go.microsoft.com/fwlink/?LinkId=184885) on [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] TechNet.|  
|**MDS_ServiceAccounts** group|After the uninstall process is complete, the **MDS_ServiceAccounts** Windows group and any service accounts added to the group remain. If you no longer need the group and accounts, you can remove them.|  
|Registry|The uninstall process removes all [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)] registry keys from the Windows registry.|  
  
## See Also  
 [Install Master Data Services](../../master-data-services/install/windows/install-master-data-services.md)  
  
  