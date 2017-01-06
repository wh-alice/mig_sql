---
title: "getSchemas Method (String, String) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 672171ac-976f-4605-9bee-2a5e141d92cb
caps.latest.revision: 17
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
# getSchemas Method (String, String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the schema names that are available in the current database by using the specified catalog name and the schema name.  
  
## Syntax  
  
```  
  
public ResultSet getSchemas(java.lang.String catalog,  
                       java.lang.String schemaPattern)  
```  
  
#### Parameters  
 *catalog*  
  
 The name of a catalog in the database. If it is an empty string "", the result includes the schemas without a catalog. If it is **null**, the catalog name is not used for search.  
  
 *schemaPattern*  
  
 The name of a schema. If it is **null**, the schema name is not used for search.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getSchemas method is specified by the getSchemas method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getSchemas method contains the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|TABLE_SCHEM|**String**|The name of the schema.|  
|TABLE_CATALOG|**String**|The catalog name for the schema.|  
  
 The results are ordered by TABLE_CATALOG and then TABLE_SCHEM. Each row has TABLE_SCHEM as the first column and TABLE_CATALOG as the second column.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  