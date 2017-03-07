---
title: "Install PolyBase using a command prompt | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4a252dcc-7667-4cec-8cc2-43b34dc97f2e
caps.latest.revision: 8
ms.author: "barbkess"
manager: "jhubbard"
robots: noindex,nofollow
---
# Install PolyBase using a command prompt
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  You can install PolyBase using a command line, which allows repeatable installation scripts to be generated. See also [Install SQL Server 2016 from the Command Prompt](../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md)  
  
## Prerequisites  
  
-   64-bit SQL Server Evaluation edition.  
  
-   [Oracle Java SE RunTime Environment](http://www.oracle.com/technetwork/java/javase/downloads/index.html) (JRE) version 7.51 or higher (64-bit). Go to downloads. The installer will fail if JRE is not present.  
  
-   An external data source, either Windows Azure blob storage, or a supported Hadoop version (see [PolyBase Connectivity Configuration &#40;Transact-SQL&#41;](../database-engine/configure/windows/polybase-connectivity-configuration-transact-sql.md)).  
  
-   Microsoft .NET Framework 4.0. Go to the [.NET Framework 4 (Web Installer)](https://www.microsoft.com/download/details.aspx?id=17851)  
  
 Use the values in this table to create installation scripts. The two services **SQL ServerPolyBase Engine** and **SQL Server PolyBase Data Movement Service** must run under the same account. In a PolyBase scale-out group, both PolyBase services on all nodes must run under the same domain account.  
  
|SQL Server component|Parameter and values|Description|  
|--------------------------|--------------------------|-----------------|  
|SQL Server setup control|**Required**<br /><br /> /FEATURES=PolyBase|Selects PolyBase feature.|  
|SQL Server PolyBase Engine|**Optional**<br /><br /> /PBENGSVCACCOUNT|Specifies the account for the engine service. The default is **NT Authority\NETWORK SERVICE**.|  
|SQL Server PolyBase Engine|**Optional**<br /><br /> /PBENGSVCPASSWORD|Specifies the password for the engine service account.|  
|SQL Server PolyBase Engine|**Optional**<br /><br /> /PBENGSVCSTARTUPTYPE|Specifies the startup mode for the PolyBase engine service: Automatic (default) , Disabled,  and Manual|  
|SQL Server PolyBase Data Movement Service|**Optional**<br /><br /> /PBDMSSVCACCOUNT|Specifies the account for data movement service. The default is **NT Authority\NETWORK SERVICE**.|  
|SQL Server PolyBase Data Movement Service|**Optional**<br /><br /> /PBDMSSVCPASSWORD|Specifies the password for the data movement account.|  
|SQL Server PolyBase Data Movement Service|**Optional**<br /><br /> /PBDMSSVCSTARTUPTYPE|Specifies the startup mode for the data movement service: Automatic (default) , Disabled,  and Manual|  
|PolyBase|**Optional**<br /><br /> /PBSCALEOUT|Specifies if the SQL Server instance will be used as a part of PolyBase Scale-out computational group. <br />Supported values: **True**, **False**|  
|PolyBase|**Optional**<br /><br /> /PBPORTRANGE|Specifies a port range with at least 6 ports for PolyBase services. Example:<br /><br /> `/PBPORTRANGE=16450-16460`|  
  
 **Example**  
  
 This shows a sample setup script.  
  
```  
  
Setup.exe /Q /ACTION=INSTALL /IACCEPTSQLSERVERLICENSETERMS /FEATURES=SQLEngine,Polybase   
/INSTANCENAME=MSSQLSERVER /SQLSYSADMINACCOUNTS="<fabric-domain>\Administrator"   
/INSTANCEDIR="C:\Program Files\Microsoft SQL Server" /PBSCALEOUT=TRUE   
/PBPORTRANGE=16450-16460 /SECURITYMODE=SQL /SAPWD="<StrongPassword>"   
/PBENGSVCACCOUNT="<DomainName>\<UserName>" /PBENGSVCPASSWORD="<StrongPassword>"   
/PBDMSSVCACCOUNT="<DomainName>\<UserName>" /PBDMSSVCPASSWORD="<StrongPassword>"  
  
```  
  
  