---
title: "sys.dm_os_stacks (Transact-SQL) | Microsoft Docs"
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
  - "dm_os_stacks"
  - "dm_os_stacks_TSQL"
  - "sys.dm_os_stacks"
  - "sys.dm_os_stacks_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_stacks dynamic management view"
ms.assetid: a69b06c4-28f0-4535-8fa1-9f132db4d916
caps.latest.revision: 21
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_stacks (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This dynamic management view is used internally by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to do the following:  
  
-   Keep track of debug data such as outstanding allocations.  
  
-   Assume or validate logic that is used by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] components in places where the component assumes that a certain call has been made.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**stack_address**|**varbinary(8)**|Unique address for this stack allocation. Is not nullable.|  
|**frame_index**|**int**|Each line represents a function call that, when sorted in ascending order by frame index for a particular **stack_address**, returns the full call stack. Is not nullable.|  
|**frame_address**|**varbinary(8)**|Address of the function call. Is not nullable.|  
  
## Remarks  
 **sys.dm_os_stacks** requires that the symbols of the server and other components be present on the server to display the information correctly.  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  