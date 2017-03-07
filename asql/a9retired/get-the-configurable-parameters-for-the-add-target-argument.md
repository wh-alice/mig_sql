---
title: "Get the Configurable Parameters for the ADD TARGET Argument | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
  - "xevents"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "extended events [SQL Server], ADD TARGET argument"
  - "xe"
ms.assetid: 08454543-c5c8-4ca3-9af9-f1d82264471c
caps.latest.revision: 14
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# Get the Configurable Parameters for the ADD TARGET Argument
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Accomplishing this task involves using Query Editor in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
 After the statements in this procedure finish, the **Results** tab of Query Editor displays the following columns:  
  
-   package_name  
  
-   target_name  
  
-   parameter_name  
  
-   parameter_type  
  
-   required  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
 Before you create a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Extended Events session, it is useful to find out what parameters you can set when you use the ADD TARGET argument in CREATE EVENT SESSION or ALTER EVENT SESSION.  
  
### To get the configurable parameters for the ADD TARGET argument using Query Editor  
  
-   In Query Editor, issue the following statements.  
  
    ```  
    SELECT p.name package_name, o.name target_name, c.name parameter_name,   
    c.type_name parameter_type, CASE c.capabilities_desc WHEN 'mandatory' THEN 'yes' ELSE 'no' END   
    required   
    FROM sys.dm_xe_objects o JOIN sys.dm_xe_packages p ON o.package_guid = p.guid   
    JOIN sys.dm_xe_object_columns c ON o.name = c.object_name AND c.column_type = 'customizable'  
    WHERE o.object_type = 'target'   
    ORDER BY package_name, target_name, required DESC  
    ```  
  
## See Also  
 [CREATE EVENT SESSION &#40;Transact-SQL&#41;](../t-sql/statements/create-event-session-transact-sql.md)   
 [ALTER EVENT SESSION &#40;Transact-SQL&#41;](../t-sql/statements/alter-event-session-transact-sql.md)   
 [sys.dm_xe_objects &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-objects-transact-sql.md)   
 [sys.dm_xe_packages &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-packages-transact-sql.md)  
  
  