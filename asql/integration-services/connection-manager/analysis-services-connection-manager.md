---
title: "Analysis Services Connection Manager | Microsoft Docs"
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
  - "connections [Integration Services], Analysis Services"
  - "connection managers [Integration Services], Analysis Services"
  - "Analysis Services connection manager"
ms.assetid: 9f9cadad-a1d0-4db5-98f5-df5dbbec1be4
caps.latest.revision: 43
ms.author: "douglasl"
manager: "jhubbard"
---
# Analysis Services Connection Manager
  An [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection manager enables a package to connect to a server that runs an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database or to an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project that provides access to cube and dimension data. You can only connect to an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project while developing packages in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)]. At run time, packages connect to the server and the database to which you deployed the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project.  
  
 Both tasks, such as the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Execute DDL task and the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Processing task, and destinations, such as the Data Mining Model Training destination, use an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection manager.  
  
 For more information about [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] databases, see [Multidimensional Model Databases &#40;SSAS&#41;](../../analysis-services/multidimensional-models/multidimensional-model-databases-ssas.md).  
  
## Configuration of the Analysis Services Connection Manager  
 When you add an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection manager to a package, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] creates a connection manager that is resolved as an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection at run time, sets the connection manager properties, and adds the connection manager to the **Connections** collection on the package. The **ConnectionManagerType** property of the connection manager is set to **MSOLAP100**.  
  
 You can configure the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection manager in the following ways:  
  
-   Provide a connection string configured to meet the requirements of the Microsoft OLE Provider for Analysis Services provider.  
  
-   Specify the instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] or the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project to connect to.  
  
-   If you are connecting to an instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], specify the authentication mode.  
  
-   Indicate whether the connection that is created from the connection manager is retained at run time.  
  
 You can set properties through [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, click one of the following topic:  
  
-   [Add Analysis Services Connection Manager Dialog Box UI Reference](../../integration-services/connection-manager/add-analysis-services-connection-manager-dialog-box-ui-reference.md)  
  
 For information about configuring a connection manager programmatically, see <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager> and [Adding Connections Programmatically](../../integration-services/building-packages-programmatically/adding-connections-programmatically.md).  
  
  