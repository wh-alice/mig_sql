---
title: "Command Prompt Utility Reference (Database Engine) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "command prompt utilities [SQL Server]"
  - "command prompt utilities [SQL Server], about command prompt utilities"
  - "command prompt [SQL Server]"
  - "utilities [SQL Server], command prompt"
  - "command prompt [SQL Server], utilities"
ms.assetid: 48364bd9-6ea7-45e9-a332-acf3d81bbfae
caps.latest.revision: 90
ms.author: "jhubbard"
manager: "jhubbard"
---
# Command Prompt Utility Reference (Database Engine)
  Command prompt utilities enable you to script [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] operations. The following table contains a list of command prompt utilities that ship with [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
|**Utility**|**Description**|**Installed in**|  
|-----------------|---------------------|----------------------|  
|[bcp Utility](../tools/bcp-utility.md)|Used to copy data between an instance of [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] and a data file in a user-specified format.|\<*drive*:>\Program Files\\[!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)]\Client SDK\ODBC\110\Tools\Binn|  
|[dta Utility](../tools/dta/dta-utility.md)|Used to analyze a workload and recommend physical design structures to optimize server performance for that workload.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[dtexec Utility](../integration-services/packages/dtexec-utility.md)|Used to configure and execute an [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package. A user interface version of this command prompt utility is called **DTExecUI**, which brings up the Execute Package Utility.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]DTS\Binn|  
|[dtutil Utility](../integration-services/dtutil-utility.md)|Used to manage SSIS packages.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]DTS\Binn|  
|[Deploy Model Solutions with the Deployment Utility](../analysis-services/multidimensional-models/deploy-model-solutions-with-the-deployment-utility.md)|Used to deploy [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] projects to instances of [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)].|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn\VShell\Common7\IDE|  
|[osql Utility](../tools/osql-utility.md)|Allows you to enter [!INCLUDE[tsql](../advanced-analytics/r-services/includes/tsql-md.md)] statements, system procedures, and script files at the command prompt.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[Profiler Utility](../tools/profiler-utility.md)|Used to start [!INCLUDE[ssSqlProfiler](../analysis-services/data-mining/includes/sssqlprofiler-md.md)] from a command prompt.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[RS.exe Utility &#40;SSRS&#41;](../reporting-services/tools/rs.exe-utility-ssrs.md)|Used to run scripts designed for managing [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report servers.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[rsconfig Utility &#40;SSRS&#41;](../reporting-services/tools/rsconfig-utility-ssrs.md)|Used to configure a report server connection.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[rskeymgmt Utility &#40;SSRS&#41;](../reporting-services/tools/rskeymgmt-utility-ssrs.md)|Used to manage encryption keys on a report server.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[sqlagent90 Application](../tools/sqlagent90-application.md)|Used to start [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent from a command prompt.|\<drive>:\Program Files\Microsoft SQL Server\\<*instance_name*>\MSSQL\Binn|  
|[sqlcmd Utility](../tools/sqlcmd-utility.md)|Allows you to enter [!INCLUDE[tsql](../advanced-analytics/r-services/includes/tsql-md.md)] statements, system procedures, and script files at the command prompt.|\<*drive*:>\Program Files\\[!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)]\Client SDK\ODBC\110\Tools\Binn|  
|[SQLdiag Utility](../tools/sqldiag-utility.md)|Used to collect diagnostic information for [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Customer Service and Support.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[sqllogship Application](../tools/sqllogship-application.md)|Used by applications to perform backup, copy, and restore operations and associated clean-up tasks for a log shipping configuration without running the backup, copy, and restore jobs.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[SqlLocalDB Utility](../tools/sqllocaldb-utility.md)|An execution mode of [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] targeted to program developers.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn\|  
|[sqlmaint Utility](../tools/sqlmaint-utility.md)|Used to execute database maintenance plans created in previous versions of [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)].|\<drive>:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Binn|  
|[sqlps Utility](../tools/sqlps-utility.md)|Used to run PowerShell commands and scripts. Loads and registers the [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] PowerShell provider and cmdlets.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn|  
|[sqlservr Application](../tools/sqlservr-application.md)|Used to start and stop an instance of [!INCLUDE[ssDE](../analysis-services/instances/install/windows/includes/ssde-md.md)] from the command prompt for troubleshooting.|\<drive>:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Binn|  
|[Ssms Utility](../tools/sql-server-management-studio/ssms-utility.md)|Used to start [!INCLUDE[ssManStudioFull](../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] from a command prompt.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]Tools\Binn\VSShell\Common7\IDE|  
|[tablediff Utility](../tools/tablediff-utility.md)|Used to compare the data in two tables for non-convergence, which is useful when troubleshooting a replication topology.|[!INCLUDE[ssInstallPathVar](../analysis-services/instances/install/windows/includes/ssinstallpathvar-md.md)]COM|  
  
 **To access [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager Using [!INCLUDE[win8](../database-engine/availability-groups/windows/includes/win8-md.md)]**  
  
 Because [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager is a snap-in for the [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Management Console program and not a stand-alone program, [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager not does not appear as an application when running [!INCLUDE[win8](../database-engine/availability-groups/windows/includes/win8-md.md)]. To open [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, in the **Search** charm, under **Apps**, type **SQLServerManager12.msc** (for [!INCLUDE[ssSQL14](../analysis-services/includes/sssql14-md.md)]) or **SQLServerManager11.msc** for ([!INCLUDE[ssSQL11](../analysis-services/includes/sssql11-md.md)]), and then press **Enter**.  
  
## Command Prompt Utilities Syntax Conventions  
  
|**Convention**|**Used for**|  
|--------------------|------------------|  
|UPPERCASE|Statements and terms used at the operating system level.|  
|`monospace`|Sample commands and program code.|  
|*italic*|User-supplied parameters.|  
|**bold**|Commands, parameters, and other syntax that must be typed exactly as shown.|  
  
## See Also  
 [Replication Distribution Agent](../relational-databases/replication/agents/replication-distribution-agent.md)   
 [Replication Log Reader Agent](../relational-databases/replication/agents/replication-log-reader-agent.md)   
 [Replication Merge Agent](../relational-databases/replication/agents/replication-merge-agent.md)   
 [Replication Queue Reader Agent](../relational-databases/replication/agents/replication-queue-reader-agent.md)   
 [Replication Snapshot Agent](../relational-databases/replication/agents/replication-snapshot-agent.md)  
  
  