---
title: "Replication Distribution Agent | Microsoft Docs"
ms.custom: ""
ms.date: "2016-02-23"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Distribution Agent, executables"
  - "agents [SQL Server replication], Distribution Agent"
  - "Distribution Agent, parameter reference"
  - "command prompt [SQL Server replication]"
ms.assetid: 7b4fd480-9eaf-40dd-9a07-77301e44e2ac
caps.latest.revision: 64
ms.author: "rickbyh"
manager: "jhubbard"
---
# Replication Distribution Agent
  The Replication Distribution Agent is an executable that moves the snapshot (for snapshot replication and transactional replication) and the transactions held in the distribution database tables (for transactional replication) to the destination tables at the Subscribers.  
  
> [!NOTE]  
>  Parameters can be specified in any order. When optional parameters are not specified, values from predefined registry settings on the local computer are used.  
  
## Syntax  
  
```  
  
distrib [-?]  
-Publisher server_name[\instance_name]  
-PublisherDB publisher_database  
-Subscriber server_name[\instance_name]  
-SubscriberDB subscriber_database   
[-AltSnapshotFolder alt_snapshot_folder_path]   
[-BcpBatchSize bcp_batch_size]  
[-CommitBatchSize commit_batch_size]  
[-CommitBatchThreshold commit_batch_threshold]  
[-Continuous]  
[-DefinitionFile def_path_and_file_name]  
[-Distributor distributor]  
[-DistributorLogin distributor_login]  
[-DistributorPassword distributor_password]  
[-DistributorSecurityMode [0|1]]  
[-EncryptionLevel [0|1|2]]  
[-ErrorFile error_path_and_file_name]  
[-ExtendedEventConfigFile configuration_path_and_file_name]  
[-FileTransferType [0|1]]  
[-FtpAddress ftp_address]  
[-FtpPassword ftp_password]   
[-FtpPort ftp_port]  
[-FtpUserName ftp_user_name]  
[-HistoryVerboseLevel [0|1|2|3]]  
[-Hostname host_name]  
[-KeepAliveMessageInterval keep_alive_message_interval_seconds]  
[-LoginTimeOut login_time_out_seconds]  
[-MaxBcpThreads]  
[-MaxDeliveredTransactions number_of_transactions]  
[-MessageInterval message_interval]  
[-OledbStreamThreshold oledb_stream_threshold]  
[-Output output_path_and_file_name]  
[-OutputVerboseLevel [0|1|2]]  
[-PacketSize packet_size]  
[-PollingInterval polling_interval]  
[-ProfileName profile_name]  
[-Publication publication]  
[-QueryTimeOut query_time_out_seconds]  
[-QuotedIdentifier quoted_identifier]  
[-SkipErrors native_error_id [:...n]]  
[-SubscriberDatabasePath subscriber_path]  
[-SubscriberLogin subscriber_login]  
[-SubscriberPassword subscriber_password]  
[-SubscriberSecurityMode [0|1]]  
[-SubscriberType [0|1|3]]  
[-SubscriptionStreams [1|2|...64]]  
[-SubscriptionTableName subscription_table]  
[-SubscriptionType [0|1|2]]  
[-TransactionsPerHistory [0|1|...10000]]  
[-UseDTS]  
[-UseInprocLoader]  
[-UseOledbStreaming]  
```  
  
