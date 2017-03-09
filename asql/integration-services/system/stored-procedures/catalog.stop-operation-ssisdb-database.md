---
title: "catalog.stop_operation (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 97fd9d22-03dd-4eda-8f6c-ba8b67acec68
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.stop_operation (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Stops a validation or instance of execution in the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog.  
  
## Syntax  
  
```tsql  
stop_operation [ @operation_id = ] operation_id  
```  
  
## Arguments  
 [ @operation_id = ] *operation_id*  
 The unique identifier of the validation or instance of execution. The *operation_id* is **bigint**.  
  
## Return Code Value  
 0 (success)  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   READ and MODIFY permissions on the validation or instance of execution  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes some conditions that may raise an error or warning:  
  
-   The user does not have the appropriate permissions  
  
-   The operation identifier is not valid  
  
-   The operation has already been stopped  
  
## Remarks  
 Only one user at a time should stop an operation in [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog. If multiple users try to stop the operation, the stored procedure will return success (the value `0`) on the first attempt, but subsequent attempts will raise an error.  
  
  