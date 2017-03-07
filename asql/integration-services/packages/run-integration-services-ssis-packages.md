---
title: "Run Integration Services (SSIS) Packages | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Integration Services packages, running"
  - "SSIS packages, running"
  - "packages [Integration Services], running"
  - "SQL Server Integration Services packages, running"
  - "executing packages [Integration Services]"
  - "running packages [Integration Services]"
  - "Integration Services, (See also Integration Services packages)"
ms.assetid: c5fecc23-6f04-4fb2-9a29-01492ea41404
caps.latest.revision: 65
ms.author: "douglasl"
manager: "jhubbard"
---
# Run Integration Services (SSIS) Packages
  To run an [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package, you can use one of several tools depending on where those packages are stored. The tools are listed in the table below.  
  
 To store a package on the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server, you use the project deployment model to deploy the project to the server. For information, see [Deploy Projects to Integration Services Server](../../integration-services/packages/deploy-projects-to-integration-services-server.md).  
  
 To store a package in the SSIS Package store, the msdb database, or in the file system, you use the package deployment model. For more information, see [Legacy Package Deployment &#40;SSIS&#41;](../../integration-services/packages/legacy-package-deployment-ssis.md).  
  
|Tool|Packages that are stored on the Integration Services server|Packages that are stored in the SSIS Package Store or in the msdb database|Packages that are stored in the file system, outside of the location that is part of the SSIS Package Store|  
|----------|-----------------------------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|  
|**SQL Server Data Tools**|No|No<br /><br /> However, you can add an existing package to a project from the [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Package Store, which includes the msdb database. Adding an existing package to the project in this manner makes a local copy of the package in the file system.|Yes|  
|**SQL Server Management Studio, when you are connected to an instance of the Database Engine that hosts the Integration Services server**<br /><br /> For more information, see [Execute Package Dialog Box](../../integration-services/packages/execute-package-dialog-box.md)|Yes|No<br /><br /> However, you can import a package to the server from these locations.|No<br /><br /> However, you can import a package to the server from the file system.|
|**SQL Server Management Studio, when you are connected to an instance of the Database Engine that hosts the Integration Services server that is enabled as Scale Out Master**<br /><br /> For more information, see [Run packages in Scale Out](../../integration-services/run-packages-in-integration-services-ssis-scale-out.md)|Yes|No|No|
|**SQL Server Management Studio, when it is connected to the Integration Services service that manages the SSIS Package Store**|No|Yes|No<br /><br /> However, you can import a package to the [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Package Store from the file system.|  
|**dtexec**<br /><br /> For more information, see [dtexec Utility](../../integration-services/packages/dtexec-utility.md).|Yes|Yes|Yes|  
|**dtexecui**<br /><br /> For more information, see [Execute Package Utility &#40;DtExecUI&#41; UI Reference](../../integration-services/packages/execute-package-utility-dtexecui-ui-reference.md)|No|Yes|Yes|  
|**SQL Server Agent**<br /><br /> You use a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent job To schedule a package.<br /><br /> For more information, see [SQL Server Agent Jobs for Packages](../../integration-services/packages/sql-server-agent-jobs-for-packages.md).|Yes|Yes|Yes|  
|**Built-in stored procedure**<br /><br /> For more information, see [catalog.start_execution &#40;SSISDB Database&#41;](../../integration-services/system/stored-procedures/catalog.start-execution-ssisdb-database.md)|Yes|No|No|  
|**Managed API, by using types and members in the** <xref:Microsoft.SqlServer.Management.IntegrationServices> namespace|Yes|No|No|  
|**Managed API, by using types and members in the** <xref:Microsoft.SqlServer.Dts.Runtime> namespace|Not currently|Yes|Yes|  

## Execution and Logging  
 [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages can be enabled for logging and you can capture run-time information in log files. For more information, see [Integration Services &#40;SSIS&#41; Logging](../../integration-services/performance/integration-services-ssis-logging.md).  
  
 You can monitor [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages that are deployed to and run on the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server by using operation reports. The reports are available in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]. For more information, see [Reports for the Integration Services Server](../../integration-services/performance/reports-for-the-integration-services-server.md).  
  
## Related Tasks  
  
-   [Schedule a Package by using SQL Server Agent](../../integration-services/packages/schedule-a-package-by-using-sql-server-agent.md)  
  
-   [Run a Package in SQL Server Data Tools](../../integration-services/packages/run-a-package-in-sql-server-data-tools.md)  
  
-   [Run a Package on the SSIS Server Using SQL Server Management Studio](../../integration-services/packages/run-a-package-on-the-ssis-server-using-sql-server-management-studio.md)  
  
## See Also  
 [dtexec Utility](../../integration-services/packages/dtexec-utility.md)   
[Start the SQL Server Import and Export Wizard](../../integration-services/import-export-data/start-the-sql-server-import-and-export-wizard.md)
  
  