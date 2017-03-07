---
title: "Configure and Manage Advanced Analytics Extensions | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-11-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8d73fd98-0c61-4a62-94bb-75658195f2a6
caps.latest.revision: 21
ms.author: "jeannt"
manager: "jhubbard"
---
# Configure and Manage Advanced Analytics Extensions
  After you have installed [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)], you can make minor changes in the configuration of the R runtime and other services associated with [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] .  
  
  
 **In This Topic**  
  
-   [Provisioning User Accounts for SQL Server R Services](#bkmk_Provisioning)  
  
-   [Managing Memory Use by R Processes](#bkmk_ManagingMemory)  
  
-   [Changing the Service Defaults using the Configuration File](#bkmk_ChangingConfig) 

-   [Modifying the Launchpad Service Account](#bkmk_Launchpad) 
  
##  <a name="bkmk_Provisioning"></a> Provisioning User Accounts for SQL Server R Services  
 R runtime processes in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] run in the context of low-privilege local user accounts. Running R runtime processes in individual low-privilege accounts has the following benefits:  
  
-   Reduce privileges of the R runtime processes running on the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] computer  
  
-   Provide isolation between the R runtime sessions  
  
 As part of installation process in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)], a new Windows *user account pool* is created that contains the local user accounts required for running the R runtime process. You can modify the number of users if needed to support R. Your database administrator must also give this group permission to connect to any instance where R Services has been enabled. For more information, see [Modify the User Account Pool for SQL Server R Services](../../advanced-analytics/r-services/modify-the-user-account-pool-for-sql-server-r-services.md).  
  
 However, an access control list (ACL) can be defined for sensitive resources on the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] to deny access to this group to prevent the R runtime process from getting access to the resources.  
  
-   The user account pool is linked to a specific instance.  For each instance on which R script has been enabled, a separate pool of worker accounts are created. Accounts cannot be shared between instances.
  
-   User account names in the pool are of the format SQLInstanceName*nn*. For example, if you are using the default instance as your R server, the user account pool supports account names such as MSSQLSERVER01, MSSQLSERVER02, and so forth.  
  
-   The size of the user account pool is static and the default value is 20. The number of R runtime sessions that can be launched simultaneously is limited by the size of this user account pool. However, this limit can be changed by an administrator by using SQL Server Configuration Manager.  
  
  
 For more information about how to make changes to the user account pool, see [Modify the User Account Pool for SQL Server R Services](../../advanced-analytics/r-services/modify-the-user-account-pool-for-sql-server-r-services.md).  
  
##  <a name="bkmk_ManagingMemory"></a> Managing Memory Use by R Processes  
 By default, the R runtime processes associated with [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] are limited to using no more than 20% of total machine memory. However, this limit can be increased by the administrator, if needed.  
  
 Generally, this amount will be inadequate for serious R tasks such as training model or predicting on many rows of data. You might need to reduce the amount of memory reserved for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] (or for other services) and use Resource Governor to define an external resource pool or pools and allocate. For more information, see [Resource Governance for R Services](../../advanced-analytics/r-services/resource-governance-for-r-services.md).  
  
##  <a name="bkmk_ChangingConfig"></a> Changing Advanced Service Options using the Configuration File  
 
You can control some advanced properties of [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] by editing the [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] configuration file. This file is created during [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] setup and by default is saved as a plain text file in the following location:  
 
```  
<instance path>\binn\rlauncher.config  
```  
  
 You must be an administrator on the computer that is running [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] to make changes to this file. If you edit the file, we recommend that you make a backup copy before saving changes.  
  
 For example, to use Notepad to open the configuration file for the default instance (MSSQLSERVER) , you would open a command prompt as administrator, and type the following command:  
  
```  
C:\>Notepad.exe "%programfiles%\Microsoft SQL Server\MSSQL13.MSSQLSERVER\mssql\binn\rlauncher.config"  
  
```  
  
###  <a name="bkmk_properties"></a> Configuration Properties  
 All settings take the form of a key-value pair, with each setting on a separate line. For example, this property specifies the trace level for rlauncher:  
  
 Default: TRACE_LEVEL=4  
  
 The following table lists each of the settings supported for [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)], with the permissible values.  
  
|Setting name|Value type|Default|Description|  
|------------------|----------------|-------------|-----------------|  
|JOB_CLEANUP_ON_EXIT|Integer<br /><br /> 0 = Disabled<br /><br /> 1 = Enabled|1<br /><br /> Log files are removed on exit|Specifies whether the temporary working folder created for each R session should be cleaned up after the R session is completed. This setting is useful for debugging.<br /><br /> Note: This is an internal setting only – do not change this value.|  
|TRACE_LEVEL|Integer<br /><br /> 1 = Error<br /><br /> 2 = Performance<br /><br /> 3 = Warning<br /><br /> 4 = Information|1<br /><br /> Output warnings only|Configures the trace verbosity level of the R launcher (MSSQLLAUNCHPAD) for debugging purposes. This setting affects the verbosity of the traces stored in the following trace files, both of which are located in the path specified by the LOG_DIRECTORY setting:<br /><br /> **rlauncher.log**: The trace file generated for R sessions launched by T-SQL queries.<br /><br /> For more information about this scenario, see [Data Exploration and Predictive Modeling with R](../../advanced-analytics/r-services/data-exploration-and-predictive-modeling-with-r.md).|  

## <a name="bkmk_Launchpad"></a>Modifying the Launchpad Service Account

A separate [!INCLUDE[rsql_launchpad_md](../../a9notintoc/includes/rsql-launchpad-md.md)] service is created for each instance on which you have configured [!INCLUDE[rsql_productname_md](../../a9notintoc/includes/rsql-productname-md.md)]. 

By default, the Launchpad is configured to run using the account, NT Service\MSSQLLaunchpad, which is provisioned with all necessary permissions to run R scripts. However, if you change this account, the Launchpad might not be able to start or to access the SQL Server instance where R scripts should be run.
 
  If you modify the service account, be sure to use the **Local Security Policy** application and update the permissions on each service account to include these permissions:
  + Adjust memory quotas for a process (SeIncreaseQuotaPrivilege)
  + Bypass traverse checking (SeChangeNotifyPrivilege)
  + Log on as a service (SeServiceLogonRight)
  + Replace a process-level token (SeAssignPrimaryTokenPrivilege)

For more information about permissions required to run SQL Server services, see [Configure Windows Service Accounts and Permissions](https://msdn.microsoft.com/library/ms143504.aspx#Windows).
   
## See Also  
 [Getting Started with SQL Server R Services](../../advanced-analytics/r-services/getting-started-with-sql-server-r-services.md)  
  
  