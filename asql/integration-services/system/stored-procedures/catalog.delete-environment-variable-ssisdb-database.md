---
title: "catalog.delete_environment_variable (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 894b3bdb-aa34-463e-aba4-1b68ad96a0ef
caps.latest.revision: 12
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.delete_environment_variable (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Deletes an environment variable from an environment in the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
delete_environment_variable [ @folder_name = ] folder_name  
    , [ @environment_name = ] environment_name  
    , [ @variable_name = ] variable_name  
```  
  
## Arguments  
 [ @folder_name = ] *folder_name*  
 The name of the folder that contains the environment. The *folder_name* is **nvarchar(128)**.  
  
 [ @environment_name = ] *environment_name*  
 The name of the environment that contains the variable. The *environment_name* is **nvarchar(128)**.  
  
 [ @variable_name = ] *variable_name*  
 The name of the variable that is to be deleted. The *variable_name* is **nvarchar(128)**.  
  
## Return Code Value  
 0 (success)  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   READ and MODIFY permissions on the environment  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes some conditions that may raise an error or warning:  
  
-   The environment name is not valid  
  
-   The environment variable does not exist  
  
  