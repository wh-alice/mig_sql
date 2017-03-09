---
title: "catalog.get_project (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: f263c9e4-a7db-4888-a458-70ae99b1f729
caps.latest.revision: 18
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.get_project (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Retrieves the binary stream of a project that has been deployed to the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server.  
  
## Syntax  
  
```tsql  
get_project [ @folder_name = ] folder_name , [ @project_name = ] project_name   
```  
  
## Arguments  
 [ @folder_name = ] *folder_name*  
 The name of the folder that contains the project. *folder_name* is **nvarchar(128)**.  
  
 [ @project_name = ] *project_name*  
 The name of the project. *project_name* is **nvarchar(128)**.  
  
## Return Code Value  
 0 (success)  
  
## Result Sets  
 The binary stream of the project is returned as **varbinary(MAX)**. No results are returned if the folder or project is not found.  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   READ permissions on the project  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes some conditions that may cause the get_project stored procedure to raise an error:  
  
-   The project does not exist  
  
-   The folder does not exist  
  
-   The user does not have the appropriate permissions  
  
  