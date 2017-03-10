---
title: "Broker:Message Drop Event Class | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Broker:Message Drop event class"
ms.assetid: f532b7c9-ca34-4bac-8dc3-53f9895fd6af
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# Broker:Message Drop Event Class
  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] generates a **Broker:Message Drop** event when Service Broker is unable to retain a received message that should have been delivered to a service in this instance. For messages that should have been forwarded, see [Broker:Forwarded Message Dropped Event Class](../../relational-databases/event-classes/broker-forwarded-message-dropped-event-class.md).  
  
## Broker:Message Drop Event Class Data Columns  
  
|Data column|Type|Description|Column number|Filterable|  
|-----------------|----------|-----------------|-------------------|----------------|  
|**Application Name**|**nvarchar**|The name of the client application that created the connection to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This column is populated with the values passed by the application rather than the displayed name of the program.|10|Yes|  
|**BigintData1**|**bigint**|The sequence number of the dropped message.|52|No|  
|**BigintData2**|**bigint**|The sequence number of the last message successfully acknowledged.|53|No|  
|**ClientProcessID**|**int**|The ID assigned by the host computer to the process where the client application is running. This data column is populated if the client process ID is provided by the client.|9|Yes|  
|**DatabaseID**|**int**|The ID of the database specified by the USE *database* statement, or the ID of the default database if no USE *database* statement has been issued for a given instance. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] displays the name of the database if the **ServerName** data column is captured in the trace and the server is available. Determine the value for a database by using the DB_ID function.|3|Yes|  
|**Error**|**int**|The message id number in **sys.messages** for the text in the event.|31|No|  
|**EventClass**|**int**|The type of event class captured. Always **160** for **Broker:MessageDrop**.|27|No|  
|**EventSequence**|**int**|Sequence number for this event.|51|No|  
|**EventSubClass**|**nvarchar**|Indicates whether the dropped message was a sequenced message. One of two values:<br /><br /> **Sequenced Message**. The dropped message was a sequenced message.<br /><br /> **Unsequenced Message**. The dropped message was not a sequenced message.|21|Yes|  
|**GUID**|**uniqueidentifier**|The conversation ID of the conversation that the dropped message belongs to. This identifier is transmitted as part of the message, and is shared between both sides of the conversation.|54|No|  
|**HostName**|**nvarchar**|The name of the computer on which the client is running. This data column is populated if the host name is provided by the client. To determine the host name, use the HOST_NAME function.|8|Yes|  
|**IntegerData**|**int**|The fragment number of the dropped message.|25|No|  
|**IntegerData2**|**int**|The message fragment number that the dropped message was acknowledging.|55|No|  
|**IsSystem**|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, 0 = user.|60|No|  
|**LoginName**|**nvarchar**|The name of the login of the user (either [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] security login or the Windows login credentials in the form of DOMAIN\Username).|11|No|  
|**LoginSid**|**image**|The security identification number (SID) of the logged-in user. Each SID is unique for each login in the server.|41|Yes|  
|**NTDomainName**|**nvarchar**|The Windows domain to which the user belongs.|7|Yes|  
|**NTUserName**|**nvarchar**|The name of the user that owns the connection that generated this event.|6|Yes|  
|**ObjectName**|**nvarchar**|The conversation handle of the dialog.|34|No|  
|**RoleName**|**nvarchar**|The role of the conversation handle. This is either **initiator** or **target**.|38|No|  
|**ServerName**|**nvarchar**|The name of the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] being traced.|26|No|  
|**Severity**|**int**|Severity number for the text in the event.|29|No|  
|**SPID**|**int**|The server process ID assigned by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to the process associated with the client.|12|Yes|  
|**StartTime**|**datetime**|The time at which the event started, when available.|14|Yes|  
|**State**|**int**|Indicates the location within the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] source code that produced the event. Each location that may produce this event has a different state code. A Microsoft support engineer can use this state code to find where the event was produced..|30|No|  
|**TextData**|**ntext**|The reason that [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] dropped the message.|1|Yes|  
|**TransactionID**|**bigint**|The system-assigned ID of the transaction.|4|No|  
  
## See Also  
 [SQL Server Service Broker](../../database-engine/configure/windows/sql-server-service-broker.md)  
  
  