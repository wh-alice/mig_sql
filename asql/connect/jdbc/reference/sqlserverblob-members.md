---
title: "SQLServerBlob Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 90e48555-ea83-4a90-80a3-51bc685015ec
caps.latest.revision: 13
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
# SQLServerBlob Members
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  The following tables list the members that are exposed by the [SQLServerBlob](../../../connect/jdbc/reference/sqlserverblob-class.md) class.  
  
## Constructors  
  
|Name|Description|  
|----------|-----------------|  
|[SQLServerBlob](../../../connect/jdbc/reference/sqlserverblob-constructor--sqlserverconnection--byte-.md)|Initializes a new instance of the SQLServerBlob class.|  
  
## Fields  
 None.  
  
## Inherited Fields  
 None.  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[free](../../../connect/jdbc/reference/free-method--sqlserverblob-.md)|This method frees the BLOB object and releases the resources that it holds.|  
|[getBinaryStream](../../../connect/jdbc/reference/getbinarystream-method--sqlserverblob-.md)|Returns an input stream to read data from the BLOB.|  
|[getBytes](../../../connect/jdbc/reference/getbytes-method--sqlserverblob-.md)|Gets the BLOB data as an array of bytes.|  
|[length](../../../connect/jdbc/reference/length-method--sqlserverblob-.md)|Returns the number of bytes in the BLOB object.|  
|[position](../../../connect/jdbc/reference/position-method--sqlserverblob-.md)|Returns the position of a specified pattern in the BLOB based on the given pattern and the starting index.|  
|[setBinaryStream](../../../connect/jdbc/reference/setbinarystream-method--sqlserverblob-.md)|Retrieves a stream that can be used to write to the BLOB value.|  
|[setBytes](../../../connect/jdbc/reference/setbytes-method--sqlserverblob-.md)|Writes the given array of bytes into the BLOB starting at the given position, and then returns the number of bytes written.|  
|[truncate](../../../connect/jdbc/reference/truncate-method--sqlserverblob-.md)|Truncates a BLOB given the length.|  
  
## Inherited Methods  
  
|Class inherited from:|Methods|  
|---------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
  
## See Also  
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  