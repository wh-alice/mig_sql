---
title: "Script a Table | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ea88d736-849e-4368-b55d-06aeee097bf3
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 2-6 - Script a Table
[!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] can create scripts to select, insert, update, and delete tables, and to create, alter, drop, or execute stored procedures.  
  
Sometimes you want a script with multiple options, such as drop a procedure and then create a procedure, or create a table then alter a table. To create combined scripts, save the first script to a Query Editor window and the second to the clipboard so you can paste it into the window after the first script.  
  
 
1.  In Object Explorer, expand your server, expand **Databases**, expand [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)], expand **Tables**, right-click **HumanResources.Employee**, and then point to **Script Table As**.  
  
2.  The shortcut menu has seven available scripting options: **CREATE To**, **DROP To**, **DROP and CREATE To**, **SELECT To**, **INSERT To**, **UPDATE To**, and **DELETE To**. Point to **UPDATE To**, and then click **New Query Editor Window**.  
  
3.  A new Query Editor window opens, makes a connection, and presents the entire update statement.  
  
    This exercise demonstrates how the scripting feature can do more than just script the creation of a table or stored procedure. This new feature can help you quickly add data manipulation scripts to your project and easily script execution of stored procedures. This can be a big time saver for tables and procedures with many fields.  
  
 
  
  
  
