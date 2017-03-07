---
title: "Managing Service Broker | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "Service Broker [SMO]"
ms.assetid: b29d7432-d1e5-4bb6-b544-57b3a9430f95
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# Managing Service Broker
  In SMO, the [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] objects are found in the **Microsoft.SqlServer.Management.Smo.Broker** namespace, which requires a reference to the Microsoft.SqlServer.Smo.dll. A reference to the Microsoft.SqlServer.ServiceBrokerEnum.dll is also required for supporting class information.  
  
 SMO provides a set of [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] objects that permit programmatic management (DDL) of the [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] implementation. This includes defining the message types, contracts, queues, and services. Because SMO is a management tool that is not intended for data manipulation, sending and receiving [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] messages is not supported by SMO.  
  
 In SMO, the <xref:Microsoft.SqlServer.Management.Smo.Database.ServiceBroker%2A> object is the top-level class under which all the [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] functionality resides. A [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] implementation is required for each database that is participating in the distributed messaging application. Therefore, the <xref:Microsoft.SqlServer.Management.Smo.Broker.ServiceBroker> object is a child of the <xref:Microsoft.SqlServer.Management.Smo.Database> object.  
  
 The <xref:Microsoft.SqlServer.Management.Smo.Broker.ServiceBroker> object contains collections of the following objects that are used to define the [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] implementation:  
  
-   <xref:Microsoft.SqlServer.Management.Smo.Broker.MessageType> objects represent message types that define the content of messages.  
  
-   <xref:Microsoft.SqlServer.Management.Smo.Broker.MessageTypeMapping> objects represent contracts that specify the direction and type of messages in a given conversation.  
  
-   <xref:Microsoft.SqlServer.Management.Smo.Broker.ServiceQueue> objects store messages prior to sending and after they are received. They provide asynchronous communication between services, as well as other benefits, such as automatically locking messages in the same conversation group.  
  
-   <xref:Microsoft.SqlServer.Management.Smo.Broker.BrokerService> objects represent [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] services, which are the addressable endpoints for conversations. [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] messages are sent from one service to another service. A service specifies a queue to hold messages, and specifies the contracts for which the service can be the target.  
  
-   <xref:Microsoft.SqlServer.Management.Smo.Broker.RemoteServiceBinding> objects represent the settings that [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] uses for security and authentication when communicating with a remote service.  
  
-   <xref:Microsoft.SqlServer.Management.Smo.Broker.ServiceRoute> objects represents a [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] route, which contains the location information for the service and the database on which it is defined. A route is required for message delivery. By default, each database contains a route that specifies the location as the current instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
## See Also  
 <xref:Microsoft.SqlServer.Management.Smo.Broker>   
 [SQL Server Service Broker](../../../database-engine/configure/windows/sql-server-service-broker.md)  
  
  