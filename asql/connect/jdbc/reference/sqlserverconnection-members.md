---
title: "SQLServerConnection Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3115a533-756b-4c78-aee9-4ba7253c85e0
caps.latest.revision: 25
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
# SQLServerConnection Members
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  The following tables list the members that are exposed by the [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) class.  
  
## Constructors  
 None.  
  
## Fields  
  
|Name|Description|  
|----------|-----------------|  
|[TRANSACTION_SNAPSHOT](../../../connect/jdbc/reference/transaction_snapshot-field--sqlserverconnection-.md)|Used to specify the snapshot transaction isolation level.|  
  
## Inherited Fields  
  
|Class inherited from:|Description|  
|---------------------------|-----------------|  
|java.sql.Connection|TRANSACTION_NONE, TRANSACTION_READ_COMMITTED, TRANSACTION_READ_UNCOMMITTED, TRANSACTION_REPEATABLE_READ, TRANSACTION_SERIALIZABLE|  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[clearWarnings](../../../connect/jdbc/reference/clearwarnings-method--sqlserverconnection-.md)|Clears all warnings reported for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[close](../../../connect/jdbc/reference/close-method--sqlserverconnection-.md)|Releases the database for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object and JDBC resources immediately instead of waiting for them to be automatically released.|  
|[commit](../../../connect/jdbc/reference/commit-method--sqlserverconnection-.md)|Makes all changes made since the previous commit or rollback permanent, and releases any database locks that are currently held by this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[createBlob](../../../connect/jdbc/reference/createblob-method--sqlserverconnection-.md)|Creates a **java.sql.Blob** object without any data.|  
|[createClob](../../../connect/jdbc/reference/createclob-method--sqlserverconnection-.md)|Creates a **java.sql.Clob** object without any data.|  
|[createNClob](../../../connect/jdbc/reference/createnclob-method--sqlserverconnection-.md)|Creates a **java.sql.NClob** object without any data.|  
|[createStatement](../../../connect/jdbc/reference/createstatement-method--sqlserverconnection-.md)|Creates a [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object for sending SQL statements to the database.|  
|[createSQLXML](../../../connect/jdbc/reference/createsqlxml-method--sqlserverconnection-.md)|Creates a **java.sql.SQLXML** object without any data.|  
|[getAutoCommit](../../../connect/jdbc/reference/getautocommit-method--sqlserverconnection-.md)|Retrieves the current auto-commit mode for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[getCatalog](../../../connect/jdbc/reference/getcatalog-method--sqlserverconnection-.md)|Retrieves the current catalog name for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[getClientConnectionID Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/getclientconnectionid-method--sqlserverconnection-.md)|Gets the connection ID of the most recent connection attempt, regardless of whether the attempt succeeded or failed.|  
|[getClientInfo](../../../connect/jdbc/reference/getclientinfo-method--sqlserverconnection-.md)|Retrieves information regarding the client information properties supported by the JDBC driver.|  
|[getHoldability](../../../connect/jdbc/reference/getholdability-method--sqlserverconnection-.md)|Retrieves the current holdability of [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) objects that are created by using this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[getMetaData](../../../connect/jdbc/reference/getmetadata-method--sqlserverconnection-.md)|Retrieves a [SQLServerDatabaseMetaData](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md) object that contains metadata about the database to which this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object represents a connection.|  
|[getTransactionIsolation](../../../connect/jdbc/reference/gettransactionisolation-method--sqlserverconnection-.md)|Retrieves the current transaction isolation level for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[getTypeMap](../../../connect/jdbc/reference/gettypemap-method--sqlserverconnection-.md)|Retrieves the Map object that is associated with this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[getWarnings](../../../connect/jdbc/reference/getwarnings-method--sqlserverconnection-.md)|Retrieves the first warning reported by calls on this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[isClosed](../../../connect/jdbc/reference/isclosed-method--sqlserverconnection-.md)|Indicates whether this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object has been closed.|  
|[isReadOnly](../../../connect/jdbc/reference/isreadonly-method--sqlserverconnection-.md)|Indicates whether this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object is in read-only mode.|  
|[isValid](../../../connect/jdbc/reference/isvalid-method--sqlserverconnection-.md)|Indicates whether this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object has not been closed and is still valid.|  
|[nativeSQL](../../../connect/jdbc/reference/nativesql-method--sqlserverconnection-.md)|Converts the given SQL statement into the native SQL grammar of the database server.|  
|[prepareCall](../../../connect/jdbc/reference/preparecall-method--sqlserverconnection-.md)|Creates a [SQLServerCallableStatement](../../../connect/jdbc/reference/sqlservercallablestatement-class.md) object for calling database stored procedures.|  
|[prepareStatement](../../../connect/jdbc/reference/preparestatement-method--sqlserverconnection-.md)|Creates a [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object for sending parameterized SQL statements to the database.|  
|[releaseSavepoint](../../../connect/jdbc/reference/releasesavepoint-method--sqlserverconnection-.md)|Removes the specified [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object from the current transaction.|  
|[rollback](../../../connect/jdbc/reference/rollback-method--sqlserverconnection-.md)|Undoes all changes made in the current transaction and releases any database locks currently held by this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
|[setAutoCommit](../../../connect/jdbc/reference/setautocommit-method--sqlserverconnection-.md)|Sets the auto-commit mode for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object to the given state.|  
|[setCatalog](../../../connect/jdbc/reference/setcatalog-method--sqlserverconnection-.md)|Sets the specified catalog name to select a subspace of this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object's database in which to work.|  
|[setClientInfo](../../../connect/jdbc/reference/setclientinfo-method--sqlserverconnection-.md)|Sets the value of the client information properties.|  
|[setHoldability](../../../connect/jdbc/reference/setholdability-method--sqlserverconnection-.md)|Changes the holdability of [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) objects that are created by using this [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object to the given holdability.|  
|[setReadOnly](../../../connect/jdbc/reference/setreadonly-method--sqlserverconnection-.md)|Puts this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object in read-only mode as a hint to the JDBC driver to enable database optimizations.|  
|[setSavepoint](../../../connect/jdbc/reference/setsavepoint-method--sqlserverconnection-.md)|Creates an unnamed savepoint in the current transaction and returns the new [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object that represents it.|  
|[setTransactionIsolation](../../../connect/jdbc/reference/settransactionisolation-method--sqlserverconnection-.md)|Tries to change the transaction isolation level for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object to the one given.|  
|[setTypeMap](../../../connect/jdbc/reference/settypemap-method--sqlserverconnection-.md)|Installs the given TypeMap object as the type map for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.|  
  
## Inherited Methods  
  
|Class inherited from:|Methods|  
|---------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
|java.lang.Wrapper|isWrapperFor, unwrap|  
  
## See Also  
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  