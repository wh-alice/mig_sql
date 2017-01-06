---
title: "SQLServerNClob Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: b063f191-175e-4430-aab7-d88907f4ebec
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
# SQLServerNClob Members
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  The following tables list the members exposed by the [SQLServerNClob](../../../connect/jdbc/reference/sqlservernclob-class.md) class.  
  
## Constructors  
 None.  
  
## Fields  
 None.  
  
## Inherited Fields  
 None.  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[free](../../../connect/jdbc/reference/free-method--sqlservernclob-.md)|This method frees the **NCLOB** object and releases the resources that it holds.|  
|[getAsciiStream](../../../connect/jdbc/reference/getasciistream-method--sqlservernclob-.md)|Retrieves the **NCLOB** value designated by the **java.sql.NClob** object as an ASCII stream.|  
|[getCharacterStream](../../../connect/jdbc/reference/getcharacterstream-method--sqlservernclob-.md)|Retrieves the **NCLOB** value designated by the **java.sql.NClob** object.|  
|[getSubString](../../../connect/jdbc/reference/getsubstring-method--sqlservernclob-.md)|Retrieves a copy of the specified substring in the **NCLOB** value designated by the **java.sql.NClob** object.|  
|[length](../../../connect/jdbc/reference/length-method--sqlservernclob-.md)|Retrieves the number of characters in the **NCLOB** value designated by the **java.sql.NClob** object.|  
|[position](../../../connect/jdbc/reference/position-method--sqlservernclob-.md)|Retrieves the character position of the specified **java.sql.NClob** object or substring in the **java.sql.NClob** based on the specified starting position.|  
|[setAsciiStream](../../../connect/jdbc/reference/setasciistream-method--sqlservernclob-.md)|Retrieves a stream to be used to write ASCII characters to the **NCLOB** value that this **java.sql.NClob** object represents, starting at the specified position.|  
|[setCharacterStream](../../../connect/jdbc/reference/setcharacterstream-method--sqlservernclob-.md)|Retrieves a stream to be used to write a stream of Unicode characters to the **NCLOB** value that this **java.sql.NClob** object represents, starting at the specified position.|  
|[setString](../../../connect/jdbc/reference/setstring-method--sqlservernclob-.md)|Writes the specified **String** to the **NCLOB** starting at the specified position.|  
|[truncate](../../../connect/jdbc/reference/truncate-method--sqlservernclob-.md)|Truncates the **NCLOB** value to the specified length.|  
  
## Inherited Methods  
  
|Class inherited from|Methods|  
|--------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
|java.sql.Clob|free, getAsciiStream, getCharacterStream, getSubString, length, position, setAsciiStream, setCharacterStream, setString, truncate|  
  
## See Also  
 [SQLServerClob Class](../../../connect/jdbc/reference/sqlserverclob-class.md)  
  
  