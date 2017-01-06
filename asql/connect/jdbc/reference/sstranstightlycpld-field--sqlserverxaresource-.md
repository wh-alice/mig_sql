---
title: "SSTRANSTIGHTLYCPLD Field (SQLServerXAResource) | Microsoft Docs"
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
  - "SSTRANSTIGHTLYCPLD Field (SQLServerXAResource)"
apilocation: 
  - "SSTRANSTIGHTLYCPLD Field (SQLServerXAResource)"
apitype: "Assembly"
ms.assetid: 379857c3-9de1-4964-8782-32df317cbfbb
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
# SSTRANSTIGHTLYCPLD Field (SQLServerXAResource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Used to allow the tightly coupled XA transactions, which have different XA branch transaction IDs (XIDs) but have the same global transaction ID (GTRID).  
  
## Syntax  
  
```  
  
public static final int SSTRANSTIGHTLYCPLD  
```  
  
## Field Value  
 An **int** value of 32768.  
  
## Remarks  
 Each transaction is identified by an XA branch transaction ID (XID) and a global transaction ID (GTRID). In order to allow the applications to use tightly coupled XA transactions that have different XIDs but have the same GTRID, you must set the [SSTRANSTIGHTLYCPLD](../../../connect/jdbc/reference/sstranstightlycpld-field--sqlserverxaresource-.md) on the flags parameter of the XAResource.start method. For more information about how to use this flag, see [Understanding XA Transactions](../../../connect/jdbc/understanding-xa-transactions.md).  
  
## See Also  
 [SQLServerXAResource Fields](../../../connect/jdbc/reference/sqlserverxaresource-fields.md)   
 [SQLServerXAResource Members](../../../connect/jdbc/reference/sqlserverxaresource-members.md)   
 [SQLServerXAResource Class](../../../connect/jdbc/reference/sqlserverxaresource-class.md)  
  
  