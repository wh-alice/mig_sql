---
title: "getParameterCount Method (SQLServerParameterMetaData) | Microsoft Docs"
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
  - "SQLServerParameterMetaData.getParameterCount"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 7dbbdacb-74ef-42e7-9bdc-a3229505dad8
caps.latest.revision: 7
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
# getParameterCount Method (SQLServerParameterMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the number of parameters in the [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object for which this [SQLServerParameterMetaData](../../../connect/jdbc/reference/sqlserverparametermetadata-class.md) object contains information.  
  
## Syntax  
  
```  
  
public int getParameterCount()  
```  
  
## Return Value  
 An **int** that indicates the number of parameters.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getParameterCount method is specified by the getParameterCount method in the java.sql.ParameterMetaData interface.  
  
## See Also  
 [SQLServerParameterMetaData Methods](../../../connect/jdbc/reference/sqlserverparametermetadata-methods.md)   
 [SQLServerParameterMetaData Members](../../../connect/jdbc/reference/sqlserverparametermetadata-members.md)   
 [SQLServerParameterMetaData Class](../../../connect/jdbc/reference/sqlserverparametermetadata-class.md)  
  
  