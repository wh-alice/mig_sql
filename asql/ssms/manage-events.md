---
title: "Manage Events | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "event forwarding servers [SQL Server]"
  - "events [SQL Server], forwarding"
  - "event-triggered jobs [SQL Server]"
  - "forwarding events [SQL Server]"
  - "alerts [SQL Server], forwarded events"
  - "alerts [SQL Server], management servers"
  - "SQL Server Agent alerts, management servers"
ms.assetid: 8f4ee7f5-80df-49fd-b2b8-d020e04b6e1b
caps.latest.revision: 5
ms.author: "sstein"
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
  - "zh-cn"
  - "zh-tw"
---
# Manage Events
You can forward to an instance of SQL Server all event messages that meet or exceed a specific error severity level. This is called *event forwarding*. The forwarding server is a dedicated server that can also be a master server. You can use event forwarding to centralize alert management for a group of servers, thereby reducing the workload on heavily used servers.  
  
When one server receives events for a group of other servers, the server that receives events is called an *alerts management server*. In a multiserver environment, you designate the master server as the alerts management server.  
  
## Advantages of Using an Alerts Management Server  
The advantages of setting up an alerts management server include:  
  
-   **Centralization**. Centralized control and a consolidated view of the events of several instances of SQL Server are possible from a single server.  
  
-   **Scalability**. Many physical servers can be administered as one logical server. You can add or remove servers to this physical server group as needed.  
  
-   **Efficiency**. Configuration time is reduced, because you need to define alerts and operators only once.  
  
## Disadvantages of Using an Alerts Management Server  
The disadvantages of setting up an alerts management server include:  
  
-   **Increased traffic**. Forwarding events to an alerts management server can increase network traffic. This increase can be moderated by restricting event forwarding to events that are above a designated severity level.  
  
-   **Single point of failure**. If the alerts management server goes offline, no alerts are issued for any event on the managed group of servers.  
  
-   **Server load**. Handling alerts for the forwarded events causes an increased processing load on the alerts management server.  
  
## Guidelines for Using an Alerts Management Server  
When configuring an alerts management server, follow these guidelines:  
  
-   In order to receive forwarded events, the alerts management server must be a default instance of SQL Server.  
  
-   Avoid running critical or heavily used applications on the alerts management server.  
  
-   Carefully plan for the network traffic involved in configuring many servers to share the same alerts management server. If congestion results, reduce the number of servers that use a particular alerts management server.  
  
    The servers that are registered within SQL Server Management Studio constitute the list of servers available to be chosen by that server as the alerts-forwarding server.  
  
-   Define alerts on the local instance of SQL Server that require a server-specific response, instead of forwarding the alerts to the alerts management server.  
  
    The alerts management server views all the servers forwarding to it as a logical whole. For example, an alerts management server responds in the same way to a 605 event from server A and a 605 event from server B.  
  
-   After configuring your alert system, periodically check the Microsoft Windows application log for SQL Server Agent events.  
  
    Failure conditions encountered by the alerts engine are written to the local Windows application log with a source name of "SQL Server Agent." For example, if SQL Server Agent cannot send an e-mail notification as it has been defined, an event is logged in the application log.  
  
If a locally defined alert is inactivated, and an event occurs that would have caused the alert to fire, the event is forwarded to the alerts management server (if it satisfies the alert-forwarding condition). This forwarding allows local overrides (alerts defined locally that are also defined on the alerts management server) to be turned off and on as needed by the user at the local site. You can also request that events always be forwarded, even if they are also handled by local alerts.  
  
The following are common tasks for managing events in a multiserver environment:  
  
**To designate an alerts management server**  
  
-   [SQL Server Management Studio](../ssms/designate-an-events-forwarding-server--sql-server-management-studio-.md)  
  
**To define the response to an alert**  
  
-   [SQL Server Management Studio](../ssms/define-the-response-to-an-alert--sql-server-management-studio-.md)  
  
-   [Transact-SQL](http://msdn.microsoft.com/en-us/0525e0a2-ed0b-4e69-8a4c-a9e3e3622fbd)  
  
## Running Event-Triggered Jobs  
You can define a job to be executed in response to an alert. For example, you can execute a job that corrects or further diagnoses a problem detected by the alert.  
  
> [!NOTE]  
> Because a job can raise an event, be careful not to create a recursive alert-job loop.  
  
## See Also  
[sp_add_notification (Transact-SQL)](http://msdn.microsoft.com/en-us/44bee7d9-7517-4071-99be-8b36f979c7cc)  
  
