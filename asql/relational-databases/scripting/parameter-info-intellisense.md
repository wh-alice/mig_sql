---
title: "Parameter Info (IntelliSense) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Parameter Info option [IntelliSense]"
  - "stored function parameter completion [Intellisense]"
  - "language references [SQL Server]"
  - "IntelliSense [SQL Server], Parameter Info option"
ms.assetid: 56c2aac9-c65c-4679-b62c-d9f689876dde
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# Parameter Info (IntelliSense)
  The [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] IntelliSense **Parameter Info** option opens a parameters list that provides information about the number, names, and types of the parameters that are required by a function or stored procedure. The parameter in bold indicates the next parameter that is required as you type a function or stored procedure.  
  
 The parameter list is also displayed for nested functions. If you type a function as a parameter to another function, the parameter list displays the parameters for the inner function. Then, when the inner function parameter list is complete, the parameter list reverts to displaying the outer function parameters.  
  
#### To view Parameter Info for functions or stored procedures  
  
1.  After the name of a function, type an open parenthesis as you usually type to open the parameters list. After you type the name of a stored procedure, type a space as you usually type to obtain information about the procedure parameters.  
  
     IntelliSense displays the complete declaration for the function or the parameters for a stored procedure in a pop-up window just under the insertion point. The first parameter in the list appears in bold.  
  
2.  As you type the parameters, the bold font changes to reflect the next parameter that you need to enter.  
  
3.  Press ESC at any time to close the list, or continue typing until you have completed the function.  
  
     For a function, if you type the closing parenthesis you also close the parameter list.  
  
#### To manually start Parameter Info  
  
1.  On the **Edit** menu, select **IntelliSense** and then select **Parameter Info**.  
  
2.  Press the CTRL+SHIFT+SPACE keyboard shortcut.  
  
 For more information, see [Configure IntelliSense &#40;SQL Server Management Studio&#41;](../../relational-databases/scripting/configure-intellisense-sql-server-management-studio.md).  
  
> [!NOTE]  
>  The **Parameter Info** option is available only for the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] Query Editor and the XML Query Editor.  
  
  