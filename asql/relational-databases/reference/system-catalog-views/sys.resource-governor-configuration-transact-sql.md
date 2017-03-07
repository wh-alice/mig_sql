---
title: "sys.resource_governor_configuration (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.resource_governor_configuration_TSQL"
  - "sys.resource_governor_configuration"
  - "resource_governor_configuration_TSQL"
  - "resource_governor_configuration"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.resource_governor_configuration catalog view"
ms.assetid: 89099668-1dc6-4b07-9d8b-49bc95c7bfc0
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.resource_governor_configuration (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the stored Resource Governor state.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|classifier_function_id|**int**|The ID of the classifier function as it is stored in the metadata. Is not nullable.<br /><br /> **Note** This function is used to classify new sessions and uses rules to route the workload to the appropriate workload group. For more information, see [Resource Governor](../../../relational-databases/resource-governor/resource-governor.md).|  
|is_enabled|**bit**|Indicates the current state of the Resource Governor:<br /><br /> 0 = Resource Governor is not enabled.<br /><br /> 1 = Resource Governor is enabled.<br /><br /> Is not nullable.|  
|max_outstanding_io_per_volume|**int**|**Applies to**: [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> The maximum number of outstanding I/O per volume.|  
  
## Remarks  
 The catalog view displays the Resource Governor configuration as stored in metadata. To see the in-memory configuration use the corresponding dynamic management view.  
  
## Permissions  
 Requires VIEW ANY DEFINITION permission to view contents, requires CONTROL SERVER permission to change contents.  
  
## Examples  
 The following example shows how to get and compare the stored metadata values and the in-memory values of the Resource Governor configuration.  
  
```  
USE master;  
GO  
-- Get the stored metadata.  
SELECT   
object_schema_name(classifier_function_id) AS 'Classifier UDF schema in metadata',   
object_name(classifier_function_id) AS 'Classifier UDF name in metadata'  
FROM   
sys.resource_governor_configuration;  
GO  
-- Get the in-memory configuration.  
SELECT   
object_schema_name(classifier_function_id) AS 'Active classifier UDF schema',   
object_name(classifier_function_id) AS 'Active classifier UDF name'  
FROM   
sys.dm_resource_governor_configuration;  
GO  
```  
  
## See Also  
 [Resource Governor Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/resource-governor-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [sys.dm_resource_governor_configuration &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-configuration-transact-sql.md)   
 [Resource Governor](../../../relational-databases/resource-governor/resource-governor.md)  
  
  