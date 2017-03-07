---
title: "Create Connection Managers | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.asvs.connectionmanager.f1"
helpviewer_keywords: 
  - "Integration Services packages, connections"
  - "SSIS packages, connections"
  - "packages [Integration Services], connections"
  - "connection managers [Integration Services], creating"
  - "SQL Server Integration Services packages, connections"
ms.assetid: 6ca317b8-0061-4d9d-b830-ee8c21268345
caps.latest.revision: 55
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Create Connection Managers
  [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] includes a variety of connection managers to suit the needs of tasks that connect to different types of servers and data sources. Connection managers are used by the data flow components that extract and load data in different types of data stores, and by the log providers that write logs to a server, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] table, or file. For example, a package with a Send Mail task uses an SMTP connection manager type to connect to a Simple Mail Transfer Protocol (SMTP) server. A package with an Execute SQL task can use an OLE DB connection manager to connect to a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database. For more information, see [Integration Services &#40;SSIS&#41; Connections](../integration-services/connection-manager/integration-services-ssis-connections.md).  
  
 To automatically create and configure connection managers when you create a new package, you can use the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Import and Export Wizard. The wizard also helps you create and configure the sources and destinations that use the connection managers. For more information, see [Create Packages in SQL Server Data Tools](../integration-services/create-packages-in-sql-server-data-tools.md).  
  
 To manually create a new connection manager and add it to an existing package, you use the **Connection Managers** area that appears on the **Control Flow**, **Data Flow**, and **Event Handlers** tabs of [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer. From the **Connection Manager** area, you choose the type of connection manager to create, and then set the properties of the connection manager by using a dialog box that [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer provides. For more information, see the section, "Using the Connection Managers Area," later in this topic.  
  
 After the connection manager is added to a package, you can use it in tasks, Foreach Loop containers, sources, transformations, and destinations. For more information, see [Integration Services Tasks](../integration-services/control-flow/integration-services-tasks.md), [Foreach Loop Container](../integration-services/control-flow/foreach-loop-container.md), and [Data Flow](../integration-services/data-flow/data-flow.md).  
  
## Using the Connection Managers Area  
 You can create connection managers while the **Control Flow**, **Data Flow**, or **Event Handlers** tab of [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer is active.  
  
 The following diagram shows the **Connection Managers** area on the **Control Flow** tab of [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer.  
  
 ![Screenshot of control flow designer with package](../a9retired/media/samplecontrolflow.gif "Screenshot of control flow designer with package")  
  
#### To add, configure, or delete a connection manager in SSIS Designer  
  
-   [Add, Delete, or Share a Connection Manager in a Package](../a9retired/add-delete-or-share-a-connection-manager-in-a-package.md)  
  
-   [Set the Properties of a Connection Manager](../a9retired/set-the-properties-of-a-connection-manager.md)  
  
## 32-Bit and 64-Bit Providers for Connection Managers  
 Many of the providers that connection managers use are available in 32-bit and 64-bit versions. The [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] design environment is a 32-bit environment and you see only 32-bit providers while you are designing a package. Therefore, you can only configure a connection manager to use a specific 64-bit provider if the 32-bit version of the same provider is also installed.  
  
 At run time, the correct version is used, and it does not matter that you specified the 32-bit version of the provider at design time. The 64-bit version of the provider can be run even if the package is run in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
 Both versions of the provider have the same ID. To specify whether the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] runtime uses an available 64-bit version of the provider, you set the Run64BitRuntime property of the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project. If the Run64BitRuntime property is set to **true**, the runtime finds and uses the 64-bit provider; if Run64BitRuntime is **false**, the runtime finds and uses the 32-bit provider. For more information about properties you can set on [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] projects, see [Integration Services &(SSIS) and Studio Environments](https://msdn.microsoft.com/library/ms140028.aspx).  
  
## See Also  
 [Control Flow](../integration-services/control-flow/control-flow.md)   
 [Data Flow](../integration-services/data-flow/data-flow.md)   
 [Integration Services &#40;SSIS&#41; Event Handlers](../integration-services/integration-services-ssis-event-handlers.md)  
  
  