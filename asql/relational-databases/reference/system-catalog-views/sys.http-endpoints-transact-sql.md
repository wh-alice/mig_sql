---
title: "sys.http_endpoints (Transact-SQL) | Microsoft Docs"
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
  - "sys.http_endpoints"
  - "http_endpoints"
  - "sys.http_endpoints_TSQL"
  - "http_endpoints_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.http_endpoints catalog view"
ms.assetid: 16f59695-ecd9-457e-8874-055af63f8ea7
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.http_endpoints (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each endpoint created in the server that uses the HTTP protocol.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**\< inherited columns>**||Inherits columns from [sys.endpoints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.endpoints-transact-sql.md).|  
|**site**|**nvarchar(128)**|Name of the host computer for the site, as specified in the SITE = option.|  
|**url_path**|**nvarchar(4000)**|Path-only portion of the URL for this HTTP endpoint, as specified by the PATH= option.|  
|**is_clear_port_enabled**|**bit**|1 = Clear port is enabled using the PORT = CLEAR option.|  
|**clear_port**|**int**|Port number specified in the CLEAR PORT = option.<br /><br /> NULL = Not specified.|  
|**is_ssl_port_enabled**|**bit**|1 = SSL port is enabled using the PORT = SSL option.|  
|**ssl_port**|**int**|Port number value specified in the SSL PORT = option.<br /><br /> NULL = Not specified.|  
|**is_anonymous_enabled**|**bit**|1 = Anonymous access is enabled using the AUTHENTICATION = ANONYMOUS option.|  
|**is_basic_auth_enabled**|**bit**|1 = Basic authentication is enabled using the AUTHENTICATION = BASIC option.|  
|**is_digest_auth_enabled**|**bit**|1 = Digest authentication is enabled using the AUTHENTICATION = DIGEST option.|  
|**is_kerberos_auth_enabled**|**bit**|1 = Integrated authentication enabled using the AUTHENTICATION = KERBEROS option.|  
|**is_ntlm_auth_enabled**|**bit**|1 = Integrated authentication enabled using the AUTHENTICATION = NTLM option.|  
|**is_integrated_auth_enabled**|**bit**|1 = Integrated authentication is enabled using the AUTHENTICATION = INTEGRATED option.|  
|**authorization_realm**|**nvarchar(128)**|Hint that is returned to the client as part of the HTTP DIGEST authentication challenge. The value of the AUTH REALM option.<br /><br /> Is NULL if not specified or if DIGEST authentication is not enabled.|  
|**default_logon_domain**|**nvarchar(128)**|Default login domain if you enable BASIC authentication. The value of the DEFAULT LOGON DOMAIN option.<br /><br /> Is NULL if not specified or if BASIC authentication is not enabled.|  
|**is_compression_enabled**|**bit**|1 = COMPRESSION = ENABLED option is set.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Endpoints Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/endpoints-catalog-views-transact-sql.md)  
  
  