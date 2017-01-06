---
title: "getPrecision Method (SQLServerParameterMetaData) | Microsoft Docs"
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
  - "SQLServerParameterMetaData.getPrecision"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 8bd79484-bab6-423b-978f-d7ec7132ebeb
caps.latest.revision: 8
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
# getPrecision Method (SQLServerParameterMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the number of decimal digits of the designated parameter.  
  
## Syntax  
  
```  
  
public int getPrecision(int param)  
```  
  
#### Parameters  
 *param*  
  
 An **int** that indicates parameter index.  
  
## Return Value  
 An **int** that indicates the precision of the designated parameter.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getPrecision method is specified by the getPrecision method in the java.sql.ParameterMetaData interface.  
  
 For number types, this method gets the number of decimal digits. For character types, it gets the maximum length in characters. For binary types, it gets the maximum length in bytes. Where the number of digits is unknown, this method returns "0".  
  
## See Also  
 [SQLServerParameterMetaData Methods](../../../connect/jdbc/reference/sqlserverparametermetadata-methods.md)   
 [SQLServerParameterMetaData Members](../../../connect/jdbc/reference/sqlserverparametermetadata-members.md)   
 [SQLServerParameterMetaData Class](../../../connect/jdbc/reference/sqlserverparametermetadata-class.md)  
  
  