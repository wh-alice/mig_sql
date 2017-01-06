---
title: "updateBinaryStream Method (int, java.io.InputStream) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 1db3a975-c108-45d1-8c0d-14a094f391bd
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
# updateBinaryStream Method (int, java.io.InputStream)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a binary stream value.  
  
## Syntax  
  
```  
  
public void updateBinaryStream(int columnIndex,  
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
 This updateBinaryStream method is specified by the updateBinaryStream method in the java.sql.ResultSet interface.  
  
 Using this method for the **image**, **text**, and **ntext**SQL Server data types might impact the performance.  
  
 This method passes bytes from an InputStream object to selected SQL Server binary columns such as binary, varbinary, varbinary(max), image, xml, and udt. Updating character columns is not supported with this method. To update character columns with an InputStream, use the [updateAsciiStream](../../../connect/jdbc/reference/updateasciistream-method--sqlserverresultset-.md) method.  
  
## See Also  
 [updateBinaryStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatebinarystream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  