---
title: "getUnicodeStream Method (int) | Microsoft Docs"
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
  - "SQLServerResultSet.getUnicodeStream (int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 0de79b65-a25e-4028-9cc2-7ac02340115b
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
# getUnicodeStream Method (int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated column index in the current row of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as a stream of Unicode characters.  
  
> [!NOTE]  
>  This method has been deprecated from the JDBC specification, and calling it will cause a "not implemented" exception to be thrown. Instead, you should use the [getCharacterStream](../../../connect/jdbc/reference/getcharacterstream-method--sqlserverresultset-.md) method.  
  
## Syntax  
  
```  
  
public java.io.InputStream getUnicodeStream(int columnIndex)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
## Return Value  
 An InputStream object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getUnicodeString method is specified by the getUnicodeString method in the java.sql.ResultSet interface.  
  
## See Also  
 [getUnicodeStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getunicodestream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  