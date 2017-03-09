---
title: "Run a Package on the SSIS Server Using SQL Server Management Studio | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 56dc1bf8-99d4-41dc-bdc4-f64f1ccfd688
caps.latest.revision: 9
ms.author: "douglasl"
manager: "jhubbard"
---
# Run a Package on the SSIS Server Using SQL Server Management Studio
  After you deploy your project to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server, you can run the package on the server.  
  
 You can use operations reports to view information about packages that have run, or are currently running, on the server. For more information, see [Reports for the Integration Services Server](../../integration-services/performance/reports-for-the-integration-services-server.md).  
  
### To run a package on the server using SQL Server Management Studio  
  
1.  Open [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] and connect to the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that contains the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog.  
  
2.  In Object Explorer, expand the **Integration Services Catalogs** node, expand the **SSISDB** node, and navigate to the package contained in the project you deployed.  
  
3.  Right-click the package name and select **Execute**.  
  
4.  Configure the package execution by using the settings on the **Parameters**, **Connection Managers**, and **Advanced** tabs in the **Execute Package** dialog box.  
  
5.  Click **OK** to run the package.  
  
     -or-  
  
     Use stored procedures to run the package. Click **Script** to generate the Transact-SQL statement that creates an instance of the execution and starts an instance of the execution. The statement includes a call to the catalog.create_execution, catalog.set_execution_parameter_value, and catalog.start_execution stored procedures. For more information about these stored procedures, see [catalog.create_execution &#40;SSISDB Database&#41;](../../integration-services/system/stored-procedures/catalog.create-execution-ssisdb-database.md), [catalog.set_execution_parameter_value &#40;SSISDB Database&#41;](../../integration-services/system/stored-procedures/catalog.set-execution-parameter-value-ssisdb-database.md), and [catalog.start_execution &#40;SSISDB Database&#41;](../../integration-services/system/stored-procedures/catalog.start-execution-ssisdb-database.md).  
  
  