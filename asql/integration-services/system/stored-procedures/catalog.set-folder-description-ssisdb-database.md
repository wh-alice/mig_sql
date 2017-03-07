---
title: "catalog.set_folder_description (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 802416f6-5177-4db5-bca5-976dec5faf53
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.set_folder_description (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Sets the description of a folder in the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
set_folder_description [ @folder_name = ] folder_name  
    , [ @folder_description = ] folder_description  
```  
  
## Arguments  
 [ @folder_name = ] *folder_name*  
 The name of the folder. The *folder_name* is **nvarchar(128)**.  
  
 [ @folder_description = ] *folder_description*  
 The description of the folder. The *folder_description* is **nvarchar(MAX)**.  
  
## Return Code Value  
 None  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The stored procedure returns a message to confirm the setting of new folder description.  
  
  