---
title: "Edit a Breakpoint Location | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "vs.debug.breakpt.location.file"
helpviewer_keywords: 
  - "Transact-SQL debugger, breakpoint location"
ms.assetid: 5c28e411-0377-4210-a7ce-2a5c13dcdf74
caps.latest.revision: 8
ms.author: "rickbyh"
manager: "jhubbard"
---
# Edit a Breakpoint Location
  The breakpoint location specifies the line and character where the breakpoint resides in a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] script file. You can edit the breakpoint location to move the breakpoint to another location in the script, or to a different script.  
  
## Editing a Location  
 When you edit a breakpoint location, the breakpoint moves to the new location, carrying with it all of the existing properties, such as a hit count or condition.  
  
#### To Edit a Breakpoint Location  
  
1.  In the editor window, right-click the breakpoint glyph, and then click **Location** on the shortcut menu.  
  
     -or-  
  
     In the **Breakpoints** window, right-click the breakpoint glyph, and then click **Location** on the shortcut menu.  
  
2.  In the **File Breakpoint** dialog box, edit **File** to specify a new file, **Line** to specify a new line, or **Character** to specify a new location within the line. If the new file you specify is already open in a query editor window, the breakpoint is moved to that editor window. If the file is not opened, a new editor window is opened, the file is loaded in, and the breakpoint moved to the new location.  
  
     The **Allow the source code to be different from the original version** option has no effect when debugging [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
## See Also  
 [Specify a Hit Count](../../relational-databases/scripting/specify-a-hit-count.md)   
 [Specify a Breakpoint Action](../../relational-databases/scripting/specify-a-breakpoint-action.md)   
 [Specify a Breakpoint Condition](../../relational-databases/scripting/specify-a-breakpoint-condition.md)   
 [Specify a Breakpoint Filter](../../relational-databases/scripting/specify-a-breakpoint-filter.md)  
  
  