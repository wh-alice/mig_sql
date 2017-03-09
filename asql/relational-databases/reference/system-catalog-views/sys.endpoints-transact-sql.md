---
title: "sys.endpoints (Transact-SQL) | Microsoft Docs"
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
  - "endpoints"
  - "sys.endpoints"
  - "endpoints_TSQL"
  - "sys.endpoints_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.endpoints catalog view"
ms.assetid: e6dafa4e-e47e-43ec-acfc-88c0af53c1a1
caps.latest.revision: 45
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.endpoints (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row per endpoint that is created in the system. There is always exactly one SYSTEM endpoint.  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Name of the endpoint. Is unique within the server. Is not nullable.|  
|**endpoint_id**|**int**|ID of the endpoint. Is unique within the server. An endpoint with an ID less then 65536 is a system endpoint. Is not nullable.|  
|**principal_id**|**int**|ID of the server principal that created and owns this endpoint. Is nullable.|  
|**protocol**|**tinyint**|Endpoint protocol.<br /><br /> 1 = HTTP<br /><br /> 2 = TCP<br /><br /> 3 = Name pipes<br /><br /> 4 = Shared memory<br /><br /> 5 = Virtual Interface Adapter (VIA)<br /><br /> Is not nullable.|  
|**protocol_desc**|**nvarchar(60)**|Description of the endpoint protocol. NULLABLE. One of the following values:<br /><br /> **HTTP**<br /><br /> **TCP**<br /><br /> **NAMED_PIPES**<br /><br /> **SHARED_MEMORY**<br /><br /> **VIA** Note: The VIA protocol is deprecated. [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]|  
|**type**|**tinyint**|Endpoint payload type.<br /><br /> 1 = SOAP<br /><br /> 2 = TSQL<br /><br /> 3 = SERVICE_BROKER<br /><br /> 4 = DATABASE_MIRRORING<br /><br /> Is not nullable.|  
|**type_desc**|**nvarchar(60)**|Description of the endpoint payload type. Is nullable. One of the following values:<br /><br /> **SOAP**<br /><br /> **TSQL**<br /><br /> **SERVICE_BROKER**<br /><br /> **DATABASE_MIRRORING**|  
|**state**|**tinyint**|The endpoint state.<br /><br /> 0 = STARTED, listening and processing requests.<br /><br /> 1 = STOPPED, listening, but not processing requests.<br /><br /> 2 = DISABLED, not listening.<br /><br /> The default state is 1. Is nullable.|  
|**state_desc**|**nvarchar(60)**|Description of the endpoint state.<br /><br /> STARTED = Listening and processing requests.<br /><br /> STOPPED = Listening, but not processing requests.<br /><br /> DISABLED = Not listening.<br /><br /> The default state is STOPPED.<br /><br /> Is nullable.|  
|**is_admin_endpoint**|**bit**|Indicates whether the endpoint is for administrative use.<br /><br /> 0 = Nonadministrative endpoint.<br /><br /> 1 = Endpoint is an administrative endpoint.<br /><br /> Is not nullable.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Endpoints Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/endpoints-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
  