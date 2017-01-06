---
title: "setCursorName Method (SQLServerStatement) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "SQLServerStatement.setCursorName"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 3f3ec4f2-103a-4e16-9206-c5bd8639f946
caps.latest.revision: 13
ms.author: "genemi"
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
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# setCursorName Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the SQL cursor name to the given String, which will be used by subsequent execute methods.  
  
> [!NOTE]  
>  This method is not currently supported by the Microsoft JDBC Driver for SQL Server. Calling this method has no effect.  
  
## Syntax  
  
```  
  
public final void setCursorName(java.lang.String name)  
```  
  
#### Parameters  
 *name*  
  
 A **String** that contains the cursor name.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setCursorName method is specified by the setCursorName method in the java.sql.Statement interface.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  