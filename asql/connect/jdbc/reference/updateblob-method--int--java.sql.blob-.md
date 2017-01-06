---
title: "updateBlob Method (int, java.sql.Blob) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBlob (int, java.sql.Blob)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 1e86f588-1365-4011-9412-f0acf7009880
caps.latest.revision: 10
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
# updateBlob Method (int, java.sql.Blob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a java.sql.Blob value.  
  
## Syntax  
  
```  
  
public void updateBlob(int index,  
                       java.sql.Blob x)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the column index.  
  
 *x*  
  
 A Blob object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateBlob method is specified by the updateBlob method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateBlob Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updateblob-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  