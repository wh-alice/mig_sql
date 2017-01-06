---
title: "SQLServerClob Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apitype: "Assembly"
ms.assetid: 7db785ca-edd5-4833-8053-17fdbf87279a
caps.latest.revision: 15
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
# SQLServerClob Members
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  The following tables list the members exposed by the [SQLServerClob](../../../connect/jdbc/reference/sqlserverclob-class.md) class.  
  
## Constructors  
  
|Name|Description|  
|----------|-----------------|  
|[SQLServerClob](../../../connect/jdbc/reference/sqlserverclob-constructor--sqlserverconnection--java.lang.string-.md)|Initializes a new instance of the SQLServerClob class.|  
  
## Fields  
 None.  
  
## Inherited Fields  
 None.  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[free](../../../connect/jdbc/reference/free-method--sqlserverclob-.md)|This method frees the CLOB object and releases the resources that it holds.|  
|[getAsciiStream](../../../connect/jdbc/reference/getasciistream-method--sqlserverclob-.md)|Materializes the Clob as an ASCII stream.|  
|[getCharacterStream](../../../connect/jdbc/reference/getcharacterstream-method--sqlserverclob-.md)|Returns the Clob data as a java.io.Reader object or as a stream of characters.|  
|[getSubString](../../../connect/jdbc/reference/getsubstring-method--sqlserverclob-.md)|Returns a copy of the specified substring in the Clob based on the specified starting position and number of characters to copy.|  
|[length](../../../connect/jdbc/reference/length-method--sqlserverclob-.md)|Returns the number of characters in the Clob.|  
|[position](../../../connect/jdbc/reference/position-method--sqlserverclob-.md)|Returns the character position of the specified Clob object or substring in the Clob based on the specified starting position.|  
|[setAsciiStream](../../../connect/jdbc/reference/setasciistream-method--sqlserverclob-.md)|Returns a stream to be used to write ASCII characters to the Clob starting at the specified position.|  
|[setCharacterStream](../../../connect/jdbc/reference/setcharacterstream-method--sqlserverclob-.md)|Returns a stream to be used to write a stream of Unicode characters to the Clob starting at the specified position.|  
|[setString](../../../connect/jdbc/reference/setstring-method--sqlserverclob-.md)|Writes the given string to the Clob starting at the specified position.|  
|[truncate](../../../connect/jdbc/reference/truncate-method--sqlserverclob-.md)|Truncates the Clob to the specified length.|  
  
## Inherited Methods  
  
|Class inherited from|Methods|  
|--------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
  
## See Also  
 [SQLServerClob Class](../../../connect/jdbc/reference/sqlserverclob-class.md)  
  
  