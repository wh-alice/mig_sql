---
title: "commit Method (SQLServerXAResource) | Microsoft Docs"
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
  - "SQLServerXAResource.commit"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 1d0f8612-fb4a-4eca-bc37-8342e1419fd4
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
# commit Method (SQLServerXAResource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Commits the global transaction that is specified by the given Xid object.  
  
## Syntax  
  
```  
  
public void commit(javax.transaction.xa.Xid xid,  
                   boolean onePhase)  
```  
  
#### Parameters  
 *xid*  
  
 An Xid object.  
  
 *onePhase*  
  
 A **boolean** value.  
  
## Exceptions  
 javax.transaction.xa.XAException  
  
## Remarks  
 This commit method is specified by the commit method in the javax.transaction.xa.XAResource interface.  
  
## See Also  
 [SQLServerXAResource Methods](../../../connect/jdbc/reference/sqlserverxaresource-methods.md)   
 [SQLServerXAResource Members](../../../connect/jdbc/reference/sqlserverxaresource-members.md)   
 [SQLServerXAResource Class](../../../connect/jdbc/reference/sqlserverxaresource-class.md)  
  
  