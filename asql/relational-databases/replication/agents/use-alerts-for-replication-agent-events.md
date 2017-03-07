---
title: "Use Alerts for Replication Agent Events | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "viewing alerts"
  - "Queue Reader Agent, alerts"
  - "alerts [SQL Server replication]"
  - "predefined replication alerts [SQL Server replication]"
  - "Log Reader Agent, alerts"
  - "Distribution Agent, alerts"
  - "Merge Agent, alerts"
  - "agents [SQL Server replication], alerts"
  - "displaying alerts"
  - "Snapshot Agent, alerts"
ms.assetid: 8c42e523-7020-471d-8977-a0bd044b9471
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# Use Alerts for Replication Agent Events
  [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] and [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent provide a way to monitor events, such as replication agent events, using alerts. [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent monitors the Windows application log for events that are associated with alerts. If such an event occurs, [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent responds automatically, by executing a task that you have defined and/or sending e-mail or a pager message to a specified operator. [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] includes a set of predefined alerts for replication agents that you can configure to execute a task and/or notify an operator. For more information about defining a task to execute, see the section "Automating a Response to an Alert" in this topic.  
  
 The following alerts are installed when a computer is configured as a Distributor:  
  
|Message ID|Predefined alert|Condition causing the alert to fire|Enters additional information in msdb..sysreplicationalerts|  
|----------------|----------------------|-----------------------------------------|-----------------------------------------------------------------|  
|14150|**Replication: agent success**|Agent shuts down successfully.|Yes|  
|14151|**Replication: agent failure**|Agent shuts down with an error.|Yes|  
|14152|**Replication: agent retry**|Agent shuts down after unsuccessfully retrying an operation (agent encounters an error such as server not available, deadlock, connection failure, or time-out failure).|Yes|  
|14157|**Replication: expired subscription dropped**|Expired subscription was dropped.|No|  
|20572|**Replication: Subscription reinitialized after validation failure**|Response job 'Reinitialize subscriptions on data validation failure' reinitializes a subscription successfully.|No|  
|20574|**Replication: Subscriber has failed data validation**|Distribution or Merge Agent fails data validation.|Yes|  
|20575|**Replication: Subscriber has passed data validation**|Distribution or Merge Agent passes data validation.|Yes|  
|20578|**Replication: agent custom shutdown**|||  
|22815|**Peer-to-peer conflict detection alert**|Distribution Agent detected a conflict when it tries to apply a change at a peer-to-peer node.|Yes|  
  
 In addition to these alerts, Replication Monitor provides a set of warnings and alerts related to status and performance. For more information, see [Set Thresholds and Warnings in Replication Monitor](../../../relational-databases/replication/monitor/set-thresholds-and-warnings-in-replication-monitor.md). You can also define alerts for other replication events using the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] alerts infrastructure. For more information, see [Create a User-Defined Event](../Topic/Create%20a%20User-Defined%20Event.md).  
  
 **To configure predefined replication alerts**  
  
-   [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]: [Configure Predefined Replication Alerts &#40;SQL Server Management Studio&#41;](../../../relational-databases/replication/administration/configure-predefined-replication-alerts-sql-server-management-studio.md)  
  
## Viewing the Application Log Directly  
 To view the Windows application log, use the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Windows Event Viewer. The application log contains [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] error messages as well as messages for many other activities on the computer. Unlike the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] error log, a new application log is not created each time you start [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] (each [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] session writes new events to an existing application log); however, you can specify how long logged events will be retained. When you view the Windows application log, you can filter the log for specific events. For more information, see the Windows documentation.  
  
## Automating a Response to an Alert  
 Replication provides a response job for subscriptions that fail data validation, and also provides a framework for creating additional automated responses to alerts. The response job is titled **Reinitialize subscriptions on data validation failure** and is stored in the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent **Jobs** folder in [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]. For information about enabling this response job, see [Configure Predefined Replication Alerts &#40;SQL Server Management Studio&#41;](../../../relational-databases/replication/administration/configure-predefined-replication-alerts-sql-server-management-studio.md). If articles in a transactional publication fail validation, the response job reinitializes only those articles that failed. If articles in a merge publication fail validation, the response job reinitializes all articles in the publication.  
  
### Framework for Automating Responses  
 Usually, when an alert occurs, the only information you have to help you understand what caused the alert and the appropriate action to take is contained in the alert message itself. Parsing this information can be error-prone and time-consuming. Replication makes automating responses easier by providing additional information about the alert in the **sysreplicationalerts** system table; the information provided is already parsed in a form easily used by customized programs.  
  
 For example, if the data in the **Sales.SalesOrderHeader** table at Subscriber A fails validation, [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] can trigger message 20574, notifying you of that failure. The message you receive will be: "Subscriber 'A', subscription to article 'SalesOrderHeader' in publication 'MyPublication' failed data validation."  
  
 If you create a response based on the message, you must manually parse the Subscriber name, article name, publication name, and error from the message. However, because the Distribution Agent and Merge Agent write that same information to **sysreplicationalerts** (along with details such as the type of agent, time of the alert, publication database, Subscriber database, and type of publication) the response job can directly query the relevant information from the table. Although the exact row cannot be associated with a specific instance of the alert, the table has a **status** column, which can be used to keep track of serviced entries. The entries in this table are maintained for the history retention period.  
  
 For example, if you were to create a response job in [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] that services alert message 20574, you might use the following logic:  
  
```  
declare @publisher sysname, @publisher_db sysname, @publication sysname, @publication_type int, @article sysname, @subscriber sysname, @subscriber_db sysname, @alert_id int  
declare hc cursor local for select publisher, publisher_db, publication, publication_type, article, subscriber,   
  subscriber_db, alert_id from   
  msdb..sysreplicationalerts where  
  alert_error_code = 20574 and status = 0  
  for read only  
open hc  
fetch hc into  @publisher, @publisher_db, @publication, @publication_type, @article, @subscriber, @subscriber_db, @alert_id  
while (@@fetch_status <> -1)  
begin  
/* Do custom work  */  
/* Update status to 1, which means the alert has been serviced. This prevents subsequent runs of this job from doing this again */  
update msdb..sysreplicationalerts set status = 1 where alert_id = @alert_id  
 fetch hc into  @publisher, @publisher_db, @publication, @publication_type, @article, @subscriber, @subscriber_db, @alert_id  
end  
close hc  
deallocate hc  
```  
  
## See Also  
 [Replication Agent Administration](../../../relational-databases/replication/agents/replication-agent-administration.md)   
 [Best Practices for Replication Administration](../../../relational-databases/replication/administration/best-practices-for-replication-administration.md)   
 [Monitoring &#40;Replication&#41;](../../../relational-databases/replication/monitor/monitoring-replication.md)  
  
  