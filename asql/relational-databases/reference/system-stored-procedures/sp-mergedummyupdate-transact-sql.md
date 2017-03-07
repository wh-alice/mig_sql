---
title: "sp_mergedummyupdate (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "sp_mergedummyupdate_TSQL"
  - "sp_mergedummyupdate"
helpviewer_keywords: 
  - "sp_mergedummyupdate"
ms.assetid: b834f7f6-9588-4d59-a3e2-83d8e8e722e1
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_mergedummyupdate (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Does a dummy update on the given row so that it is sent again during the next merge. This stored procedure can be executed at the Publisher, on the publication database, or at the Subscriber, on the subscription database.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_mergedummyupdate [ @source_object =] 'source_object', [ @rowguid =] 'rowguid'  
```  
  
## Arguments  
 [ **@source_object=**] **'***source_object***'**  
 Is the name of the source object. *source_object*is **nvarchar(386)**, with no default.  
  
 [ **@rowguid=**] **'***rowguid***'**  
 Is the row identifier. *rowguid* is **uniqueidentifier**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_mergedummyupdate** is used in merge replication.  
  
 **sp_mergedummyupdate** is useful if you write your own alternative to the Replication Conflict Viewer (Wzcnflct.exe).  
  
## Permissions  
 Only members of the **db_owner** fixed database role can execute **sp_mergedummyupdate**.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  