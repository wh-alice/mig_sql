---
title: "Integration Services Language Reference | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
ms.assetid: c67b72f1-0a1e-42f0-878a-84e85efc915b
caps.latest.revision: 7
ms.author: "douglasl"
manager: "jhubbard"
---
# Integration Services Language Reference
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This section describes the [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] API for administering [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] projects that have been deployed to an instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
 [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] stores objects, settings, and operational data in a database referred to as the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] catalog. The default name of the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] catalog is SSISDB. The objects that are stored in the catalog include projects, packages, parameters, environments, and operational history.  
  
 The [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] catalog stores its data in internal tables that are not visible to users. However it exposes the information that you need through a set of public views that you can query. It also provides a set of stored procedures that you can use to perform common tasks on the catalog.  
  
 Typically you manage [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] objects in the catalog by opening [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)]. However you can also use the database views and stored procedures directly, or write custom code that calls the managed API. [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)] and the managed API query the views and call the stored procedures that are described in this section to perform many of their tasks.  
  
## In This Section  
 [Views &#40;Integration Services Catalog&#41;](../integration-services/system/views/views-integration-services-catalog.md)  
 Query the views to inspect [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] objects, settings, and operational data.  
  
 [Stored Procedures &#40;Integration Services Catalog&#41;](../integration-services/system/stored-procedures/stored-procedures-integration-services-catalog.md)  
 Call the stored procedures to add, remove, or modify [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] objects and settings.  
  
 [Functions &#40;Integration Services Catalog&#41;](../a9retired/functions-integration-services-catalog.md)  
 Call the functions to administer [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] projects.  
  
  