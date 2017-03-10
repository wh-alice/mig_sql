---
title: "TEXTVALID (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "TEXTVALID_TSQL"
  - "TEXTVALID"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "invalid text pointers [SQL Server]"
  - "valid text pointers [SQL Server]"
  - "TEXTVALID function"
  - "checking text pointers"
  - "text-pointer values"
  - "verifying text pointers"
ms.assetid: 9411c349-b59b-4740-a270-92f91d81ad23
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# Text and Image Functions - TEXTVALID (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  A **text**, **ntext**, or **image** function that checks whether a specific text pointer is valid.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Alternative functionality is not available.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
TEXTVALID ( 'table.column' ,text_ ptr )  
```  
  
## Arguments  
 *table*  
 Is the name of the table that will be used.  
  
 *column*  
 Is the name of the column that will be used.  
  
 *text_ptr*  
 Is the text pointer to be checked.  
  
## Return Types  
 **int**  
  
## Remarks  
 Returns 1 if the pointer is valid and 0 if the pointer is not valid. Note that the identifier for the **text** column must include the table name. You cannot use UPDATETEXT, WRITETEXT, or READTEXT without a valid text pointer.  
  
 The following functions and statements are also useful when you work with **text**, **ntext**, and **image** data.  
  
|Function or statement|Description|  
|---------------------------|-----------------|  
|PATINDEX**(**'*%pattern%**'***,** *expression***)**|Returns the character position of a specified character string in **text** and **ntext** columns.|  
|DATALENGTH**(***expression***)**|Returns the length of data in **text**, **ntext**, and **image** columns.|  
|SET TEXTSIZE|Returns the limit, in bytes, of the **text**, **ntext**, or **image** data to be returned with a SELECT statement.|  
  
## Examples  
 The following example reports whether a valid text pointer exists for each value in the `logo` column of the `pub_info` table.  
  
> [!NOTE]  
>  To run this example, you must install the **pubs** database.  
  
```  
USE pubs;  
GO  
SELECT pub_id, 'Valid (if 1) Text data'   
   = TEXTVALID ('pub_info.logo', TEXTPTR(logo))   
FROM pub_info  
ORDER BY pub_id;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
pub_id Valid (if 1) Text data   
------ ----------------------   
0736   1                        
0877   1                        
1389   1                        
1622   1                        
1756   1                        
9901   1                        
9952   1                        
9999   1                        
  
(8 row(s) affected)  
```  
  
## See Also  
 [DATALENGTH &#40;Transact-SQL&#41;](../../t-sql/functions/datalength-transact-sql.md)   
 [PATINDEX &#40;Transact-SQL&#41;](../../t-sql/functions/patindex-transact-sql.md)   
 [SET TEXTSIZE &#40;Transact-SQL&#41;](../../t-sql/statements/set-textsize-transact-sql.md)   
 [Text and Image Functions &#40;Transact-SQL&#41;](http://msdn.microsoft.com/en-US/library/ms188353(SQL.130).aspx)   
 [TEXTPTR &#40;Transact-SQL&#41;](../../t-sql/functions/text-and-image-functions-textptr-transact-sql.md)  
  
  