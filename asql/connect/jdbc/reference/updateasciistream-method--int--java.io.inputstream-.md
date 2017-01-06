---
title: "updateAsciiStream Method (int, java.io.InputStream) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 1dcc3d4f-ae30-45c0-afad-a531358807af
caps.latest.revision: 18
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
# updateAsciiStream Method (int, java.io.InputStream)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Updates the designated column with an ASCII stream value.  
  
## Syntax  
  
```  
  
public void updateAsciiStream(int columnIndex,  
                              java.io.InputStream x)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
 *x*  
  
 An InputStream object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateAsciiStream method is specified by the updateAsciiStream method in the java.sql.ResultSet interface.  
  
 This method passes ASCII characters (bytes) from an InputStream object to convertible character columns, which are the ASCII range [0x00 – 0x7F] of Unicode, and 874, 932, 936, 949, 950, and 1250 through 1258 code pages. This method performs a conversion to the destination collation page. Trying to update an unconvertible destination column will cause an exception to be thrown. For binary columns, raw bytes are passed.  
  
 Using this method for the **image**, **text**, and **ntext**SQL Server data types might impact performance.  
  
## See Also  
 [updateAsciiStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updateasciistream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  