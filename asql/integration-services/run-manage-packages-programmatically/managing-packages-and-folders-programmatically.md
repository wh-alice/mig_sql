---
title: "Managing Packages and Folders Programmatically | Microsoft Docs"
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
  - "enumerators [Integration Services]"
  - "packages [Integration Services], managing"
  - "custom enumerators [Integration Services]"
ms.assetid: ec59b75d-ba09-44ac-9039-9d593bb462d9
caps.latest.revision: 33
ms.author: "douglasl"
manager: "jhubbard"
---
# Managing Packages and Folders Programmatically
<a name="top"></a> As you work programmatically with [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] packages, you may want to determine whether an individual package or folder exists, or to manage the folders in which packages are stored. The <xref:Microsoft.SqlServer.Dts.Runtime.Application> class of the <xref:Microsoft.SqlServer.Dts.Runtime> namespace provides a variety of methods to satisfy these requirements.    
    
##  <a name="exists"></a> Determining Whether a Package or Folder Exists    
 To determine programmatically whether a saved package exists, call one of the following methods before attempting to load and run the package:    
    
|Storage Location|Method to Call|    
|----------------------|--------------------|    
|SSIS Package Store|<xref:Microsoft.SqlServer.Dts.Runtime.Application.ExistsOnDtsServer%2A>|    
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]|<xref:Microsoft.SqlServer.Dts.Runtime.Application.ExistsOnSqlServer%2A>|    
    
 To determine programmatically whether a folder exists, call one of the following methods before attempting to list the packages stored in the folder, :    
    
|Storage Location|Method to Call|    
|----------------------|--------------------|    
|SSIS Package Store|<xref:Microsoft.SqlServer.Dts.Runtime.Application.FolderExistsOnDtsServer%2A>|    
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]|<xref:Microsoft.SqlServer.Dts.Runtime.Application.FolderExistsOnSqlServer%2A>|    
    
 [Back to top](#top)    
    
##  <a name="managing"></a> Managing Packages and Folders    
 The <xref:Microsoft.SqlServer.Dts.Runtime.Application> class of the <xref:Microsoft.SqlServer.Dts.Runtime> namespace provides additional methods for managing packages and the folders in which they are stored.    
    
###  <a name="managing_rempkg"></a> Removing a Package    
 To remove a saved package programmatically, call one of the following methods:    
    
|Storage Location|Method to Call|    
|----------------------|--------------------|    
|SSIS Package Store|<xref:Microsoft.SqlServer.Dts.Runtime.Application.RemoveFromDtsServer%2A>|    
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]|<xref:Microsoft.SqlServer.Dts.Runtime.Application.RemoveFromSqlServer%2A>|    
    
 [Back to top](#top)    
    
###  <a name="managing_create"></a> Creating a Folder    
 To create a storage folder programmatically, call one of the following methods:    
    
|Storage Location|Method to Call|    
|----------------------|--------------------|    
|SSIS Package Store|<xref:Microsoft.SqlServer.Dts.Runtime.Application.CreateFolderOnDtsServer%2A>|    
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]|<xref:Microsoft.SqlServer.Dts.Runtime.Application.CreateFolderOnSqlServer%2A>|    
    
 [Back to top](#top)    
    
###  <a name="managing_remfldr"></a> Removing a Folder    
 To remove a storage folder programmatically, call one of the following methods:    
    
|Storage Location|Method to Call|    
|----------------------|--------------------|    
|SSIS Package Store|<xref:Microsoft.SqlServer.Dts.Runtime.Application.RemoveFolderFromDtsServer%2A>|    
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]|<xref:Microsoft.SqlServer.Dts.Runtime.Application.RemoveFolderFromSqlServer%2A>|    
    
 [Back to top](#top)    
    
###  <a name="managing_rename"></a> Renaming a Folder    
 To rename a storage folder programmatically, call one of the following methods:    
    
|Storage Location|Method to Call|    
|----------------------|--------------------|    
|SSIS Package Store|<xref:Microsoft.SqlServer.Dts.Runtime.Application.RenameFolderOnDtsServer%2A>|    
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]|<xref:Microsoft.SqlServer.Dts.Runtime.Application.RenameFolderOnSqlServer%2A>|    
    
 [Back to top](#top)    
    
## See Also    
 [Package Management &#40;SSIS Service&#41;](../../integration-services/service/package-management-ssis-service.md)     
 [Enumerating Available Packages Programmatically](../../integration-services/run-manage-packages-programmatically/enumerating-available-packages-programmatically.md)    
    
  