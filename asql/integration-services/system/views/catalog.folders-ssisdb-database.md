---
title: "catalog.folders (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 21a37c16-60aa-4b3f-8bca-ac90ad1697ac
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.folders (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Displays the folders in the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] catalog.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|id|**bigint**|The unique identifier of the folder.|  
|name|**sysname(nvarchar(128)**|The name of the folder, which is unique within the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] catalog.|  
|description|**nvarchar(1024)**|The description of the folder.|  
|created_by_sid|**varbinary(85)**|The security identifier (SID) of the user who created the folder.|  
|created_by_name|**nvarchar(128)**|The name of the user who created the folder.|  
|created_time|**datetimeoffset(7)**|The date and time at which the folder was created.|  
  
## Remarks  
 This view displays a row for each folder in the catalog.  
  
## Permissions  
 This view requires one of the following permissions:  
  
-   READ permission on the folder  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
> [!NOTE]  
>  When you have permission to perform an operation on the server, you also have permission to view information about the operation. Row-level security is enforced; only rows that you have permission to view are displayed.  
  
  