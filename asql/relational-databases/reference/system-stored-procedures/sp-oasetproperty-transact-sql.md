---
title: "sp_OASetProperty (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_OASetProperty"
  - "sp_OASetProperty_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_OASetProperty"
ms.assetid: 0fe7d554-6b67-4d55-9d3e-4096802c47f8
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_OASetProperty (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Sets a property of an OLE object to a new value.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_OASetProperty objecttoken , propertyname , newvalue [ , index... ]  
```  
  
## Arguments  
 *objecttoken*  
 Is the object token of an OLE object that was previously created by **sp_OACreate**.  
  
 *propertyname*  
 Is the property name of the OLE object to set to a new value.  
  
 *newvalue*  
 Is the new value of the property, and must be a value of the appropriate data type.  
  
 *index*  
 Is an index parameter. If specified, *index* must be a value of the appropriate data type.  
  
 Some properties have parameters. These properties are called indexed properties, and the parameters are called index parameters. A property can have multiple index parameters.  
  
> [!NOTE]  
>  The parameters for this stored procedure are specified by position, not name.  
  
## Return Code Values  
 0 (success) or a nonzero number (failure) that is the integer value of the HRESULT returned by the OLE Automation object.  
  
 For more information about HRESULT Return Codes, see [OLE Automation Return Codes and Error Information](../../../relational-databases/reference/stored-procedures/ole-automation-return-codes-and-error-information.md).  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example sets the `HostName` property (of the previously created **SQLServer** object) to a new value.  
  
```  
EXEC @hr = sp_OASetProperty @object, 'HostName', 'Gizmo';  
IF @hr <> 0  
BEGIN  
   EXEC sp_OAGetErrorInfo @object  
    RETURN  
END'  
```  
  
## See Also  
 [OLE Automation Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/ole-automation-stored-procedures-transact-sql.md)   
 [OLE Automation Sample Script](../../../relational-databases/reference/stored-procedures/ole-automation-sample-script.md)  
  
  