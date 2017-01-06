---
title: "updateBytes Method (int, byte) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBytes (int, byte[])"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 625f48ba-53d0-45a6-8fcb-643f1e0cbe8a
caps.latest.revision: 11
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
# updateBytes Method (int, byte)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with an array of **byte** values given the column index.  
  
## Syntax  
  
```  
  
public void updateBytes(int index,  
                        byte[] x)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the column index.  
  
 *x*  
  
 An array of **byte** values.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateBytes method is specified by the updateBytes method in the java.sql.ResultSet interface.  
  
 In a previous version of Microsoft JDBC Driver for SQL Server, you could use SQLServerResultSet.updateBytes to convert values between byte arrays and SQL Server data type **date**, **time**, **datetime2**, or **datetimeoffset**. Now, using this method with those data types will cause an exception indicating that the conversion is not supported.  
  
## See Also  
 [updateBytes Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatebytes-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  