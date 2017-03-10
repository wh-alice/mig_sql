---
title: "catalog.environment_variables (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 45f5aacd-505a-443b-8fc2-c7929e78cff8
caps.latest.revision: 20
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.environment_variables (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Displays the environment variable details for all environments in the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|variable_id|**bigint**|The unique identifier (ID) of the environment variable.|  
|environment_id|**bigint**|The unique ID of the environment that the variable is associated with.|  
|name|**sysname**|The name of the environment variable.|  
|description|**nvarchar(1024)**|The description of the environment variable.|  
|type|**nvarchar(128)**|The data type of the environment variable.|  
|sensitive|**bit**|When the value is `1`, the variable is sensitive and is encrypted when it is stored. When the value is `0`, the variable is not sensitive and the value is stored in plaintext.|  
|value|**sql_variant**|The value of the environment variable. When sensitive is `0`, the plaintext value is shown. When sensitive is `1`, the **NULL** value is displayed.|  
  
## Remarks  
 This view displays a row for each environment variable in the catalog.  
  
## Permissions  
 This view requires one of the following permissions:  
  
-   READ permission on the corresponding environment  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
> [!NOTE]  
>  When you have permission to perform an operation on the server, you also have permission to view information about the operation. Row-level security is enforced; only rows that you have permission to view are displayed.  
  
  