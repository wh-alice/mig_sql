---
title: "sysssispackages (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sysdtspackages90_TSQL"
  - "sysdtspackages90"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysssispackages system table"
ms.assetid: 66155dcd-dcdb-4e33-a242-1625828ad8d2
caps.latest.revision: 43
ms.author: "spelluru"
manager: "jhubbard"
---
# sysssispackages (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each package that is saved to [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This table is stored in the **msdb** database.  
  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|The unique identifier of the package.|  
|**id**|**uniqueidentifier**|The GUID of the package.|  
|**description**|**nvarchar**|The optional description of the package.|  
|**createdate**|**datetime**|The date the package was created.|  
|**folderid**|**uniqueidentifier**|The GUID of the logical folder in which [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] lists the package.|  
|**ownersid**|**varbinary**|The unique security identifier of the user who created the package.|  
|**packagedata**|**image**|The package.|  
|**packageformat**|**int**|The format in which the package is saved:<br /><br /> A value of 2 indicates that the package is saved in the [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] format.<br /><br /> A value of 3 indicates that the package is saved in format of [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)][!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]or later.|  
|**packagetype**|**int**|The client that created the package. The possible values are as follows:<br /><br /> 0 (default value)<br /><br /> 1 ([!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Import and Export Wizard)<br /><br /> 3 ([!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Replication)<br /><br /> 5 ([!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer)<br /><br /> 6 (Maintenance Plan Designer or Wizard).<br /><br /> <br /><br /> Note that the values in this column correspond to the <xref:Microsoft.SqlServer.Dts.Runtime.DTSPackageType> enumeration.|  
|**vermajor**|**int**|The latest major version of the package.|  
|**verminor**|**int**|The latest minor version of the package.|  
|**verbuild**|**int**|The latest build of the package.|  
|**vercomments**|**nvarchar**|Comments about the package version.|  
|**verid**|**uniqueidentifier**|The GUID of the package version.|  
|**isencrypted**|**bit**|A Boolean that indicates whether the package is encrypted.|  
|**readrolesid**|**varbinary**|The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] role that can load packages.|  
|**writerolesid**|**varbinary**|The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] role that can save packages.|  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Packages](../../integration-services/integration-services-ssis-packages.md)  
  
  