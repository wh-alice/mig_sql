---
title: "updateBinaryStream Method (int, java.io.InputStream, int) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBinaryStream (int, java.io.InputStream, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: c8e55377-aaea-4415-8159-938fab1b2a93
caps.latest.revision: 21
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
# updateBinaryStream Method (int, java.io.InputStream, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a binary stream value, which will have the specified number of bytes.  
  
## Syntax  
  
```  
  
public void updateBinaryStream(int columnIndex,  
                               java.io.InputStream x,  
                               int length)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
 *x*  
  
 An InputStream object.  
  
 *length*  
  
 An **int** that indicates the length of the stream.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateBinaryStream method is specified by the updateBinaryStream method in the java.sql.ResultSet interface.  
  
 This method passes bytes from an InputStream object to selected SQL Server binary columns such as binary, varbinary, varbinary(max), image, xml, and udt. Updating character columns is not supported with this method. To update character columns with an InputStream, use the [updateAsciiStream](../../../connect/jdbc/reference/updateasciistream-method--sqlserverresultset-.md) method.  
  
 If the length of the stream is different than that specified in the *length* parameter, the JDBC driver throws an exception when the row is updated or inserted.  
  
 If the length of the stream is unknown, the *length* parameter may be set to -1 to indicate that the driver should accept the stream regardless of its length. With sqljdbc4.jar, we recommend that you use the JDBC 4.0 method [updateBinaryStream Method &#40;int, java.io.InputStream&#41;](../../../connect/jdbc/reference/updatebinarystream-method--int--java.io.inputstream-.md) when the application wants to update the column from a stream whose length is unknown.  
  
## See Also  
 [updateBinaryStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatebinarystream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  