---
title: "catalog.set_customized_logging_level_description | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 6ceaa39f-2439-457b-b99f-f12d88a1be32
caps.latest.revision: 7
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.set_customized_logging_level_description
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Changes the description of an existing customized logging level. For more info about customized logging levels, see [Integration Services &#40;SSIS&#41; Logging](../../../integration-services/performance/integration-services-ssis-logging.md).  
  
## Syntax  
  
```tsql  
set_customized_logging_level_description [ @level_name = ] level_name  
    , [ @level_description = ] level_description  
  
```  
  
## Arguments  
 [ @level_name = ] *level_name*  
 The name of an existing customized logging level.  
  
 The *level_name* is **nvarchar(128)**.  
  
 [ @level_description = ] *level_description*  
 The new description for the  specified customized logging level.  
  
 The *level_description* is **nvarchar(1024)**.  
  
## Remarks  
  
## Return Codes  
 0 (success)  
  
 When the stored procedure fails, it throws an error.  
  
## Result Set  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   Membership in the **ssis_admin** database role  
  
-   Membership in the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes conditions that cause the stored procedure to fail.  
  
-   The user does not have the required permissions.  
  
  