## Arguments  
 **-?**  
 Prints all available parameters.  
  
 **-Publisher** *server_name*[**\\***i**nstance_name*]  
 Is the name of the Publisher. Specify *server_name* for the default instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] on that server. Specify *server_name***\\***instance_name* for a named instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] on that server.  
  
 **-PublisherDB** *publisher_database*  
 Is the name of the Publisher database.  
  
 **-Subscriber** *server_name*[**\\***instance_name*]  
 Is the name of the Subscriber. Specify *server_name* for the default instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] on that server. Specify *server_name***\\***instance_name* for a named instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] on that server.  
  
 **-SubscriberDB** *subscriber_database*  
 Is the name of the Subscriber database.  
  
 **-AltSnapshotFolder** *alt_snapshot_folder_path*  
 Is the path to the folder that contains the initial snapshot for a subscription.  
  
 **-BcpBatchSize** *bcp_batch_size*  
 Is the number of rows to send in a bulk copy operation. When performing a **bcp in** operation, the batch size is the number of rows to send to the server as one transaction, and also the number of rows that must be sent before the Distribution Agent logs a **bcp** progress message. When performing a **bcp out** operation, a fixed batch size of **1000** is used.  
  
 **-CommitBatchSize** *commit_batch_size*  
 Is the number of transactions to be issued to the Subscriber before a COMMIT statement is issued. The default is 100.  
  
 **-CommitBatchThreshold**  *commit_batch_threshold*  
 Is the number of replication commands to be issued to the Subscriber before a COMMIT statement is issued. The default is 1000.  
  
 **-Continuous**  
 Specifies whether the agent attempts to poll replicated transactions continually. If specified, the agent polls replicated transactions from the source at polling intervals, even if there are no transactions pending.  
  
 **-DefinitionFile** *def_path_and_file_name*  
 Is the path of the agent definition file. An agent definition file contains command prompt arguments for the agent. The content of the file is parsed as an executable file. Use double quotation marks (") to specify argument values containing arbitrary characters.  
  
 **-Distributor** *distributor*  
 Is the Distributor name. For Distributor (push) distribution, the name defaults to the name of the local Distributor.  
  
 **-DistributorLogin** *distributor_login*  
 Is the Distributor login name.  
  
 **-DistributorPassword** *distributor_password*  
 Is the Distributor password.  
  
 **-DistributorSecurityMode** [ **0**| **1**]  
 Specifies the security mode of the Distributor. A value of 0 indicates [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Authentication Mode, and a value of 1 indicates Windows Authentication Mode (default).  
  
 **-EncryptionLevel** [ **0** | **1** | **2** ]  
 Is the level of Secure Sockets Layer (SSL) encryption used by the Distribution Agent when making connections.  
  
|EncryptionLevel value|Description|  
|---------------------------|-----------------|  
|**0**|Specifies that SSL is not used.|  
|**1**|Specifies that SSL is used, but the agent does not verify that the SSL server certificate is signed by a trusted issuer.|  
|**2**|Specifies that SSL is used, and that the certificate is verified.|  
  
 For more information, see [Security Overview &#40;Replication&#41;](../../../relational-databases/replication/security/security-overview-replication.md).  
  
 **-ErrorFile** *error_path_and_file_name*  
 Is the path and file name of the error file generated by the Distribution Agent. This file is generated at any point where failure occurred while applying replication transactions at the Subscriber; errors that occur at the Publisher or Distributor are not logged in this file. This file contains the failed replication transactions and associated error messages. When not specified, the error file is generated in the current directory of the Distribution Agent. The error file name is the name of the Distribution Agent with an .err extension. If the specified file name exists, error messages are appended to the file. This parameter can be a maximum of 256 Unicode characters.  
  
 **-ExtendedEventConfigFile** *configuration_path_and_file_name*  
 Specifies the path and file name for the extended events XML configuration file. The extended events configuration file allows you to configure sessions and enable events for tracking.  
  
 **-FileTransferType** [ **0**| **1**]  
 Specifies the file transfer type. A value of **0** indicates UNC (universal naming convention), and a value of **1** indicates FTP (file transfer protocol).  
  
 **-FtpAddress** *ftp_address*  
 Is the network address of the FTP service for the Distributor. When not specified, **DistributorAddress** is used. If **DistributorAddress** is not specified, **Distributor** is used.  
  
 **-FtpPassword** *ftp_password*  
 Is the user password used to connect to the FTP service.  
  
 **-FtpPort** *ftp_port*  
 Is the port number of the FTP service for the Distributor. When not specified, the default port number for FTP service (21) is used.  
  
 **-FtpUserName**  *ftp_user_name*  
 Is the user name used to connect to the FTP service. When not specified, **anonymous** is used.  
  
 **-HistoryVerboseLevel** [ **0** | **1** | **2** | **3** ]  
 Specifies the amount of history logged during a distribution operation. You can minimize the performance effect of history logging by selecting **1**.  
  
|HistoryVerboseLevel value|Description|  
|-------------------------------|-----------------|  
|**0**|Progress messages are written either to the console or to an output file. History records are not logged in the distribution database.|  
|**1**|Default. Always update a previous history message of the same status (startup, progress, success, and so on). If no previous record with the same status exists, insert a new record.|  
|**2**|Insert new history records unless the record is for such things as idle messages or long-running job messages, in which case update the previous records.|  
|**3**|Always insert new records, unless it is for idle messages.|  
  
 **-Hostname** *host_name*  
 Is the host name used when connecting to the Publisher. This parameter can be a maximum of 128 Unicode characters.  
  
 **-KeepAliveMessageInterval** *keep_alive_message_interval_seconds*  
 Is the number of seconds before the history thread checks if any of the existing connections is waiting for a response from the server. This value can be decreased to avoid having the checkup agent mark the Distribution Agent as suspect when executing a long-running batch. The default is **300** seconds.  
  
 **-LoginTimeOut** *login_time_out_seconds*  
 Is the number of seconds before the login times out. The default is **15** seconds.  
  
 **-MaxBcpThreads** *number_of_threads*  
 Specifies the number of bulk copy operations that can be performed in parallel. The maximum number of threads and ODBC connections that exist simultaneously is the lesser of **MaxBcpThreads** or the number of bulk copy requests that appear in the synchronization transaction in the distribution database. **MaxBcpThreads** must have a value greater than **0** and has no hard-coded upper limit. The default is **2** times the number of processors, up to a maximum value of **8**. When applying a snapshot that was generated at the Publisher using the concurrent snapshot option, one thread is used, regardless of the number you specify for **MaxBcpThreads**.  
  
 **-MaxDeliveredTransactions** *number_of_transactions*  
 Is the maximum number of push or pull transactions applied to Subscribers in one synchronization. A value of **0** indicates that the maximum is an infinite number of transactions. Other values can be used by Subscribers to shorten the duration of a synchronization being pulled from a Publisher.  
  
> [!NOTE]  
>  If -MaxDeliveredTransactions and -Continuous are both specified, the Distribution Agent delivers the specified number of transactions and then stops (even though -Continuous is specified). You must restart the Distribution Agent after the job completes.  
  
 **-MessageInterval**  *message_interval*  
 Is the time interval used for history logging. A history event is logged when one of these parameters is reached:  
  
-   The **TransactionsPerHistory** value is reached after the last history event is logged.  
  
-   The **MessageInterval** value is reached after the last history event is logged.  
  
 If there is no replicated transaction available at the source, the agent reports a no-transaction message to the Distributor. This option specifies how long the agent waits before reporting another no-transaction message. Agents always report a no-transaction message when they detect that there are no transactions available at the source after previously processing replicated transactions. The default is 60 seconds.  
  
 **-OledbStreamThreshold** *oledb_stream_threshold*  
 Specifies the minimum size, in bytes, for binary large object data above which the data will be bound as a stream. You must specify **–UseOledbStreaming** to use this parameter. Values can range from 400 to 1048576 bytes, with a default of 16384 bytes.  
  
 **-Output** *output_path_and_file_name*  
 Is the path of the agent output file. If the file name is not provided, the output is sent to the console. If the specified file name exists, the output is appended to the file.  
  
 **-OutputVerboseLevel** [ **0**| **1**| **2**]  
 Specifies whether the output should be verbose. If the verbose level is **0**, only error messages are printed. If the verbose level is **1**, all the progress report messages are printed. If the verbose level is **2** (default), all error messages and progress report messages are printed, which is useful for debugging.  
  
 **-PacketSize** *packet_size*  
 Is the packet size, in bytes. The default is 4096 (bytes).  
  
 **-PollingInterval** *polling_interval*  
 Is how often, in seconds, the distribution database is queried for replicated transactions. The default is 5 seconds.  
  
 **-ProfileName** *profile_name*  
 Specifies an agent profile to use for agent parameters. If **ProfileName** is NULL, the agent profile is disabled. If **ProfileName** is not specified, the default profile for the agent type is used. For information, see [Replication Agent Profiles](../../../relational-databases/replication/agents/replication-agent-profiles.md).  
  
 **-Publication**  *publication*  
 Is the name of the publication. This parameter is only valid if the publication is set to always have a snapshot available for new or reinitialized subscriptions.  
  
 **-QueryTimeOut** *query_time_out_seconds*  
 Is the number of seconds before the query times out. The default is 1800 seconds.  
  
 **-QuotedIdentifier** *quoted_identifier*  
 Specifies the quoted identifier character to use. The first character of the value indicates the value the Distribution Agent uses. If **QuotedIdentifier** is used with no value, the Distribution Agent uses a space. If **QuotedIdentifier** is not used, the Distribution Agent uses whatever quoted identifier the Subscriber supports.  
  
 **-SkipErrors** *native_error_id* [**:***...n*]  
 Is a colon-separated list that specifies the error numbers to be skipped by this agent.  
  
 **-SubscriberDatabasePath** *subscriber_database_path*  
 Is the path to the Jet database (.mdb file) if **SubscriberType** is **2** (allows a connection to a Jet database without an ODBC Data Source Name (DSN)).  
  
 **-SubscriberLogin** *subscriber_login*  
 Is the Subscriber login name. If **SubscriberSecurityMode** is **0** (for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Authentication), this parameter must be specified.  
  
 **-SubscriberPassword** *subscriber_password*  
 Is the Subscriber password. If **SubscriberSecurityMode** is **0** (for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Authentication), this parameter must be specified.  
  
 **-SubscriberSecurityMode** [ **0**| **1**]  
 Specifies the security mode of the Subscriber. A value of **0** indicates [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Authentication, and a value of **1** indicates Windows Authentication Mode (default).  
  
 **-SubscriberType** [ **0**| **1**| **3**]  
 Specifies the type of Subscriber connection used by the Distribution Agent.  
  
|SubscriberType value|Description|  
|--------------------------|-----------------|  
|**0**|[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]|  
|**1**|ODBC data source|  
|**3**|OLE DB data source|  
  
 **-SubscriptionStreams** [**0**|**1**|**2**|...**64**]  
 Is the number of connections allowed per Distribution Agent to apply batches of changes in parallel to a Subscriber, while maintaining many of the transactional characteristics present when using a single thread. For a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Publisher, a range of values from 1 to 64 is supported. This parameter is only supported when the Publisher and Distributor are running on [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)] or later versions. This parameter is not supported or must be 0 for non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Subscribers or peer-to-peer subscriptions.  
  
> [!NOTE]  
>  If one of the connections fails to execute or commit, all connections will abort the current batch, and the agent will use a single stream to retry the failed batches. Before this retry phase completes, there can be temporary transactional inconsistencies at the Subscriber. After the failed batches are successfully committed, the Subscriber is brought back to a state of transactional consistency.  
  
> [!IMPORTANT]  
>  When you specify a value of 2 or greater for **-SubscriptionStreams**, the order in which transactions are received at the Subscriber may differ from the order in which they were made at the Publisher. If this behavior causes constraint violations during synchronization, you should use the NOT FOR REPLICATION option to disable the enforcement of constraints during synchronization. For more information, see [Control the Behavior of Triggers and Constraints During Synchronization &#40;Replication Transact-SQL Programming&#41;](../../../relational-databases/replication/7c4e0f0e-cadc-4c99-98f4-69799b9b356b.md).  
  
> [!NOTE]  
>  Subscriptionstreams do not work for articles configured to deliver [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)]. To use subscriptionstreams, configure articles to deliver stored procedure calls instead.  
  
 **-SubscriptionTableName** *subscription_table*  
 Is the name of the subscription table generated or used at the given Subscriber. When not specified, the [MSreplication_subscriptions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/msreplication-subscriptions-transact-sql.md) table is used. Use this option for database management systems (DBMS) that do not support long file names.  
  
 **-SubscriptionType** [ **0**| **1**| **2**]  
 Specifies the subscription type for distribution. A value of **0** indicates a push subscription, a value of **1** indicates a pull subscription, and a value of **2** indicates an anonymous subscription.  
  
 **-TransactionsPerHistory** [ **0**| **1**|... **10000**]  
 Specifies the transaction interval for history logging. If the number of committed transactions after the last instance of history logging is greater than this option, a history message is logged. The default is 100. A value of **0** indicates infinite **TransactionsPerHistory**. See the preceding **–MessageInterval**parameter.  
  
 **-UseDTS**  
 Must be specified as a parameter for a publication that allows data transformation.  
  
 **-UseInprocLoader**  
 Improves the performance of the initial snapshot by causing the Distribution Agent to use the BULK INSERT command when applying snapshot files to the Subscriber. This parameter is deprecated because it is not compatible with the XML data type. If you are not replicating XML data, this parameter can be used. This parameter cannot be used with character mode snapshots or non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Subscribers. If you use this parameter, the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] service account at the Subscriber must have read permissions on the directory where the snapshot .bcp data files are located. When this parameter is not used, the agent (for non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Subscribers) or the ODBC driver loaded by the agent (for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Subscribers) reads from the files, so the security context of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] service account is not used.  
  
 **-UseOledbStreaming**  
 When specified, enables the binding of binary large object data as a stream. Use **-OledbStreamThreshold** to specify the size, in bytes, above which a stream will be used. **UseOledbStreaming** is enabled by default. **UseOledbStreaming** writes to the **C:\Program Files\Microsoft SQL Server\\<version\>\COM** folder.  
  
## Remarks  
  
> [!IMPORTANT]  
>  If you have installed [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent to run under a local system account rather than under a domain user account (the default), the service can only access the local computer. If the Distribution Agent that runs under [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent is configured to use Windows Authentication Mode when it logs in to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the Distribution Agent fails. The default setting is [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Authentication. For information on changing security accounts, see [View and Modify Replication Security Settings](../../../relational-databases/replication/security/view-and-modify-replication-security-settings.md).  
  
 To start the Distribution Agent, execute **distrib.exe** from the command prompt. For information, see [Replication Agent Executables Concepts](../../../relational-databases/replication/concepts/replication-agent-executables-concepts.md).  
  
## Change History  
  
|Updated content|  
|---------------------|  
|Added the **-ExtendedEventConfigFile** parameter.|  
  
## See Also  
 [Replication Agent Administration](../../../relational-databases/replication/agents/replication-agent-administration.md)  
  
  