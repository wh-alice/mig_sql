---
title: "getTrustStore Method (SQLServerDataSource) | Microsoft Docs"
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
  - "getTrustStore Method (SQLServerDataSource)"
apilocation: 
  - "getTrustStore Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: 8f5850e4-8627-49a8-ba0e-b1f4014322a5
caps.latest.revision: 12
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
# getTrustStore Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the path (including file name) to the certificate trustStore file.  
  
## Syntax  
  
```  
  
public java.lang.String getTrustStore()  
```  
  
## Return Value  
 A **String** that contains the path (including file name) to the certificate trustStore file, or null if no value is set.  
  
## Remarks  
 If the trustStore property is not set, the [getTrustStore](../../../connect/jdbc/reference/gettruststore-method--sqlserverdatasource-.md) method returns null.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  