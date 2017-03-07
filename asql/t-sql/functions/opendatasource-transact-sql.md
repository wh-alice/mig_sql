---
title: "OPENDATASOURCE (Transact-SQL) | Microsoft Docs"
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
  - "OPENDATASOURCE"
  - "OPENDATASOURCE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "data sources [SQL Server]"
  - "OPENDATASOURCE function"
  - "remote data access [SQL Server], OPENDATASOURCE"
  - "ad hoc distributed queries"
  - "OLE DB data sources [SQL Server]"
  - "ad hoc connection information"
ms.assetid: 5510b846-9cde-4687-8798-be9a273aad31
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# OPENDATASOURCE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Provides ad hoc connection information as part of a four-part object name without using a linked server name.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
OPENDATASOURCE ( provider_name, init_string )  
```  
  
## Arguments  
 *provider_name*  
 Is the name registered as the PROGID of the OLE DB provider used to access the data source. *provider_name* is a **char** data type, with no default value.  
  
 *init_string*  
 Is the connection string passed to the IDataInitialize interface of the destination provider. The provider string syntax is based on keyword-value pairs separated by semicolons, such as: **'***keyword1*=*value***;***keyword2*=*value***'**.  
  
 For specific keyword-value pairs supported on the provider, see the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Data Access SDK. This documentation defines the basic syntax. The following table lists the most frequently used keywords in the *init_string* argument.  
  
|Keyword|OLE DB property|Valid values and description|  
|-------------|---------------------|----------------------------------|  
|Data Source|DBPROP_INIT_DATASOURCE|Name of the data source to connect to. Different providers interpret this in different ways. For [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider, this indicates the name of the server. For Jet OLE DB provider, this indicates the full path of the .mdb file or .xls file.|  
|Location|DBPROP_INIT_LOCATION|Location of the database to connect to.|  
|Extended Properties|DBPROP_INIT_PROVIDERSTRING|The provider-specific connect-string.|  
|Connect timeout|DBPROP_INIT_TIMEOUT|Time-out value after which the connection try fails.|  
|User ID|DBPROP_AUTH_USERID|User ID to be used for the connection.|  
|Password|DBPROP_AUTH_PASSWORD|Password to be used for the connection.|  
|Catalog|DBPROP_INIT_CATALOG|The name of the initial or default catalog when connecting to the data source.|  
|Integrated Security|DBPROP_AUTH_INTEGRATED|SSPI, to specify Windows Authentication|  
  
## Remarks  
 OPENDATASOURCE can be used to access remote data from OLE DB data sources only when the DisallowAdhocAccess registry option is explicitly set to 0 for the specified provider, and the Ad Hoc Distributed Queries advanced configuration option is enabled. When these options are not set, the default behavior does not allow for ad hoc access.  
  
 The OPENDATASOURCE function can be used in the same [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] syntax locations as a linked-server name. Therefore, OPENDATASOURCE can be used as the first part of a four-part name that refers to a table or view name in a SELECT, INSERT, UPDATE, or DELETE statement, or to a remote stored procedure in an EXECUTE statement. When executing remote stored procedures, OPENDATASOURCE should refer to another instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. OPENDATASOURCE does not accept variables for its arguments.  
  
 Like the OPENROWSET function, OPENDATASOURCE should only reference OLE DB data sources that are accessed infrequently. Define a linked server for any data sources accessed more than several times. Neither OPENDATASOURCE nor OPENROWSET provide all the functionality of linked-server definitions, such as security management and the ability to query catalog information. All connection information, including passwords, must be provided every time that OPENDATASOURCE is called.  
  
> [!IMPORTANT]  
>  Windows Authentication is much more secure than [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication. You should use Windows Authentication whenever possible. OPENDATASOURCE should not be used with explicit passwords in the connection string.  
  
 The connection requirements for each provider are similar to the requirements for those parameters when creating linked servers. The details for many common providers are listed in the topic [sp_addlinkedserver &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addlinkedserver-transact-sql.md).  
  
 Any call to OPENDATASOURCE, OPENQUERY, or OPENROWSET in the FROM clause is evaluated separately and independently from any call to these functions used as the target of the update, even if identical arguments are supplied to the two calls. In particular, filter or join conditions applied on the result of one of those calls have no effect on the results of the other.  
  
## Permissions  
 Any user can execute OPENDATASOURCE. The permissions that are used to connect to the remote server are determined from the connection string.  
  
## Examples  
 The following example creates an ad hoc connection to the `Payroll` instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on server `London`, and queries the `AdventureWorks2012.HumanResources.Employee` table. (Use SQLNCLI and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will redirect to the latest version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider.)  
  
```  
SELECT *  
FROM OPENDATASOURCE('SQLNCLI',  
    'Data Source=London\Payroll;Integrated Security=SSPI')  
    .AdventureWorks2012.HumanResources.Employee  
```  
  
 The following example creates an ad hoc connection to an Excel spreadsheet in the 1997 - 2003 format.  
  
```  
SELECT * FROM OPENDATASOURCE('Microsoft.Jet.OLEDB.4.0',  
'Data Source=C:\DataFolder\Documents\TestExcel.xls;Extended Properties=EXCEL 5.0')...[Sheet1$] ;  
```  
  
## See Also  
 [OPENROWSET &#40;Transact-SQL&#41;](../../t-sql/functions/openrowset-transact-sql.md)   
 [sp_addlinkedserver &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addlinkedserver-transact-sql.md)  
  
  