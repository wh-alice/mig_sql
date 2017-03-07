---
title: "Get the Fields for All Events | Microsoft Docs"
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
  - "extended events [SQL Server], getting fields"
  - "xe"
ms.assetid: 4e4ee03f-5bca-42ed-a37c-db1c82e3aad2
caps.latest.revision: 11
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# Get the Fields for All Events
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Accomplishing this task involves using Query Editor in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
 After the statements in this procedure finish, the **Results** tab of Query Editor displays the following columns:  
  
-   package_name  
  
-   event_name  
  
-   event_field  
  
-   field_type  
  
-   column_type  
  
 You can use the preceding information when configuring event sessions that use the bucketing target. For more information, see [SQL Server Extended Events Targets](../a9retired/sql-server-extended-events-targets.md).  
  
## Before you Begin  
 Before you create a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Extended Events session, it is useful to get information about the fields associated with events.  
  
## To get the fields for all events using Query Editor  
  
-   In Query Editor, issue the following statements.  
  
    ```  
    select p.name package_name, o.name event_name, c.name event_field, c.type_name field_type, c.column_type column_type  
    from sys.dm_xe_objects o  
    join sys.dm_xe_packages p  
          on o.package_guid = p.guid  
    join sys.dm_xe_object_columns c  
          on o.name = c.object_name  
    where o.object_type = 'event'  
    order by package_name, event_name  
    ```  
  
## See Also  
 [sys.dm_xe_objects &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-objects-transact-sql.md)   
 [sys.dm_xe_packages &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-packages-transact-sql.md)  
  
  