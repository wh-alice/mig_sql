---
title: "Memory Properties | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "LowMemoryLimit property"
  - "MinimumAllocatedMemory property"
  - "MidMemoryPrice property"
  - "MemoryHeapType property"
  - "memory [Analysis Services]"
  - "DefaultPagesCountToReuse property"
  - "TotalMemoryLimit property"
  - "SessionMemoryLimit property"
  - "VirtualMemoryLimit property"
  - "WaitCountIfHighMemory property"
  - "HighMemoryPrice property"
  - "HeapTypeForObjects property"
ms.assetid: 085f5195-7b2c-411a-9813-0ff5c6066d13
caps.latest.revision: 26
ms.author: "owend"
manager: "erikre"
---
# Memory Properties
  [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] preallocates a modest amount of memory at start up so that requests can be handled immediately. Additional memory is allocated as query and processing workloads increase. 
  
  By specifying configuration settings, you can control the thresholds at which memory is released. For example, the **HardMemoryLimit** setting specifies a self-imposed out-of-memory condition (by default, this threshold is not enabled), where new requests are rejected outright until more resources become available.
  
 **Applies to:** Multidimensional and Tabular server mode, unless noted otherwise.  
 
## Default memory configuration

Under the default configuration, each Analysis Services instance allocates a small amount of RAM (40 to 50 MB) at start up, even if the instance is idle. 

Recall that configuration settings are per instance. If you are running multiple instances of Analysis Services, such as a tabular and multidimensional instance on the same hardware, each instance will allocate its own memory independently of other instances.

The table below briefly describes the more commonly used memory settings (with more detail in the reference section). These are the settings you should configure if Analysis Services is competing for memory with other applications on the same server:

Setting | Description
--------|------------
LowMemoryLimit | For multidimensional instances, a lower threshold at which the server first begins releasing memory allocated to infrequently used objects.
VertiPaqMemoryLimit | For tabular instances, a lower threshold at which the server first begins releasing memory allocated to infrequently used objects.
TotalMemoryLimit | An upper threshold at which Analysis Services begins releasing memory more aggressively to  make room for requests that are in execution as well as new high priority requests. 
HardMemoryLimit | Another threshold at which Analysis Services begins rejecting requests outright due to memory pressure. 
 
## Property reference

The following properties apply to both tabular and multidimensional modes unless specified otherwise.

 Values between 1 and 100 represent percentages of **Total Physical Memory** or **Virtual Address Space**, whichever is less. Values over 100 represent memory limits in bytes.
  
 **LowMemoryLimit**  
 A signed 64-bit double-precision floating-point number property that defines the first threshold at which Analysis Services begins releasing memory for low priority objects, such as an infrequently used cache. Once the memory is allocated, the server does not release memory below this limit. The default value is 65; which indicates the low memory limit is 65% of physical memory or the virtual address space, whichever is less.  
  
 **TotalMemoryLimit**  
 Defines a threshold that when reached, causes the server to deallocate memory to make room for other requests. When this limit is reached, the instance will start to slowly clear memory out of caches by closing expired sessions and unloading unused calculations. The default value 80% of physical memory or the virtual address space, whichever is less. Note that **TotalMemoryLimit** must always be less than **HardMemoryLimit**  
  
 **HardMemoryLimit**  
 Specifies a memory threshold after which the instance aggressively terminates active user sessions to reduce memory usage. All terminated sessions will receive an error about being cancelled by memory pressure. The default value, zero (0), means the **HardMemoryLimit** will be set to a midway value between **TotalMemoryLimit** and the total physical memory of the system; if the physical memory of the system is larger than the virtual address space of the process, then virtual address space will be used instead to calculate **HardMemoryLimit**.  
  
 **VirtualMemoryLimit**  
  An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **VertiPaqPagingPolicy**  
  For tabular instances only, specifies the paging behavior in the event the server runs low on memory. Valid values are as follows:  
  
  

Setting  |Description  
---------|---------
**0**     |  Disables paging. If memory is insufficient, processing fails with an out-of-memory error. If you disable paging, you must grant Windows privileges to the service account. See [Configure Service Accounts &#40;Analysis Services&#41;](../../analysis-services/instances/configure-service-accounts-analysis-services.md) for instructions. 
**1**     |  (default) This property enables paging to disk using the operating system page file (pagefile.sys).   
  
When set to 1, processing is less likely to fail due to memory constraints because the server will try to page to disk using the method that you specified. Setting the **VertiPaqPagingPolicy** property does not guarantee that memory errors will never happen. Out of memory errors can still occur under the following conditions:  
  
-   There is not enough memory for all dictionaries. During processing, Analysis Services locks the dictionaries for each column in memory, and all of these together cannot be more than the value specified for **VertiPaqMemoryLimit**.  
  
-   There is insufficient virtual address space to accommodate the process.  
  
 To resolve persistent out of memory errors, you can either try to redesign the model to reduce the amount of data that needs processing, or you can add more physical memory to the computer.  
  
 **VertiPaqMemoryLimit**  
 For tabular instances only, if paging to disk is allowed, this property specifies the level of memory consumption (as a percentage of total memory) at which paging starts. The default is 60. If memory consumption is less than 60 percent, the server will not page to disk. This property depends on the **VertiPaqPagingPolicyProperty**, which must be set to 1 in order for paging to occur.  
  
 **HighMemoryPrice**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **MemoryHeapType**  
  An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support. Valid values in SQL Server 2016 SP1 and later Analysis Services are as follows:
  
  Setting | Description
--------|------------
**-1** | (default) Automatic. The engine will decide which one to use.
**1** | Analysis Services HEAP.
**2** | Windows LFH.
**5** | Hybrid allocator. This allocator will use Windows LFH for \<= 16KB allocations and the AS Heap for >16KB allocations. 
**6** | Intel TBB allocator. Available in SQL Server 2016 SP1 (and later) Analysis Services.
  
  
 **HeapTypeForObjects**  
  An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support. Valid values are as follows:
  
   Setting | Description
--------|------------
**0** | Windows LFH heap.
**1** | Analysis Services slot allocator.
**3** | Each object has its own Analysis Services Heap.

 
 **DefaultPagesCountToReuse**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **HandleIA64AlignmentFaults**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **MidMemoryPrice**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **MinimumAllocatedMemory**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **PreAllocate**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **SessionMemoryLimit**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
 **WaitCountIfHighMemory**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] support.  
  
## See Also  
 [Server Properties in Analysis Services](../../analysis-services/server-properties/server-properties-in-analysis-services.md)   
 [Determine the Server Mode of an Analysis Services Instance](../../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md)  
  [SQL Server 2008 R2 Analysis Services Operations Guide](http://go.microsoft.com/fwlink/?LinkID=225539)
  