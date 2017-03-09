---
title: "catalog.delete_environment_reference (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 1f68f157-c4e9-412c-92b3-53a2faaba29b
caps.latest.revision: 12
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.delete_environment_reference (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Deletes an environment reference from a project in the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
delete_environment_reference [ @reference_id = ] reference_id  
```  
  
## Arguments  
 [ @reference_id = ] *reference_id*  
 The unique identifier of the environment reference. The *reference_id* is **bigint**.  
  
## Return Code Value  
 0 (success)  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   MODIFY permission on the project  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes some conditions that may raise an error or warning:  
  
-   The environment reference identifier is not valid  
  
-   The user does not have the appropriate permissions  
  
  