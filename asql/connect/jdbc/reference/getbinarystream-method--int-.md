---
title: "getBinaryStream Method (int) | Microsoft Docs"
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
  - "SQLServerResultSet.getBinaryStream (int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: de22a6c4-1ba3-4ed0-91a2-bf235c2ceec3
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
# getBinaryStream Method (int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated column index in the current row of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as a binary stream of uninterpreted bytes.  
  
## Syntax  
  
```  
  
public java.io.InputStream getBinaryStream(int columnIndex)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
## Return Value  
 An InputStream object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getBinaryStream method is specified by the getBinaryStream method in the java.sql.ResultSet interface.  
  
 This method can be used only with SQL Server data types of binary, varbinary, varbinary(max), and image. Trying to use it with other data types will cause an exception to be thrown.  
  
 After this method gets the value as a stream, the value can then be read in chunks from the stream. This method is particularly suitable for retrieving large LONGVARBINARY values.  
  
> [!NOTE]  
>  All the data in the returned stream must be read before getting the value of any other column. The next call to a getter method implicitly closes the stream. Also, a stream can return 0 when the method InputStream.available is called, whether there is data available or not.  
  
## See Also  
 [getBinaryStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getbinarystream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  