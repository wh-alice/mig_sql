---
title: "sysssispackagefolders (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sysdtspackagefolders90"
  - "sysdtspackagefolders90_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysssispackagefolders system table"
ms.assetid: ddc4833f-27bf-4610-b739-d257961d17ac
caps.latest.revision: 22
ms.author: "spelluru"
manager: "erikre"
---
# sysssispackagefolders (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each logical folder in the folder hierarchy that [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] uses. These folders are listed in Object Explorer of [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] when you connect to [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]. A folder lists packages that are saved to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or to the file system.  
  
 The **parentfolderid** column describes the folder hierarchy. The folder at the top of the folder hierarchy contains a null value in **parentfolderid**.  
  
 The **foldername** column contains the name of folders that appear in Object Explorer.  
  
 This table is stored in the **msdb** database.  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**folderid**|**uniqueidentifier**|The GUID of the folder.|  
|**parentfolderid**|**uniqueidentifier**|The GUID of the folder that is the parent folder.|  
|**foldername**|**sysname**|The name of the folder. This name appears in the folder hierarchy in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].|  
  
  