---
title: "sys.assembly_modules (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.assembly_modules"
  - "sys.assembly_modules_TSQL"
  - "assembly_modules"
  - "assembly_modules_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.assembly_modules catalog view"
ms.assetid: 5f9e644e-8065-49a2-b53d-db7df98f70d8
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.assembly_modules (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns one row for each function, procedure or trigger that is defined by a common language runtime (CLR) assembly. This catalog view maps CLR stored procedures, CLR triggers, or CLR functions to their underlying implementation. Objects of type TA, AF, PC, FS, and FT have an associated assembly module. To find the association between the object and the assembly, you can join this catalog view to other catalog views. For example, when you create a CLR stored procedure, it is represented by one row in **sys.objects**, one row in **sys.procedures** (which inherits from **sys.objects**), and one row in **sys.assembly_modules**. The stored procedure itself is represented by the metadata in **sys.objects** and **sys.procedures**. References to the procedure’s underlying CLR implementation are found in **sys.assembly_modules**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|Object identification number of the SQL object. Is unique within a database.|  
|**assembly_id**|**int**|ID of the assembly from which this module was created.|  
|**assembly_class**|**sysname**|Name of the class within the assembly that defines this module.|  
|**assembly_method**|**sysname**|Name of the method within the **assembly_class** that defines this module.<br /><br /> NULL for aggregate functions (AF).|  
|**null_on_null_input**|**bit**|Module was declared to produce a NULL output for any NULL input.|  
|**execute_as_principal_id**|**int**|ID of the database principal under which the context execution occurs, as specified by the EXECUTE AS clause of the CLR function, stored procedure, or trigger.<br /><br /> NULL = EXECUTE AS CALLER. This is the default.<br /><br /> ID of the specified database principal = EXECUTE AS SELF, EXECUTE AS *user_name*, or EXECUTE AS *login_name*.<br /><br /> -2 = EXECUTE AS OWNER.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)  
  
  