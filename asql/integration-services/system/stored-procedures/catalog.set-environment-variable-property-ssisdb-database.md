---
title: "catalog.set_environment_variable_property (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: c1deb31e-b8d1-44ca-b355-570959bc6478
caps.latest.revision: 13
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.set_environment_variable_property (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Sets the property of an environment variable in the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
set_environment_variable_property [ @folder_name = ] folder_name  
    , [ @environment_name = ] environment_name  
    , [ @variable_name = ] variable_name  
    , [ @property_name = ] property_name  
    , [ @property_value = ] property_value  
```  
  
## Arguments  
 [ @folder_name = ] *folder_name*  
 The name of the folder that contains the environment. The *folder_name* is **nvarchar(128)**.  
  
 [ @environment_name = ] *environment_name*  
 The name of the environment. The *environment_name* is **nvarchar(128)**.  
  
 [ @variable_name = ] *variable_name*  
 The name of the environment variable. The *variable_name* is **nvarchar(128)**.  
  
 [ @property_name = ] *property_name*  
 The name of the environment variable property. The *property_name* is **nvarchar(128)**.  
  
 [ @property_value = ] *property_value*  
 The value of the environment variable property. The *property_value* is **nvarchar(4000)**.  
  
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
  
-   The folder name is not valid  
  
-   The environment name is not valid  
  
-   The environment variable name is not valid  
  
-   The environment variable property name is not valid  
  
-   The user does not have the appropriate permissions  
  
## Remarks  
 In this release, only the `Description` property can be set. The property value for the `Description` property cannot exceed 4000 characters.  
  
  