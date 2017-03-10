---
title: "catalog.delete_folder (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: b9c08992-500c-447e-bc19-1eb13c9b0293
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.delete_folder (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Deletes a folder from the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
delete_folder [ @folder_name = ] folder_name  
```  
  
## Arguments  
 [ @folder_name = ] *folder_name*  
 The name of the folder that is to be deleted. The *folder_name* is **nvarchar(128)**.  
  
## Return Code Value  
 None  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 Returns a message to confirm the deletion of the folder.  
  
  