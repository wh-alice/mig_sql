---
title: "SQLServerXAResource Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a069bf2c-1b70-4817-b084-a508445de799
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
# SQLServerXAResource Members
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The following tables list the members exposed by the [SQLServerXAResource](../../../connect/jdbc/reference/sqlserverxaresource-class.md) class.  
  
## Constructors  
 None.  
  
## Fields  
  
|Name|Description|  
|----------|-----------------|  
|[SSTRANSTIGHTLYCPLD](../../../connect/jdbc/reference/sstranstightlycpld-field--sqlserverxaresource-.md)|Used to allow the tightly coupled XA transactions, which have different XA branch transaction IDs (XIDs) but have the same global transaction ID (GTRID).|  
  
## Inherited Fields  
  
|Class inherited from:|Methods|  
|---------------------------|-------------|  
|javax.transaction.xa.XAResource|TMENDRSCAN, TMFAIL, TMJOIN, TMNOFLAGS, TMONEPHASE, TMRESUME, TMSTARTRSCAN, TMSUCCESS, TMSUSPEND, XA_OK, XA_RDONLY|  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[commit](../../../connect/jdbc/reference/commit-method--sqlserverxaresource-.md)|Commits the global transaction specified by the given Xid object.|  
|[end](../../../connect/jdbc/reference/end-method--sqlserverxaresource-.md)|Ends the work performed on behalf of a transaction branch.|  
|[forget](../../../connect/jdbc/reference/forget-method--sqlserverxaresource-.md)|Tells the resource manager to forget about a heuristically completed transaction branch.|  
|[getTransactionTimeout](../../../connect/jdbc/reference/gettransactiontimeout-method--sqlserverxaresource-.md)|Obtains the current transaction timeout value set for this [SQLServerXAResource](../../../connect/jdbc/reference/sqlserverxaresource-class.md) object.|  
|[isSameRM](../../../connect/jdbc/reference/issamerm-method--sqlserverxaresource-.md)|Determines if the resource manager instance represented by the target object is the same as the resource manager instance represented by the given XAResource object.|  
|[prepare](../../../connect/jdbc/reference/prepare-method--sqlserverxaresource-.md)|Requests that the resource manager prepare for a transaction commit of the transaction specified by the given Xid object.|  
|[recover](../../../connect/jdbc/reference/recover-method--sqlserverxaresource-.md)|Obtains a list of prepared transaction branches from a resource manager.|  
|[rollback](../../../connect/jdbc/reference/rollback-method--sqlserverxaresource-.md)|Requests that the resource manager roll back work done on behalf of a transaction branch.|  
|[setTransactionTimeout](../../../connect/jdbc/reference/settransactiontimeout-method--sqlserverxaresource-.md)|Sets the current transaction timeout value for this [SQLServerXAResource](../../../connect/jdbc/reference/sqlserverxaresource-class.md) object.|  
|[start](../../../connect/jdbc/reference/start-method--sqlserverxaresource-.md)|Starts work on behalf of a transaction branch specified in the Xid object.|  
  
## Inherited Methods  
  
|Class inherited from:|Methods|  
|---------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
  
## See Also  
 [SQLServerXAResource Class](../../../connect/jdbc/reference/sqlserverxaresource-class.md)  
  
  