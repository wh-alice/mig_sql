---
title: "MSdistpublishers (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSdistpublishers"
  - "MSdistpublishers_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSdistpublishers system table"
ms.assetid: 31844099-4b33-4dc9-84b4-bac70aa82598
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSdistpublishers (Transact-SQL)
  The **MSdistpublishers** table contains one row for each remote Publisher supported by the local Distributor. This table is stored in the **msdb** database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|The name of the Publisher Distributor.|  
|**distribution_db**|**sysname**|The name of the distribution database.|  
|**working_directory**|**nvarchar(255)**|The name of the working directory used to store data and schema files for the publication.|  
|**security_mode**|**int**|The security mode implemented at the Distributor:<br /><br /> **0** = [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.<br /><br /> **1** = Windows Authentication.|  
|**login**|**sysname**|The login ID for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.|  
|**password**|**nvarchar(524)**|The password (encrypted) for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.|  
|**active**|**bit**|Indicates whether the local Distributor is in use by the remote Publisher.|  
|**trusted**|**bit**|Indicates whether the remote Publisher uses the same password as the local Distributor:<br /><br /> **0** = A password is needed at the remote Publisher to connect to the Distributor.<br /><br /> **1** = No password is needed.|  
|**third_party**|**bit**|Whether the Publisher is an installation of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:<br /><br /> **0** = [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation.**1** = Heterogeneous data source.|  
|**publisher_type**|**sysname**|Publisher type:<br /><br /> **MSSQLSERVER** = [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher.<br /><br /> **ORACLE** = standard Oracle Publisher.<br /><br /> **ORACLE GATEWAY** = Oracle Gateway Publisher.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  