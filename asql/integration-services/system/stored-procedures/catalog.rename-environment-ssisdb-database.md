---
title: "catalog.rename_environment (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: c73d7452-31c5-4f4e-afcc-e9eca760c826
caps.latest.revision: 13
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.rename_environment (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Renames an environment in the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
rename_environment [ @folder_name = ] folder_name  
    , [ @environment_name = ] environment_name  
    , [ @new_environment_name= ] new_environment_name  
```  
  
## Arguments  
 [ @folder_name = ] *folder_name*  
 The name of the folder that contains the environment. The *folder_name* is **nvarchar(128)**.  
  
 [ @environment_name = ] *environment_name*  
 The original name of the environment. The *environment_name* is **nvarchar(128)**.  
  
 [ @new_environment_name = ] *new_environment_name*  
 The new name of the environment. The *new_environment_name* is **nvarchar(128)**.  
  
## Return Code Value  
 0 (success)  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   MODIFY permissions on the environment  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes some conditions that may raise an error or warning:  
  
-   The original environment name is not valid  
  
-   The new name has already been used on an existing environment  
  
## Remarks  
 Environment references from projects are not automatically updated when you rename the environment. Environment references must be updated accordingly. This stored procedure will succeed even if environment references are broken by changing the environment name. Environment references must be updated after this stored procedure completes.  
  
> [!NOTE]  
>  When an environment reference is not valid, validation and execution of the corresponding packages that use those references will fail.  
  
  