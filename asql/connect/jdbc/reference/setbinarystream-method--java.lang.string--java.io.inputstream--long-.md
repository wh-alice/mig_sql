---
title: "setBinaryStream Method (java.lang.String, java.io.InputStream, long) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d59c7327-c9dc-4e4f-9dff-19e1a3c62eb2
caps.latest.revision: 12
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
# setBinaryStream Method (java.lang.String, java.io.InputStream, long)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the specified input stream, which will have the specified number of bytes.  
  
## Syntax  
  
```  
  
public void setBinaryStream(java.lang.String parameterName,  
                            java.io.InputStream x,  
                            long length)  
```  
  
#### Parameters  
 *parameterName*  
  
 A **String** that contains the name of the parameter.  
  
 *x*  
  
 An InputStream object.  
  
 *length*  
  
 A **long** that indicates the length in the number of bytes.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setBinaryStream method is specified by the setBinaryStream method in the java.sql.CallableStatement interface.  
  
 If the length of the stream is different than what is specified in the *length* parameter, the JDBC driver throws an exception when the row is updated or inserted.  
  
 If the length of the stream is unknown, the *length* parameter may be set to -1 to indicate that the driver should accept the stream regardless of its length. With sqljdbc4.jar, we recommend that you use the JDBC 4.0 method [setBinaryStream Method (java.lang.String, java.io.InputStream)](../../../connect/jdbc/reference/setbinarystream-method--java.lang.string--java.io.inputstream-.md) when the application wants to update the column from a stream whose length is unknown.  
  
## See Also  
 [setBinaryStream &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setbinarystream--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)  
  
  