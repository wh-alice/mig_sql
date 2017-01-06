---
title: "Project Settings(Loading System objects) (DB2ToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: 9a545233-1b0a-488a-a1ec-c33aa608dcc1
caps.latest.revision: 4
ms.author: "lonnyb"
manager: "lonnyb"
---
# Project Settings(Loading System objects) (DB2ToSQL)
The Loading System Objects page of the **Project Settings** dialog box lets you specify which DB2 system objects SSMA converts and loads into SQL Server.  
  
The Loading System Objects pane is available in the **Project Settings** and **Default Project Settings** dialog boxes:  
  
-   To specify settings for all SSMA projects, on the **Tools** menu, select **Default Project Settings**, select migration project type for which settings are required to be viewed or changed from **Migration Target Version** drop down click **General** at the bottom of the left pane, and then click **Loading System Objects**.  
  
-   To specify settings for the current project, on the **Tools** menu, select **Project Settings**, click **General** at the bottom of the left pane, and then click **Loading System Objects**.  
  
## Default Settings  
Converting system objects consumes system resources and takes time. To improve performance, SSMA selects only the most frequently used system objects, as shown in the following list:  
  
-   SYS.DBMS_OUTPUT  
  
-   SYS.DBMS_PIPE  
  
-   SYS.DBMS_UTILITY  
  
-   SYS.STANDARD  
  
-   SYS.UTL_FILE  
  
-   SYS.DBMS_LOB  
  
-   SYS.DBMS_SQL  
  
-   SYS.DBMS_SESSION  
  
If your DB2 objects refer to additional system objects, you should select those objects. If you do not select the system objects that are referenced by your DB2 database objects, SSMA will report conversion errors. If you receive conversion errors caused by missing system objects, select the missing objects in this dialog box. You can then repeat the conversion as necessary.  
  
