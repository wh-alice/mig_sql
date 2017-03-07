---
title: "New-PowerPivotEngineServiceInstance cmdlet | Microsoft Docs"
ms.custom: ""
ms.date: "01/21/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 1edb3891-da1b-4643-89ae-60727898ee64
caps.latest.revision: 10
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# New-PowerPivotEngineServiceInstance cmdlet
  Adds a new instance of SQL Server Analysis Services to an application server.  
  
 **Applies to:** SharePoint 2010.  
  
## Syntax  
  
```  
New-PowerPivotEngineServiceInstance [-ParentService <PowerPivotEngineServicePipeBind>] [-EngineServiceInstanceName <string>] [-Provision <switch>] [-EnableQueryMode <switch>] [-EnableProcessingMode <switch>] [-MaximumParallelRefreshJobs <Ushort>] [-MaximumDiskcache <Ushort>] [-LastAccessedTime <Ushort>] [-WarnOnLowMemory <Ushort>] [-MaximumConnectionLimit <Ushort>] [-WarnOnLowCPUMachine <Ushort>] [-WarnOnLowCPUOlapService <Ushort>] [-WarnOnLowDisk <Ushort>] [-DataCollectionInterval <Ushort>] [<CommonParameters>]  
```  
  
## Description  
 The New-PowerPivotEngineServiceInstance cmdlet registers SQL Server Analysis Services with SharePoint. Adding a new instance of the PowerPivotEngineService in SharePoint is required for deploying [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint on the local application server. You must perform this step after you use SQL Server Setup to install an instance of SQL Server Analysis Services on the local computer. This step adds SQL Server Analysis Services to the Manage services on server list in SharePoint Central Administration.  
  
 Analysis Services runs under the service account that was provided during SQL Server Setup. The service account will be registered as a managed account in SharePoint when you create the new PowerPivotEngineServiceInstance object.  
  
## Parameters  
  
### -ParentService \<PowerPivotEngineServicePipeBind>  
 Specifies the GUID of the [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] Engine Service parent object in the farm. In this release, there is only one parent object allowed. Use Get-PowerPivotEngineService to get the GUID of the parent service.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|0|  
|Default value||  
|Accept pipeline input?|true|  
|Accept wildcard characters?|false|  
  
### -EngineServiceInstanceName \<string>  
 Specifies a name that identifies this object. You can use the object's name in custom script or functions.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|1|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -Provision \<switch>  
 Makes the service available on SharePoint. Valid values are $true or $false.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -EnableQueryMode \<switch>  
 Specifies whether the server accepts on-demand query requests for [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] data. The default is true. If you turn off query mode, the server will only handle data refresh jobs. By default, both EnableQueryMode and EnableProcessingMode are turned on, allowing the server to handle requests for both on-demand queries and data refresh processing.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -EnableProcessingMode \<switch>  
 Specifies whether the server accepts data refresh requests. The default is true. If you turn off data refresh processing, the server will only handle on demand queries. By default, both EnableQueryMode and EnableProcessingMode are turned on, allowing the server to handle requests for both on-demand queries and data refresh processing.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -MaximumParallelRefreshJobs \<Ushort>  
 Specifies the number of data refresh jobs that can run concurrently on the server. The default is 1 job per CPU. If the server has 2 processors, you can set this value to 2.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|1|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -MaximumDiskcache \<Ushort>  
 Specifies the amount of disk space allocated for caching [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] data. [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] data is cached on first request, when the data is loaded into memory. Data remains on disk even after it no longer actively used, to service subsequent connection requests for that same data. It is eventually removed if no one requests the data for a period of days, as specified by the MemoryDatabaseHoldLimit parameter on the [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] service application object.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|0|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -LastAccessedTime \<Ushort>  
 Specifies last-used criteria for emptying the cache when disk space is at the maximum limit. All cached files that were last accessed at the hourly interval you define are immediately deleted from the file system. The default is 4 hours. If the maximum disk space limit is reached, all databases that have been inactive for 4 hours or longer are deleted from the file system. Databases that are inactive but still in memory are unloaded and then deleted from the file system.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|4|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -WarnOnLowMemory \<Ushort>  
 Specifies a percentage of available memory that should always be unused by the server. On a SharePoint application server, a SQL Server Analysis Services instance should always have a small amount of memory in reserve that is always unused. Because the server is memory-bound for the majority of its operations, the server runs best if it does not run all the way to the upper limit.  
  
 The default is 5%. If reserved memory falls below this amount, a health rule is triggered warning that the server is low on memory.  The 5% of unused memory is calculated as a percentage of memory allocated to Analysis Services. For example, if you have 200 GB of total memory, and Analysis Services is allocated 80% of that (or 160 GB), then the 5% of unused memory is 5% of 160 GB (or 8 GB).  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|5|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -MaximumConnectionLimit \<Ushort>  
 Specifies the upper limit of user connections, over which the server is considered to have too many. Exceeding this limit triggers a health rule indicating that the server is handling more connections than it is expected to support. The default is 100.  Valid values are 1 to 500.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|100|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -WarnOnLowCPUMachine \<Ushort>  
 Sets a CPU threshold at which a health rule is triggered, warning that the physical server is running low on CPU. This value is expressed as a percentage. The default is 90%. This health rule is triggered if the CPU resources on the computer remains at or above 90% over a 4 hour period (as specified through the DataCollectionInterval parameter).  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|90|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -WarnOnLowCPUOlapService \<Ushort>  
 Sets a CPU threshold at which a health rule is triggered, warning that the SQL Server Analysis Services instance has insufficient CPU. This value is expressed as a percentage. The default is 80%. This health rule is triggered if the CPU resources used by Analysis Services server process (msmdsrv.exe) remains at or above 80% over a 4 hour period (as specified through the DataCollectionInterval parameter).  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|80|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -WarnOnLowDisk \<Ushort>  
 Specifies a percentage of available disk space, below which the server is consider to have insufficient space for caching data. When available disk space falls below this value, a health rule is triggered indicating that disk space is low. The default is 5. Valid values are 1 through 99.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|5|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -DataCollectionInterval \<Ushort>  
 Specifies the data collection period used for calculating the numbers used for triggering health rules. Although the system is monitored constantly, the thresholds used to trigger health rule warnings are calculated using data that was generated over a predefined interval. The default interval is 4 hours. The server retrieves system and usage data collected over the previous 4 hours to evaluate the number of user connections, disk space usage, and CPU and memory utilization rates  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value|4|  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### \<CommonParameters>  
 This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable,OutBuffer and OutVariable. For more information, see [About_CommonParameters](http://go.microsoft.com/fwlink/?linkID=227825).  
  
## Inputs and Outputs  
 The input type is the type of the objects that you can pipe to the cmdlet. The return type is the type of the objects that the cmdlet returns.  
  
|||  
|-|-|  
|Inputs|None.|  
|Outputs|None.|  
  
## Example 1  
  
```  
C:\PS>New-PowerPivotEngineServiceInstance -provision:$true  
```  
  
 Registers a local instance of SQL Server Analysis Services ([!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)]) with SharePoint.  
  
  