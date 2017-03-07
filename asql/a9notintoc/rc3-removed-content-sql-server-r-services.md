---
title: "RC3 removed content (SQL Server R Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0e6573eb-3098-4c54-8435-8074d1dd9b2c
caps.latest.revision: 6
ms.author: "jeannt"
---
# RC3 removed content (SQL Server R Services)
  Insert introduction here.  
  
## Monitoring R Services (topic)  
 Insert section body here.  
  
### Management and Monitoring Tools for SQL Server R Services  
  
-   In [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], management of the resources used by the R runtime and remote R jobs is managed by using [Resource Governor](../relational-databases/resource-governor/resource-governor.md).  
  
-   Extended events  
  
-   System catalog view  
  
-   DMV  
  
### Managing R Tools  
 The following executables are installed as part of the [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] setup.  
  
-   BxlServer  
  
     Can be governed by the new external resource pool mechanism, which also manages satellite processes created by RTerm.exe and  BxlServer.exe.  
  
-   RTerm.exe  
  
     A command line tool for running R that can accept script and data files as parameters.  
  
     Can be governed by the new external resource pool mechanism, which also manages satellite processes created by RTerm.exe and  BxlServer.exe.  
  
     You can view these by using the catalog view that shows external resource pools configuration values.  
    For more information, see  
  
-   R.exe  
  
     The R runtime. Called by the rsql_launchpad when any call to sp_execute_external_script is made. Default location: %Program files\Microsft SQL Server\MSSQL>\<instancename>\R_SERVICES  
  
-   Rscript.exe  
  
     Another command-line script utility. Different versions are provided for x86 and x64 architectures. The [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] setup installs only 64-bit versions.  
  
-   RGui.exe  
  
     A lightweight visual editor for R script. Console output on RGui is buffered so it can process only limited amount of data in each batch.  
  
-   Rcmd.exe  
  
     An older command-line tool for running R.  
  
> [!IMPORTANT]  
>  You should not call any of these executables directly on the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] instance. Always use [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] to run R. If you want to experiment with R or develop solutions outside of [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] we recommend that you install the R tools on a separate workstation.  
  
### Tasks  
  
#### Enable or disable use of R within a database  
 The database administrator can control whether or not the R language can be used as an extension mechanism inside each database.  
  
#### Monitor R processes created by SQL Server  
 When the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] computer is used for R script execution, the database administrator can determine how many R processes are being used by the engine, and get relevant information such as the process ID, when the R process was invoked, and so forth.  
  
#### Kill R script execution from SQL Server  
 The database administrator can use the existing KILL statement to terminate R scripts if necessary.  
  
### View query plan for execution of R script  
 The database administrator can view both the estimated and actual execution plans for any T-SQL statements that are executed as part of  R scripts.  
  
 The XML and the graphical plan show new query operators, the runtime that was used, and other relevant information.  
  
### Correlate queries pushed from SQL Server into Scripts  
 The database administrator can correlate queries that run in SQL Server with the calling R script and related output.  
  
### Control parallelism of ScaleR processes  
 In [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], you can parallelize R jobs by using the **ScaleR** packages. The R script developer specifies the number of processes to use in the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] compute context as part of the R script.  
  
 To manage resources effectively, the database administrator can limit the maximum number of processes used by **ScaleR** and enforce those limits without necessarily killing the R script.  
  
## Resource Governor  
  
### Classify incoming R connections and route their workloads to a specific group  
 introduction/why  
  
### Prioritize certain R tasks and workloads  
 For example, you might want to guarantee that scoring tasks needed for external applications take precedence over model trianing.  
  
### Determine resource usage for current R scripts and processes  
 The DBA must be able to determine which R scripts are currently executing, which processes the script is using, and  get metrics about the resource load. Detailed information about the resource usage of each R process is also critical for being able to forecast load and plan capacity.  
  
### Enforce resource limits for R script execution  
 To manage CPU and memory allocated to R, we recommend that you use [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]Resource Governor. This allows you to prevent R jobs from being blocked by other server workloads and vice versa.  
  
 Database administrators must support multiple services and are concerned about the potential resource usage of R scripts when executed on the server.  
  
 To ensure that other core services are not blocked, the database administrator can limit resource usage of R script by enforcing policies at the server or database level. These policies allow the DBA to enforce limits on CPU, memory and I/O.  
  
## Find Installed Packages Using DMVs  
 This functionality is not available in CTP3.  
  
  