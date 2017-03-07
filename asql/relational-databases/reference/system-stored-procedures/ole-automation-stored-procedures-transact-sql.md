---
title: "OLE Automation Stored Procedures (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "system stored procedures [SQL Server], OLE Automation"
  - "OLE Automation [SQL Server], stored procedures"
ms.assetid: ff16a833-01fe-4877-8aa6-55b72603ec2e
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# OLE Automation Stored Procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] supports the following system stored procedures that allow OLE Automation objects to be used within a [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] batch. By default, [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] blocks access to OLE Automation stored procedures because this component is turned off as part of the security configuration for this server. A system administrator can enable access to OLE Automation procedures by using sp_configure. For more information, see [Surface Area Configuration](../../../relational-databases/security/surface-area-configuration.md).  
  
|||  
|-|-|  
|[sp_OACreate](../../../relational-databases/reference/system-stored-procedures/sp-oacreate-transact-sql.md)|[sp_OAMethod](../../../relational-databases/reference/system-stored-procedures/sp-oamethod-transact-sql.md)|  
|[sp_OADestroy](../../../relational-databases/reference/system-stored-procedures/sp-oadestroy-transact-sql.md)|[sp_OASetProperty](../../../relational-databases/reference/system-stored-procedures/sp-oasetproperty-transact-sql.md)|  
|[sp_OAGetErrorInfo](../../../relational-databases/reference/system-stored-procedures/sp-oageterrorinfo-transact-sql.md)|[sp_OAStop](../../../relational-databases/reference/system-stored-procedures/sp-oastop-transact-sql.md)|  
|[sp_OAGetProperty](../../../relational-databases/reference/system-stored-procedures/sp-oagetproperty-transact-sql.md)|[Object Hierarchy Syntax &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/object-hierarchy-syntax-transact-sql.md)|  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Ole Automation Procedures Server Configuration Option](../../../database-engine/configure/windows/ole-automation-procedures-server-configuration-option.md)  
  
  