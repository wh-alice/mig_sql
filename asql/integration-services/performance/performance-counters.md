---
title: "Performance Counters | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-27"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logs [Integration Services], performance counters"
  - "performance counters [Integration Services]"
  - "data flow [Integration Services], performance"
  - "counters [Integration Services]"
  - "data flow engine [Integration Services]"
ms.assetid: 11e17f4e-72ed-44d7-a71d-a68937a78e4c
caps.latest.revision: 63
ms.author: "douglasl"
manager: "jhubbard"
---
# Performance Counters
  [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] installs a set of performance counters that you can use to monitor the performance of the data flow engine. For example, you can watch the "Buffers spooled" counter to determine whether data buffers are being written to disk temporarily while a package is running. This swapping reduces performance and indicates that the computer has insufficient memory.  
  
> **NOTE:** If you install [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] on a computer that is running [!INCLUDE[winxpsvr](../../database-engine/configure/windows/includes/winxpsvr-md.md)], and then upgrade that computer to [!INCLUDE[firstref_longhorn](../../database-engine/install/windows/includes/firstref-longhorn-md.md)], the upgrade process removes the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] performance counters from the computer. To restore the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] performance counters on the computer, run [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Setup in repair mode.  
  
 The following table describes the performance counters.  
  
|Performance counter|Description|  
|-------------------------|-----------------|  
|BLOB bytes read|The number of bytes of binary large object (BLOB) data that the data flow engine has read from all sources.|  
|BLOB bytes written|The number of bytes of BLOB data that the data flow engine has written to all destinations.|  
|BLOB files in use|The number of BLOB files that the data flow engine currently is using for spooling.|  
|Buffer memory|The amount of memory that is in use. This may include both physical and virtual memory. When this number is larger than the amount of physical memory, the **Buffers Spooled** count rises as an indication that memory swapping is increasing. Increased memory swapping slows performance of the data flow engine.|  
|Buffers in use|The number of buffer objects, of all types, that all data flow components and the data flow engine is currently using.|  
|Buffers spooled|The number of buffers currently written to the disk. If the data flow engine runs low on physical memory, buffers not currently used are written to disk and then reloaded when needed.|  
|Flat buffer memory|The total amount of memory, in bytes, that all flat buffers use. Flat buffers are blocks of memory that a component uses to store data. A flat buffer is a large block of bytes that is accessed byte by byte.|  
|Flat buffers in use|The number of flat buffers that the Data flow engine uses. All flat buffers are private buffers.|  
|Private buffer memory|The total amount of memory in use by all private buffers. A buffer is not private if the data flow engine creates it to support data flow. A private buffer is a buffer that a transformation uses for temporary work only. For example, the Aggregation transformation uses private buffers to do its work.|  
|Private buffers in use|The number of buffers that transformations use.|  
|Rows read|The number of rows that a source produces. The number does not include rows read from reference tables by the Lookup transformation.|  
|Rows written|The number of rows offered to a destination. The number does not reflect rows written to the destination data store.|  
  
 You use the Performance Microsoft Management Console (MMC) snap-in to create a log that captures performance counters.  
  
 For information about how to improve performance, see [Data Flow Performance Features](../../integration-services/data-flow/data-flow-performance-features.md).  
  
## Obtain Performance Counter Statistics  
 For [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] projects that are deployed to the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server, you can obtain performance counter statistics by using the [dm_execution_performance_counters &#40;SSISDB Database&#41;](../../integration-services/functions-dm-execution-performance-counters.md) function.  
  
 In the following example, the function returns statistics for a running execution with an ID of 34.  
  
```  
select * from [catalog].[dm_execution_performance_counters] (34)  
```  
  
 In the following example, the function returns statistics for all the executions running on the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server.  
  
```  
select * from [catalog].[dm_execution_performance_counters] (NULL)  
  
```  
  
> **IMPORTANT!!** If you are a member of the **ssis_admin** database role, performance statistics for all running executions are returned.  If you are not a member of the **ssis_admin** database role, performance statistics for the running executions for which you have read permissions, are returned.  
  
## Related Content  
  
-   Tool, [SSIS Performance Visualization for Business Intelligence Development Studio (CodePlex Project)](http://go.microsoft.com/fwlink/?LinkId=146626), on codeplex.com.  
  
-   Video, [Measuring and Understanding the Performance of Your SSIS Packages in the Enterprise (SQL Server Video)](http://go.microsoft.com/fwlink/?LinkId=150497), on msdn.microsoft.com.  
  
-   Support article, [The SSIS performance counter is no longer available in the Performance Monitor after you upgrade to Windows Server 2008](http://go.microsoft.com/fwlink/?LinkId=235319), on support.microsoft.com.  
  
## See Also  
 [Execution of Projects and Packages](https://msdn.microsoft.com/library/ms141708.aspx)  
  
  