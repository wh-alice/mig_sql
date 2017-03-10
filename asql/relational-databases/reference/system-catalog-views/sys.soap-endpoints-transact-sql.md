---
title: "sys.soap_endpoints (Transact-SQL) | Microsoft Docs"
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
  - "soap_endpoints_TSQL"
  - "sys.soap_endpoints"
  - "soap_endpoints"
  - "sys.soap_endpoints_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.soap_endpoints catalog view"
ms.assetid: f50dcbfc-02ed-4a19-9c07-c78a5a1b3224
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.soap_endpoints (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
 Contains one row for each endpoint in the server that carries a SOAP-type payload. For every row in this view, there is a corresponding row with the same **endpoint_id** in the **sys.http_endpoints** catalog view that carries the HTTP configuration metadata.  
  
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**\< inherited columns>**||For a list of columns that this view inherits, see [sys.endpoints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.endpoints-transact-sql.md).|  
|**is_sql_language_enabled**|**bit**|1 = BATCHES = ENABLED option was specified, meaning that ad-hoc SQL batches are allowed on the endpoint.|  
|**wsdl_generator_procedure**|**nvarchar(776)**|The three-part name of the stored procedure that implements this method.<br /><br /> Names of methods require strict three-part syntax. one, two, or four-part names are not allowed.|  
|**default_database**|**sysname**|The name of the default database given in the DATABASE = option.<br /><br /> NULL = DEFAULT was specified.|  
|**default_namespace**|**nvarchar(384)**|The default namespace specified in the NAMESPACE = option, or 'http://tempuri.org' if DEFAULT was specified instead.|  
|**default_result_schema**|**tinyint**|The default value of the SCHEMA = option.<br /><br /> 0 = NONE<br /><br /> 1 = STANDARD|  
|**default_result_schema_desc**|**nvarchar(60)**|Description of the default value of the SCHEMA = option.<br /><br /> NONE<br /><br /> STANDARD|  
|**is_xml_charset_enforced**|**bit**|0 = CHARACTER_SET = SQL option was specified.<br /><br /> 1 = CHARACTER_SET = XML option was specified.|  
|**is_session_enabled**|**bit**|0 = SESSION = DISABLE option was specified.<br /><br /> 1 = SESSION = ENABLED option was specified.|  
|**session_timeout**|**int**|Value specified in SESSION_TIMEOUT = option.|  
|**login_type**|**nvarchar(60)**|Kind of authentication allowed on this endpoint.<br /><br /> WINDOWS<br /><br /> MIXED|  
|**header_limit**|**int**|Maximum allowable size of the SOAP header.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Endpoints Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/endpoints-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
  