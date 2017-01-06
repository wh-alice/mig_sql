---
title: "Delete Objects | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.deleteobjects.f1"
helpviewer_keywords: 
  - "Delete Objects dialog box"
ms.assetid: 49541441-179c-40d3-ba0c-01bcae545984
caps.latest.revision: 4
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Delete Objects
Use this dialog box to delete a database or database object.  
  
## UIElement List  
**Object to be deleted**  
Displays the names, types, owners, and status of the objects that are about to be deleted, as well as any messages about errors during execution.  
  
> [!NOTE]  
> Running **Delete** on a database is equivalent to issuing DROP DATABASE in Transact-SQL.  
  
**Show Dependencies**  
Click to display both the objects that are dependent on the currently selected object and objects that the current object is dependent on (upward and downward dependency). The information displayed in the **Show Dependencies** dialog box is read-only.  
  
> [!NOTE]  
> The **Show Dependencies** button does not appear for all types of database objects. To view dependencies when the **Show Dependencies** button is not available, right-click the object in Object Explorer, and then click **View Dependencies**.  
  
**Delete backup and restore history information for databases**  
Only appears when a database is deleted, this check box causes the backup and restore history for the subject database to be deleted from the **msdb** database.  
  
**Close existing connections**  
Only appears when a database is deleted, this check box terminates connections to the subject database.  
  
