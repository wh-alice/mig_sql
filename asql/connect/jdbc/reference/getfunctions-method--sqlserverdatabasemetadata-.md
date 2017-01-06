---
title: "getFunctions Method (SQLServerDatabaseMetaData) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 44335cbd-c84d-4ef3-a6a1-fca7eb7ec768
caps.latest.revision: 20
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
# getFunctions Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves a description of the system and user functions.  
  
## Syntax  
  
```  
  
public ResultSet getFunctions(java.lang.String catalog,  
                       java.lang.String schemaPattern,  
                       java.lang.String functionNamePattern)  
```  
  
#### Parameters  
 *catalog*  
  
 The name of a catalog in the database. If it is an empty string "", the result includes the functions without a catalog. If it is **null**, the catalog name is not used for search.  
  
 *schemaPattern*  
  
 The name of a schema. If it is an empty string "", the result includes the functions without a schema. If it is **null**, the schema name is not used for search.  
  
 *functionNamePattern*  
  
 The name of a function.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getFunctions method is specified by the getFunctions method in the java.sql.DatabaseMetaData interface.  
  
 This method returns only the system and user functions that match the specified schema and function name.  
  
> [!IMPORTANT]  
>  The returned result set can contain functions that the calling user does not have permissions to execute.  
  
 Each function description includes the following columns:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|FUNCTION_CAT|**String**|The name of the database in which the function resides.|  
|FUNCTION_SCHEM|**String**|The name of the schema in which the function resides.|  
|FUNCTION_NAME|**String**|The name of the function.|  
|NUM_INPUT_PARAMS|**int**|Reserved for future use, currently returns a -1 value.|  
|NUM_OUTPUT_PARAMS|**int**|Reserved for future use, currently returns a -1 value.|  
|NUM_RESULT_SETS|**int**|Reserved for future use, currently returns a -1 value.|  
|REMARKS|**String**|The comments about the function.|  
|FUNCTION_TYPE|**short**|The type of the function. It can be one of the following values:<br /><br /> SQL_PT_UNKNOWN (0)<br /><br /> SQL_PT_PROCEDURE (1)<br /><br /> SQL_PT_FUNCTION (2)|  
  
 All the descriptions in the returned result set are ordered by FUNCTION_CAT, FUNCTION_SCHEM, FUNCTION_NAME, and SPECIFIC_NAME.  
  
## See Also  
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  