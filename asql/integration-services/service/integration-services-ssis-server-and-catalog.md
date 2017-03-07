---
title: "Integration Services (SSIS) Server and Catalog | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "packages [Integration Services], managing"
  - "managing packages [Integration Services]"
ms.assetid: 6d667bba-7c25-492a-8f4d-70ebaca28f40
caps.latest.revision: 38
ms.author: "douglasl"
manager: "jhubbard"
---
# Integration Services (SSIS) Server and Catalog
  After you design and test packages in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)], you can deploy the projects that contain the packages to the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server.  
  
 The [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server is an instance of the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] that hosts the **SSISDB** database. The database stores the following objects: packages, projects, parameters, permissions, server properties, and operational history.  
  
 The **SSISDB** database exposes the object information in public views that you can query. The database also provides stored procedures that you can call to manage the objects.  
  
 Before you can deploy the projects to the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server, you need to create the **SSISDB** catalog.  
  
 For an overview of the SSISDB catalog functionality, see [SSIS Catalog](../../integration-services/service/ssis-catalog.md).  
  
## High Availability  
 Like other user databases, the **SSISDB** database does support database mirroring and replication. For more information about mirroring and replication, see [Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/database-mirroring-sql-server.md).  
  
 You can also provide high-availability of SSISDB and its contents by making use of SSIS and Always On Availability Groups. For more information, see this blog post by Matt Masson, [SSIS with Always On](http://go.microsoft.com/fwlink/?LinkId=255873), at blogs.msdn.com.  
  
##  <a name="ssms"></a> Integration Services Server in SQL Server Management Studio  
 When you connect to an instance of the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] that hosts the **SSISDB** database, you see the following objects in Object Explorer:  
  
-   **SSISDB Database**  
  
     The **SSISDB** database appears under the **Databases** node in Object Explore. You can query the views and call the stored procedures that manage the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server and the objects that are stored on the server.  
  
-   **Integration Services Catalogs**  
  
     Under the **Integration Services Catalogs** node there are folders for [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] projects and environments.  
  
## Related Tasks  
  
-   [Create the SSIS Catalog](../../integration-services/service/create-the-ssis-catalog.md)  
  
-   [View the List of Packages on the Integration Services Server](../../integration-services/service/view-the-list-of-packages-on-the-integration-services-server.md)  
  
-   [Deploy Projects to Integration Services Server](../../integration-services/packages/deploy-projects-to-integration-services-server.md)  
  
-   [Run a Package on the SSIS Server Using SQL Server Management Studio](../../integration-services/packages/run-a-package-on-the-ssis-server-using-sql-server-management-studio.md)  
  
## Related Content  
 Blog entry, [SSIS with Always On](http://go.microsoft.com/fwlink/?LinkId=255873), at blogs.msdn.com.  
  
  