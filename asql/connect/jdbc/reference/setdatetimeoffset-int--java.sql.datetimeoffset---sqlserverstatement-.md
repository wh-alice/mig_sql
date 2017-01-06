---
title: "setDateTimeOffset(int, java.sql.DateTimeOffset) (SQLServerStatement) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e8b6e380-6b53-489b-be73-73fcb5258269
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
# setDateTimeOffset(int, java.sql.DateTimeOffset) (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the given DateTimeOffset value.  
  
## Syntax  
  
```  
  
public void setDateTimeOffset(int parameterIndex, DateTimeOffset dateTime)  
```  
  
#### Parameters  
 *parameterIndex*  
  
 Index of the column to set.  
  
 *dateTimeOffset*  
  
 A DateTimeOffset object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 The DateTimeOffset format is "YYYY-MM-DD HH-MM-SS[.nnnnnnn] [+][-] HH:MM". Use the following table for reference.  
  
|SQL Type|Insert|  
|--------------|------------|  
|datetime|May only insert: "YYYY-MM-DD hh:mm:ss[.nnn]"|  
|smalldatetime|May only insert: "YYYY-MM-DD hh:mm:ss"|  
|Time|May only insert: "hh:mm:ss[.nnnnnnn]"|  
|Date|May only insert: "YYYY-MM-DD"|  
|DateTime2|May only insert: "YYYY-MM-DD hh:mm:ss[.nnnnnnn]"|  
  
## See Also  
 [getDateTimeOffset &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getdatetimeoffset--sqlserverresultset-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  