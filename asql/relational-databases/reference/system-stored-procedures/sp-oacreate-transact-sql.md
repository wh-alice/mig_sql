---
title: "sp_OACreate (Transact-SQL) | Microsoft Docs"
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
  - "sp_OACreate"
  - "sp_OACreate_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_OACreate"
ms.assetid: eb84c0f1-26dd-48f9-9368-13ee4a30a27c
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_OACreate (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates an instance of an OLE object.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_OACreate { progid | clsid } , objecttoken OUTPUT [ , context ]   
```  
  
## Arguments  
 *progid*  
 Is the programmatic identifier (ProgID) of the OLE object to create. This character string describes the class of the OLE object and has the form: **'***OLEComponent***.***Object***'**  
  
 *OLEComponent* is the component name of the OLE Automation server, and *Object* is the name of the OLE object. The specified OLE object must be valid and must support the **IDispatch** interface.  
  
 For example, SQLDMO.SQLServer is the ProgID of the SQL-DMO **SQLServer** object. SQL-DMO has a component name of SQLDMO, the **SQLServer** object is valid, and (like all SQL-DMO objects) the **SQLServer** object supports **IDispatch**.  
  
 *clsid*  
 Is the class identifier (CLSID) of the OLE object to create. This character string describes the class of the OLE object and has the form: **'{***nnnnnnnn-nnnn-nnnn-nnnn-nnnnnnnnnnnn***}'**. The specified OLE object must be valid and must support the **IDispatch** interface.  
  
 For example, {00026BA1-0000-0000-C000-000000000046} is the CLSID of the SQL-DMO **SQLServer** object.  
  
 *objecttoken* **OUTPUT**  
 Is the returned object token, and must be a local variable of data type **int**. This object token identifies the created OLE object and is used in calls to the other OLE Automation stored procedures.  
  
 *context*  
 Specifies the execution context in which the newly created OLE object runs. If specified, this value must be one of the following:  
  
 **1** = In-process (.dll) OLE server only.  
  
 **4** = Local (.exe) OLE server only.  
  
 **5** = Both in-process and local OLE server allowed  
  
 If not specified, the default value is **5**. This value is passed as the *dwClsContext* parameter of the call to **CoCreateInstance**.  
  
 If an in-process OLE server is allowed (by using a context value of **1** or **5** or by not specifying a context value), it has access to memory and other resources owned by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. An in-process OLE server may damage [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] memory or resources and cause unpredictable results, such as a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] access violation.  
  
 When you specify a context value of **4**, a local OLE server does not have access to any [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] resources, and it cannot damage [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] memory or resources.  
  
> [!NOTE]  
>  The parameters for this stored procedure are specified by position, not by name.  
  
## Return Code Values  
 0 (success) or a nonzero number (failure) that is the integer value of the HRESULT returned by the OLE Automation object.  
  
 For more information about HRESULT Return Codes, see [OLE Automation Return Codes and Error Information](../../../relational-databases/reference/stored-procedures/ole-automation-return-codes-and-error-information.md).  
  
## Remarks  
 If OLE automation procedures are enabled, a call to **sp_OACreate** will start the OLE Automation shared execution environment. For more information about enabling OLE automation, see [Ole Automation Procedures Server Configuration Option](../../../database-engine/configure/windows/ole-automation-procedures-server-configuration-option.md).  
  
 The created OLE object is automatically destroyed at the end of the [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statement batch.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
  
### A. Using ProgID  
 The following example creates a SQL-DMO **SQLServer** object by using its ProgID.  
  
```  
DECLARE @object int;  
DECLARE @hr int;  
DECLARE @src varchar(255), @desc varchar(255);  
EXEC @hr = sp_OACreate 'SQLDMO.SQLServer', @object OUT;  
IF @hr <> 0  
BEGIN  
   EXEC sp_OAGetErrorInfo @object, @src OUT, @desc OUT   
   raiserror('Error Creating COM Component 0x%x, %s, %s',16,1, @hr, @src, @desc)  
    RETURN  
END;  
GO  
```  
  
### B. Using CLSID  
 The following example creates a SQL-DMO **SQLServer** object by using its CLSID.  
  
```  
DECLARE @object int;  
DECLARE @hr int;  
DECLARE @src varchar(255), @desc varchar(255);  
EXEC @hr = sp_OACreate '{00026BA1-0000-0000-C000-000000000046}',  
    @object OUT;  
IF @hr <> 0  
BEGIN  
   EXEC sp_OAGetErrorInfo @object, @src OUT, @desc OUT   
   raiserror('Error Creating COM Component 0x%x, %s, %s',16,1, @hr, @src, @desc)  
    RETURN  
END;  
GO  
```  
  
## See Also  
 [OLE Automation Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/ole-automation-stored-procedures-transact-sql.md)   
 [Ole Automation Procedures Server Configuration Option](../../../database-engine/configure/windows/ole-automation-procedures-server-configuration-option.md)   
 [OLE Automation Sample Script](../../../relational-databases/reference/stored-procedures/ole-automation-sample-script.md)  
  
  