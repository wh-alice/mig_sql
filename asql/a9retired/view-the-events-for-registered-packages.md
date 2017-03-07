---
title: "View the Events for Registered Packages | Microsoft Docs"
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
  - "viewing events"
  - "extended events [SQL Server], viewing events"
ms.assetid: 9a90b1a2-aa69-43f6-bdeb-cc5f57a26c6f
caps.latest.revision: 16
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# View the Events for Registered Packages
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Before you create a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Extended Events session, it is useful to find out what events are available in the registered packages. For more information, see [SQL Server Extended Events Packages](../relational-databases/extended-events/sql-server-extended-events-packages.md).  
  
 Accomplishing this task involves using Query Editor in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to carry out the following procedure.  
  
 After the statements in this procedure finish, the **Results** tab of Query Editor displays the following columns:  
  
-   name. The package name.  
  
-   event. The event name.  
  
-   keyword. A keyword derived from an internal numeric mapping table.  
  
-   channel. The audience for an event.  
  
-   description. The event description.  
  
## To view the events for registered packages using Query Editor  
  
-   In Query Editor, issue the following statements.  
  
    ```  
    USE msdb  
    SELECT p.name, c.event, k.keyword, c.channel, c.description FROM  
    (  
    SELECT event_package=o.package_guid, o.description,   
    event=c.object_name, channel=v.map_value  
    FROM sys.dm_xe_objects o  
    LEFT JOIN sys.dm_xe_object_columns c ON o.name=c.object_name  
    INNER JOIN sys.dm_xe_map_values v ON c.type_name=v.name   
    AND c.column_value=cast(v.map_key AS nvarchar)  
    WHERE object_type='event' AND (c.name='CHANNEL' or c.name IS NULL)  
  
    ) c LEFT JOIN   
    (  
    SELECT event_package=c.object_package_guid, event=c.object_name,   
    keyword=v.map_value  
    FROM sys.dm_xe_object_columns c INNER JOIN sys.dm_xe_map_values v   
    ON c.type_name=v.name AND c.column_value=v.map_key   
    AND c.type_package_guid=v.object_package_guid  
    INNER JOIN sys.dm_xe_objects o ON o.name=c.object_name   
    AND o.package_guid=c.object_package_guid  
    WHERE object_type='event' AND c.name='KEYWORD'   
    ) k  
    ON  
    k.event_package=c.event_package AND (k.event=c.event or k.event IS NULL)  
    INNER JOIN sys.dm_xe_packages p ON p.guid=c.event_package  
    ORDER BY keyword desc, channel, event  
    ```  
  
## See Also  
 [SQL Server Extended Events Packages](../relational-databases/extended-events/sql-server-extended-events-packages.md)   
 [sys.dm_xe_objects &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-objects-transact-sql.md)   
 [sys.dm_xe_packages &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-packages-transact-sql.md)  
  
  