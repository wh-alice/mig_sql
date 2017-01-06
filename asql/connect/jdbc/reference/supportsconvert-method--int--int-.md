---
title: "supportsConvert Method (int, int) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.supportsConvert (int, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 54741cfd-32ac-46c5-8b09-fd60fd8833d7
caps.latest.revision: 6
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
# supportsConvert Method (int, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves whether this database supports the CONVERT for two given SQL types.  
  
## Syntax  
  
```  
  
public boolean supportsConvert(int fromType,  
                               int toType)  
```  
  
#### Parameters  
 *fromType*  
  
 The JDBC type to convert from.  
  
 *toType*  
  
 The JDBC type to convert to.  
  
## Return Value  
 **true** if supported. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This supportsConvert method is specified by the supportsConvert method in the java.sql.DatabaseMetaData interface.  
  
## See Also  
 [supportsConvert Method &#40;SQLServerDatabaseMetaData&#41;](../../../connect/jdbc/reference/supportsconvert-method--sqlserverdatabasemetadata-.md)   
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  