---
title: "View or Change the Default Locations for Data and Log Files (SQL Server Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-05"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "log files [SQL Server], changing default location"
  - "data files [SQL Server], changing default location"
ms.assetid: 70a57fda-fcfe-490f-9cf6-5df620e32b2a
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# View or Change the Default Locations for Data and Log Files
  This topic describes how to view and change the default locations of new data and log files in [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] using [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]. The default path is obtained from the registry. After you change the location all new databases created in the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] will use that location if a different location is not specified.  
  
 
##  <a name="Recommendations"></a> Recommendations  
 The best practice for protecting your data files and log files is to ensure that they are protected by access control lists (ACLs). Set the ACLs on the directory root under which the files are created.  
  
  
## View or change the default locations for database files  
  
1.  In Object Explorer, right-click on your server and click **Properties**.  
  
2.  In the left panel on that Properties page, click the **Database settings** tab.  
  
3.  In **Database default locations**, view the current default locations for new data files and new log files. To change a default location, enter a new default pathname in the **Data** or **Log** field, or click the browse button to find and select a pathname.  
  
>**NOTE:** After changing the default locations, you must stop and start the SQL Server service to complete the change.  
  
## See also  
 [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../../t-sql/statements/create-database-sql-server-transact-sql.md)   
 [Create a Database](../../../relational-databases/databases/create-a-database.md)  
  
  