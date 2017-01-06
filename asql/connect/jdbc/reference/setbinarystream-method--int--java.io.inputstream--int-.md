---
title: "setBinaryStream Method (int, java.io.InputStream, int) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.setBinaryStream"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fd6be063-08eb-40cf-9201-5a9f62387726
caps.latest.revision: 16
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
# setBinaryStream Method (int, java.io.InputStream, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the specified input stream, which will have the specified number of bytes.  
  
## Syntax  
  
```  
  
public final void setBinaryStream(int n,  
                                  java.io.InputStream x,  
                                  int length)  
```  
  
#### Parameters  
 *n*  
  
 An **int** that indicates the parameter number.  
  
 *x*  
  
 An InputStream object.  
  
 *length*  
  
 An **int** that indicates the number of bytes.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setBinaryStream method is specified by the setBinaryStream method in the java.sql.PreparedStatement interface.  
  
 If the length of the stream is different from what is specified in the *length* parameter, the JDBC driver throws an exception when the row is updated or inserted.  
  
 If the length of the stream is unknown, the *length* parameter may be set to -1 to indicate that the driver should accept the stream regardless of its length. With sqljdbc4.jar, we recommend that you use the JDBC 4.0 method [setBinaryStream Method &#40;int, java.io.InputStream&#41;](../../../connect/jdbc/reference/setbinarystream-method--int--java.io.inputstream-.md) when the application wants to update the column from a stream whose length is unknown.  
  
## See Also  
 [setBinaryStream Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/setbinarystream-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)  
  
  