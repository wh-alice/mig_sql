---
title: "Troubleshooting IntelliSense (SQL Server Management Studio) | Microsoft Docs"
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
  - "unavailable options [IntelliSense]"
  - "IntelliSense [SQL Server], troubleshooting"
  - "IntelliSense [SQL Server], unavailable options"
  - "troubleshooting [IntelliSense]"
ms.assetid: 4b72ffc6-aea2-4e11-ab36-fa2de4d7bcc5
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# Troubleshooting IntelliSense
  There are certain cases when the IntelliSense options might not work as you expect.  
  
## Conditions That Affect IntelliSense  
 The following conditions might affect the behavior of IntelliSense:  
  
-   There is a code error above the cursor.  
  
     If there is an incomplete statement or other coding error above the location of the insertion point, IntelliSense may be unable to parse the code elements, and therefore will not work. You can comment out the applicable code to enable IntelliSense again.  
  
-   The insertion point is inside a code comment.  
  
     IntelliSense options are not available when the insertion point is within a comment in your source file.  
  
-   The insertion point is inside a string literal.  
  
     IntelliSense options are not available when the insertion point is inside the quotation marks around a string literal, for example:  
  
     `WHERE FirstName LIKE 'Patri%|'`  
  
-   The automatic options are turned off.  
  
     Many IntelliSense features work automatically by default, but you can disable any feature.  
  
     Even when automatic statement completion is disabled, you can use an IntelliSense feature. For more information, see [Configure IntelliSense &#40;SQL Server Management Studio&#41;](../../relational-databases/scripting/configure-intellisense-sql-server-management-studio.md).  
  
## Database Engine Query IntelliSense  
 The following issues apply to the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] Query Editor:  
  
-   The IntelliSense functionality of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] Query Editor does not support all [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] syntax elements. Parameter help does not support the parameters in some objects, such as extended stored procedures. For more information, see [Transact-SQL Syntax Supported by IntelliSense](../../relational-databases/scripting/transact-sql-syntax-supported-by-intellisense.md).  
  
-   IntelliSense is only available when the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] Query Editor is connected to an instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] from [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] or later. IntelliSense is not available when the Query Editor is connected to earlier versions of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
-   IntelliSense is turned off in the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] Query Editor when the SQLCMD mode is set on.  
  
-   IntelliSense functionality does not cover database objects created by another connection after your editor window connected to the database. If objects are missing from IntelliSense features such as completion lists, you can choose one of these three mechanisms to refresh the cache of objects for your editor window:  
  
    -   Select the **Edit** menu, select **IntelliSense**, then select **Refresh Local Cache**.  
  
    -   Use the CTRL+Shift+R keyboard shortcut.  
  
    -   Disconnect your editor window from the instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] and reconnect.  
  
-   Completion lists do not include database objects for which you do not have permissions. IntelliSense flags references to objects for which you do have permissions. For example, if you open a script that is written by someone else, any references to objects for which that person has permissions and you do not are flagged as incorrect.  
  
-   Completion lists might stop working if you lose the connection to the instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)]. Reconnect to the instance.  
  
  