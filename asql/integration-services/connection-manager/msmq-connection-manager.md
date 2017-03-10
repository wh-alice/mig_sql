---
title: "MSMQ Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "connections [Integration Services], message queues"
  - "connection managers [Integration Services], MSMQ"
  - "MSMQ connection manager"
  - "message queue connections [Integration Services]"
ms.assetid: a86900e2-450e-479f-b207-e1b02361d395
caps.latest.revision: 35
ms.author: "douglasl"
manager: "jhubbard"
---
# MSMQ Connection Manager
  An MSMQ connection manager enables a package to connect to a message queue that uses Message Queuing (also known as MSMQ). The Message Queue task that [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] includes uses an MSMQ connection manager.  
  
 When you add an MSMQ connection manager to a package, [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] creates a connection manager that will resolve to an MSMQ connection at run time, sets the connection manager properties, and adds the connection manager to the **Connections** collection on the package. The **ConnectionManagerType** property of the connection manager is set to **MSMQ**.  
  
 You can configure an MSMQ connection manager in the following ways:  
  
-   Provide a connection string.  
  
-   Provide the path of the message queue to connect to.  
  
 The format of the path depends on the type of queue, as shown in the following table.  
  
|Queue type|Sample path|  
|----------------|-----------------|  
|Public|\<computer name>\\<queue name\>|  
|Private|\<computer name>\Private$\\<queue name\>|  
  
 You can use a period (.) to represent the local computer.  
  
## Configuration of the MSMQ Connection Manager  
 You can set properties through [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, see [MSMQ Connection Manager Editor](../../integration-services/connection-manager/msmq-connection-manager-editor.md).  
  
 For information about configuring a connection manager programmatically, see <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager> and [Adding Connections Programmatically](../../integration-services/building-packages-programmatically/adding-connections-programmatically.md).  
  
## See Also  
 [Message Queue Task](../../integration-services/control-flow/message-queue-task.md)   
 [Integration Services &#40;SSIS&#41; Connections](../../integration-services/connection-manager/integration-services-ssis-connections.md)  
  
  