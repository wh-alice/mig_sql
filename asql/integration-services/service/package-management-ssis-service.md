---
title: "Package Management (SSIS Service) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Integration Services packages, managing"
  - "packages [Integration Services], managing"
  - "Integration Services packages, managing"
  - "storing packages"
  - "Stored Packages folder"
  - "current packages"
  - "Running Packages folder"
  - "status information [Integration Services]"
  - "SSIS packages, managing"
  - "storage [Integration Services]"
  - "monitoring [Integration Services], packages"
  - "Integration Services service, package management"
  - "services [Integration Services], package management"
ms.assetid: 0261ed9e-3b01-4e37-a9d4-d039c41029b6
caps.latest.revision: 59
ms.author: "douglasl"
manager: "jhubbard"
---
# Package Management (SSIS Service)
  Package management includes monitoring, managing, importing and exporting packages.  
 
 ## Package Store  
 [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] provides two top-level folders for accessing packages: 
 - **Running Packages** 
 - **Stored Packages**
 
 The **Running Packages** folder lists the packages that are currently running on the server. The **Stored Packages** folder lists the packages that are saved in the package store. These are the only packages that the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service manages. The package store can consist of either or both the msdb database and file system folders listed in the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service configuration file. The configuration file specifies the msdb and file system folders to manage. You might also have packages stored elsewhere in the file system that are not managed by the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service.  
  
 Packages you save to msdb are stored in a table named sysssispackages. When you save packages to msdb, you can group them in logical folders. Using logical folders can help you organize packages by purpose, or filter packages in the sysssispackages table. Create new logical folders in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. By default, any logical folders that you add to msdb are automatically included in the package store.  
  
 The logical folders you create are represented as rows in the sysssispackagefolders table in msdb. The folderid and parentfolderid columns in sysssispackagefolders define the folder hierarchy. The root logical folders in msdb are the rows in sysssispackagefolders with null values in the parentfolderid column. For more information, see [sysssispackages &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/sysssispackages-transact-sql.md) and [sysssispackagefolders (Transact-SQL&)](../../relational-databases/reference/system-tables/sysssispackagefolders-transact-sql.md).  
  
 When you open [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] and connect to [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)], you will see the msdb folders that [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service manages listed within the Stored Packages folder. If the configuration file specifies root file system folders, the Stored Packages folder also lists packages saved to the file system in those folders and in all subfolders.  
  
 You can store packages in any file system folder, but they will not be listed in subfolders of the **Stored Packages** folder unless you add the folder to the list of folders in the configuration file for the package store. For more information about the configuration file, see [Configuring the Integration Services Service (SSIS Service)](../../integration-services/service/configuring-the-integration-services-service-ssis-service.md).  
  
 The **Running Packages** folder contains no subfolders and it is not extensible.  
  
 By default, the **Stored Packages** folder contains two folders: **File System** and **MSDB**. The **File System** folder lists the packages that are saved to the file system. The location of these files is specified in the configuration file for the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service. The default folder is the Packages folder, located in %Program Files%\Microsoft SQL Server\100\DTS. The **MSDB** folder lists the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] packages that have been saved to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] msdb database on the server. The sysssispackages table contains the packages saved to msdb.  
  
 To view the list of packages in the package store, you must open [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] and connect to [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)]. For more information, see [View Integration Services Packages in SQL Server Management Studio &#40;SSIS Service&#41;](../../integration-services/service/view-integration-services-packages-in-sql-server-management-studio-ssis-service.md).  
  
## Monitor running packages  
 The **Running Packages** folder lists packages currently running. To view information about current packages on the **Summary** page of [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], click the **Running Packages** folder. Information such as the execution duration of running packages is listed on the **Summary** page. Optionally, refresh the folder to display the most current information.  
  
 To view information about a single running package on the **Summary** page, click the package. The **Summary** page displays information such as the version and description of the package.  
  
Stop a running package from the **Running Packages** folder by right-clicking the package and then clicking **Stop**.  
  
## Manage package storage  
 To organize packages, you can add custom folders to the root package store folders that the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service lists in its configuration file. By default, the root folders are the **File System** and **MSDB** folders. For example, you might want to add to the **File System** folder a **Data Cleaning** folder that contains all the packages used for cleaning data. You can add custom folders to custom folders, creating a nested folder hierarchy to suit your needs. The custom folders can be deleted and renamed; however, you cannot rename or delete the root folders that the configuration file specifies. To update the root folders that [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] lists, you must update the configuration file.  
  
 For more information, see [Configuring the Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/configuring-the-integration-services-service-ssis-service.md).  
  
## Import and export packages  
 [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] packages can be saved to either to the msdb database or to the file system. You can copy a package from one storage type to the other by using the import or export feature that [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] provides. You can also import a package to the same storage type and give the package a different name, to create a copy of a package. The **dtutil** command prompt utility (dtutil.exe) can also be used to import and export packages.  
  
 For more information, see [dtutil Utility](../../integration-services/dtutil-utility.md).
  
## Related tasks  
  
-   [Import and Export Packages &#40;SSIS Service&#41;](../../integration-services/service/import-and-export-packages-ssis-service.md)  
  
-   [View Integration Services Packages in SQL Server Management Studio &#40;SSIS Service&#41;](../../integration-services/service/view-integration-services-packages-in-sql-server-management-studio-ssis-service.md)  
  
## See Also  
 [Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/integration-services-service-ssis-service.md)  
  
  