---
title: "Specify a Hit Count | Microsoft Docs"
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
  - "vs.debug.breakpt.hitcount"
helpviewer_keywords: 
  - "Transact-SQL debugger, breakpoint hit count"
ms.assetid: 24836939-94ed-4e57-aa85-5d6938d859e4
caps.latest.revision: 6
ms.author: "rickbyh"
manager: "jhubbard"
---
# Specify a Hit Count
  A breakpoint hit count is a counter that is incremented by the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] debugger each time the breakpoint is reached. If the specified hit count is reached and any specified breakpoint condition is satisfied, the debugger performs the action specified for the breakpoint.  
  
## Hit Count Considerations  
 By default, execution breaks every time a breakpoint is hit. You can choose between the following options:  
  
-   Break always (the default).  
  
-   Break when the hit count equals a specified value.  
  
-   Break when the hit count equals a multiple of a specified value.  
  
-   Break when the hit count is greater than or equal to a specified value.  
  
 Breakpoint hit counts are incremented within the scope of a debugging session. All hit counts are set to zero at the start of each debugging session.  
  
 If you want to track how many times a breakpoint is hit without having the breakpoint break execution, specify a hit count with a very high value so the breakpoint never breaks.  
  
 The default action for a breakpoint is to break execution when both the hit count and breakpoint condition have been satisfied. For information about specifying other actions, see [Specify a Breakpoint Action](../../relational-databases/scripting/specify-a-breakpoint-action.md).  
  
#### To Specify a Hit Count  
  
1.  In the editor window, right-click the breakpoint glyph, and then click **Hit Count** on the shortcut menu.  
  
     -or-  
  
     In the **Breakpoints** window, right-click the breakpoint glyph, and then click **Hit Count** on the shortcut menu.  
  
2.  In the **Breakpoint Hit Count** dialog box, select the behavior you want from the **When the breakpoint is hit** box.  
  
     If you choose any setting other than **Break Always**, a text box appears to the right of the list. Enter an integer in the text box to specify the hit count you want.  
  
3.  Click **OK** to implement the changes, or **Cancel** to exit without applying the changes.  
  
#### To View or Reset the Current Hit Count  
  
1.  In the editor window, right-click the breakpoint glyph, and then click **Hit Count** on the shortcut menu.  
  
     -or-  
  
     In the **Breakpoints** window, right-click the breakpoint glyph, and then click **Hit Count** on the shortcut menu.  
  
2.  In the **Breakpoint Hit Count** dialog box, the **Current hit count:** is displayed just above the **Reset** button.  
  
3.  Click **Reset** if you want to set the current hit count to zero.  
  
4.  Click **OK** or **Cancel** to exit the dialog.  
  
## See Also  
 [Specify a Breakpoint Condition](../../relational-databases/scripting/specify-a-breakpoint-condition.md)  
  
  