---
title: "SQLServerDataSource Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7e749bc5-d765-4864-be2b-7822d4c20c09
caps.latest.revision: 43
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
# SQLServerDataSource Members
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  The following tables list the members exposed by the [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) class.  
  
## Constructors  
  
|Name|Description|  
|----------|-----------------|  
|[SQLServerDataSource ()](../../../connect/jdbc/reference/sqlserverdatasource-constructor---.md)|Initializes a new instance of the [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) class.|  
  
## Fields  
 None.  
  
## Inherited Fields  
 None.  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[getApplicationIntent](../../../connect/jdbc/reference/getapplicationintent-method--sqlserverdatasource-.md)|Returns the value of the **applicationIntent** connection property.|  
|[getApplicationName](../../../connect/jdbc/reference/getapplicationname-method--sqlserverdatasource-.md)|Returns the application name.|  
|[getConnection](../../../connect/jdbc/reference/getconnection-method--sqlserverdatasource-.md)|Tries to establish a connection with the data source that this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object represents.|  
|[getDatabaseName](../../../connect/jdbc/reference/getdatabasename-method--sqlserverdatasource-.md)|Returns the database name.|  
|[getEncrypt](../../../connect/jdbc/reference/getencrypt-method--sqlserverdatasource-.md)|Returns a **Boolean** value indicating whether the encrypt property is enabled.|  
|[getDescription](../../../connect/jdbc/reference/getdescription-method--sqlserverdatasource-.md)|Returns a description of the data source.|  
|[getFailoverPartner](../../../connect/jdbc/reference/getfailoverpartner-method--sqlserverdatasource-.md)|Returns the name of the failover server used in a database mirroring configuration.|  
|[getHostNameInCertificate](../../../connect/jdbc/reference/gethostnameincertificate-method--sqlserverdatasource-.md)|Returns the host name used in validating the SQL Server Secure Sockets Layer (SSL) certificate.|  
|[getInstanceName](../../../connect/jdbc/reference/getinstancename-method--sqlserverdatasource-.md)|Returns the SQL Server instance name.|  
|[getLastUpdateCount](../../../connect/jdbc/reference/getlastupdatecount-method--sqlserverdatasource-.md)|Returns a **boolean** value indicating whether the lastUpdateCount property is enabled.|  
|[getLockTimeout](../../../connect/jdbc/reference/getlocktimeout-method--sqlserverdatasource-.md)|Returns an **int** value indicating the number of milliseconds the database waits before reporting a lock time out.|  
|[getLoginTimeout](../../../connect/jdbc/reference/getlogintimeout-method--sqlserverdatasource-.md)|Returns the number of seconds this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object waits while trying to make a connection.|  
|[getLogWriter](../../../connect/jdbc/reference/getlogwriter-method--sqlserverdatasource-.md)|Returns a character output stream to be used for all logging and tracing messages.|  
|[getMultiSubnetFailover](../../../connect/jdbc/reference/getmultisubnetfailover-method--sqlserverdatasource-.md)|Returns the value of the **multiSubnetFailover** connection property.|  
|[getPacketSize](../../../connect/jdbc/reference/getpacketsize-method--sqlserverdatasource-.md)|Returns the current network packet size used to communicate with SQL Server, specified in bytes.|  
|[getPortNumber](../../../connect/jdbc/reference/getportnumber-method--sqlserverdatasource-.md)|Returns the current port number used to communicate with SQL Server.|  
|[getReference](../../../connect/jdbc/reference/getreference-method--sqlserverdatasource-.md)|Returns a reference to this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.|  
|[getResponseBuffering](../../../connect/jdbc/reference/getresponsebuffering-method--sqlserverdatasource-.md)|Returns the response buffering mode for this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.|  
|[getSelectMethod](../../../connect/jdbc/reference/getselectmethod-method--sqlserverdatasource-.md)|Returns the default cursor type used for all result sets created by using this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.|  
|[getSendStringParametersAsUnicode](../../../connect/jdbc/reference/getsendstringparametersasunicode-method--sqlserverdatasource-.md)|Returns a **Boolean** value indicating whether sending string parameters to the server in UNICODE format is enabled.|  
|[getSendTimeAsDatetime](../../../connect/jdbc/reference/getsendtimeasdatetime-method--sqlserverdatasource-.md)|Returns the setting of the **SendTimeAsDatetime** connection property.|  
|[getServerName](../../../connect/jdbc/reference/getservername-method--sqlserverdatasource-.md)|Returns the name of the computer running SQL Server.|  
|[getTrustServerCertificate](../../../connect/jdbc/reference/gettrustservercertificate-method--sqlserverdatasource-.md)|Returns a **Boolean** value indicating whether the trustServerCertificate property is enabled.|  
|[getTrustStore](../../../connect/jdbc/reference/gettruststore-method--sqlserverdatasource-.md)|Returns the path (including file name) to the certificate trustStore file.|  
|[getURL](../../../connect/jdbc/reference/geturl-method--sqlserverdatasource-.md)|Returns the URL used to connect to the data source.|  
|[getUser](../../../connect/jdbc/reference/getuser-method--sqlserverdatasource-.md)|Returns the user name used to connect the data source.|  
|[getUseSQLServerBaseDate](../../../connect/jdbc/reference/getsendtimeasdatetime-method--sqlserverdatasource-.md)|Returns the setting of the useSQLServerBaseDate connection property.|  
|[getWorkstationID](../../../connect/jdbc/reference/getworkstationid-method--sqlserverdatasource-.md)|Returns the name of the client computer name used to connect to the data source.|  
|[getXopenStates](../../../connect/jdbc/reference/getxopenstates-method--sqlserverdatasource-.md)|Returns a **Boolean** value indicating whether converting SQL states to XOPEN compliant states is enabled.|  
|[isWrapperFor](../../../connect/jdbc/reference/iswrapperfor-method--sqlserverdatasource-.md)|Indicates whether this data source object is a wrapper for the specified interface.|  
|[setApplicationIntent](../../../connect/jdbc/reference/setapplicationintent-method--sqlserverdatasource-.md)|Sets the value of the **applicationIntent** connection property.|  
|[setApplicationName](../../../connect/jdbc/reference/setapplicationname-method--sqlserverdatasource-.md)|Sets the application name.|  
|[setAuthenticationScheme](../../../connect/jdbc/reference/setauthenticationscheme--sqlserverdatasource-.md)|Indicates the kind of integrated security you want your application to use.|  
|[setDatabaseName](../../../connect/jdbc/reference/setdatabasename-method--sqlserverdatasource-.md)|Sets the database name to connect to.|  
|[setDescription](../../../connect/jdbc/reference/setdescription-method--sqlserverdatasource-.md)|Sets the description of the data source.|  
|[setEncrypt](../../../connect/jdbc/reference/setencrypt-method--sqlserverdatasource-.md)|Sets a **Boolean** value indicating whether the encrypt property is enabled.|  
|[setFailoverPartner](../../../connect/jdbc/reference/setfailoverpartner-method--sqlserverdatasource-.md)|Sets the name of the failover server used in a database mirroring configuration.|  
|[setHostNameInCertificate](../../../connect/jdbc/reference/sethostnameincertificate-method--sqlserverdatasource-.md)|Sets the host name to be used in validating the SQL Server Secure Sockets Layer (SSL) certificate.|  
|[setInstanceName](../../../connect/jdbc/reference/setinstancename-method--sqlserverdatasource-.md)|Sets the SQL Server instance name.|  
|[setIntegratedSecurity](../../../connect/jdbc/reference/setintegratedsecurity-method--sqlserverdatasource-.md)|Sets a **Boolean** value indicating whether the integratedSecurity property is enabled.|  
|[setLastUpdateCount](../../../connect/jdbc/reference/setlastupdatecount-method--sqlserverdatasource-.md)|Sets a **Boolean** value indicating whether the lastUpdateCount property is enabled.|  
|[setLockTimeout](../../../connect/jdbc/reference/setlocktimeout-method--sqlserverdatasource-.md)|Sets an **int** value indicating the number of milliseconds to wait before the database reports a lock time out.|  
|[setLoginTimeout](../../../connect/jdbc/reference/setlogintimeout-method--sqlserverdatasource-.md)|Sets the number of seconds that this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object waits while trying to make a connection.|  
|[setLogWriter](../../../connect/jdbc/reference/setlogwriter-method--sqlserverdatasource-.md)|Sets a character output stream to be used for all logging and tracing messages.|  
|[setMultiSubnetFailover](../../../connect/jdbc/reference/setmultisubnetfailover-method--sqlserverdatasource-.md)|Sets the value of the **multiSubnetFailover** connection property.|  
|[setPacketSize](../../../connect/jdbc/reference/setpacketsize-method--sqlserverdatasource-.md)|Sets the current network packet size used to communicate with SQL Server, specified in bytes.|  
|[setPassword](../../../connect/jdbc/reference/setpassword-method--sqlserverdatasource-.md)|Sets the password used to connect to SQL Server.|  
|[setPortNumber](../../../connect/jdbc/reference/setportnumber-method--sqlserverdatasource-.md)|Sets the port number used to communicate with SQL Server.|  
|[setResponseBuffering](../../../connect/jdbc/reference/setresponsebuffering-method--sqlserverdatasource-.md)|Sets the response buffering mode for connections created by using this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.|  
|[setSelectMethod](../../../connect/jdbc/reference/setselectmethod-method--sqlserverdatasource-.md)|Sets the default cursor type used for all result sets created by using this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.|  
|[setSendStringParametersAsUnicode](../../../connect/jdbc/reference/setsendstringparametersasunicode-method--sqlserverdatasource-.md)|Sets a **Boolean** value indicating whether sending string parameters to the server in UNICODE format is enabled.|  
|[setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md)|Specifies how to send java.sql.Time values to the server.|  
|[setServerName](../../../connect/jdbc/reference/setservername-method--sqlserverdatasource-.md)|Sets the name of the computer running SQL Server.|  
|[setTrustServerCertificate](../../../connect/jdbc/reference/settrustservercertificate-method--sqlserverdatasource-.md)|Sets a **Boolean** value indicating whether the trustServerCertificate property is enabled.|  
|[setTrustStore](../../../connect/jdbc/reference/settruststore-method--sqlserverdatasource-.md)|Sets the path (including file name) to the certificate trustStore file.|  
|[setTrustStorePassword](../../../connect/jdbc/reference/settruststorepassword-method--sqlserverdatasource-.md)|Sets the password that is used to check the integrity of the trustStore data.|  
|[setURL](../../../connect/jdbc/reference/seturl-method--sqlserverdatasource-.md)|Sets the URL used to connect to the data source.|  
|[setUser](../../../connect/jdbc/reference/setuser-method--sqlserverdatasource-.md)|Sets the user name used to connect the data source.|  
|[setWorkstationID](../../../connect/jdbc/reference/setworkstationid-method--sqlserverdatasource-.md)|Sets the name of the client computer used to connect to the data source.|  
|[setXopenStates](../../../connect/jdbc/reference/setxopenstates-method--sqlserverdatasource-.md)|Sets a **Boolean** value indicating whether converting SQL states to XOPEN compliant states is enabled.|  
|[unwrap](../../../connect/jdbc/reference/unwrap-method--sqlserverdatasource-.md)|Returns an object that implements the specified interface to allow access to the Microsoft JDBC Driver for SQL Server-specific methods.|  
  
## Inherited Methods  
  
|Class inherited from:|Methods|  
|---------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
|java.sql.Wrapper|isWrapperFor, unwrap|  
  
## See Also  
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  