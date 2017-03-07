---
title: "CREATE EXTERNAL DATA SOURCE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-01-04"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CREATE EXTERNAL DATA SOURCE"
  - "CREATE_EXTERNAL_DATA_SOURCE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "External"
  - "External, data source"
  - "PolyBase, create data source"
ms.assetid: 75d8a220-0f4d-4d91-8ba4-9d852b945509
caps.latest.revision: 58
ms.author: "barbkess"
manager: "jhubbard"
---
# CREATE EXTERNAL DATA SOURCE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  Creates an external data source for PolyBase, Elastic Database queries, or Azure Blob storage. Depending on the scenario, the syntax differs significantly. A data source created for PolyBase cannot be used for Elastic Database queries.  Similarly, a data source created for Elastic Database queries cannot be used for PolyBase, etc. 
  
> [!NOTE]  
>  PolyBase is supported only on SQL Server 2016, Azure SQL Data Warehouse, and Parallel Data Warehouse. Elastic Database queries are supported only on Azure SQL Database v12 or later.  
  
 For PolyBase scenarios, the external data source is either a Hadoop File System (HDFS), an Azure storage blob container, or Azure Data Lake Store. For more information, see [Get started with PolyBase](../../relational-databases/polybase/get-started-with-polybase.md).  
  
 For Elastic Database query scenarios, the external source is either a shard map manager (on Azure SQL Database), or a remote database (on Azure SQL Database).  Use [sp_execute_remote &#40;Azure SQL Database&#41;](../../relational-databases/reference/system-stored-procedures/sp-execute-remote-azure-sql-database.md) after creating an external data source. For more information, see  [Elastic Database query](https://azure.microsoft.com/documentation/articles/sql-database-elastic-query-overview/).  

  The Azure Blob storage external data source supports `BULK INSERT` and `OPENROWSET` syntax, and is different than Azure Blob storage for PolyBase.
    
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- PolyBase only:  Hadoop cluster as data source   
-- (on SQL Server 2016)  
CREATE EXTERNAL DATA SOURCE data_source_name  
    WITH (   
        TYPE = HADOOP,
        LOCATION = 'hdfs://NameNode_URI[:port]'  
        [, RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI[:port]' ]  
        [, CREDENTIAL = credential_name ]
    )
[;]  
  
-- PolyBase only: Azure Storage Blob as data source   
-- (on SQL Server 2016 and Azure SQL Data Warehouse)  
CREATE EXTERNAL DATA SOURCE data_source_name  
    WITH (   
        TYPE = HADOOP,  
        LOCATION = 'wasb[s]://container@account_name.blob.core.windows.net'
        [, CREDENTIAL = credential_name ]
    )  
[;]

-- PolyBase only: Azure Data Lake Store
-- (on Azure SQL Data Warehouse)
CREATE EXTERNAL DATA SOURCE AzureDataLakeStore
WITH (
    TYPE = HADOOP,
    LOCATION = 'adl://<AzureDataLake account_name>.azuredatalake.net',
    CREDENTIAL = AzureStorageCredential
);

-- PolyBase only: Hadoop cluster as data source
-- (on Parallel Data Warehouse)
CREATE EXTERNAL DATA SOURCE data_source_name
    WITH ( 
        TYPE = HADOOP, 
        LOCATION = 'hdfs://NameNode_URI[:port]'
        [, JOB_TRACKER_LOCATION = 'JobTracker_URI[:port]' ]
    )
[;]

-- PolyBase only: Azure Storage Blob as data source 
-- (on Parallel Data Warehouse)
CREATE EXTERNAL DATA SOURCE data_source_name
    WITH ( 
        TYPE = HADOOP,
        LOCATION = 'wasb[s]://container@account_name.blob.core.windows.net'
    )
[;]
  
-- Elastic Database query only: a shard map manager as data source   
-- (only on Azure SQL Database v12 or later)  
CREATE EXTERNAL DATA SOURCE data_source_name  
    WITH (   
        TYPE = SHARD_MAP_MANAGER,  
        LOCATION = '<server_name>.database.windows.net',  
        DATABASE_NAME = '<ElasticDatabase_ShardMapManagerDb'>,  
        CREDENTIAL = <ElasticDBQueryCred>,  
        SHARD_MAP_NAME = '<ShardMapName>'  
    )  
[;]  
  
-- Elastic Database query only: a remote database on Azure SQL Database as data source   
-- (only on Azure SQL Database v12 or later)  
CREATE EXTERNAL DATA SOURCE data_source_name  
    WITH (   
        TYPE = RDBMS,  
        LOCATION = '<server_name>.database.windows.net',  
        DATABASE_NAME = '<Remote_Database_Name>',  
        CREDENTIAL = <SQL_Credential>  
    )  
[;]  

-- Bulk operations only: Azure Storage Blob as data source   
-- (on SQL Server vNext and Azure SQL Database).
CREATE EXTERNAL DATA SOURCE data_source_name  
    WITH (   
        TYPE = BLOB_STORAGE,  
        LOCATION = 'https://storage_account_name.blob.core.windows.net/container_name'
        [, CREDENTIAL = credential_name ]
    )  
```  
  
## Arguments  
 *data_source_name*  
 Specifies the user-defined name for the data source. The name must be unique within the database in SQL Server, Azure SQL Database, and Azure SQL Data Warehouse. The name must be unique within the server in Parallel Data Warehouse.
  
 TYPE = [ HADOOP | SHARD_MAP_MANAGER | RDBMS | BLOB_STORAGE]  
 Specifies the data source type. Use HADOOP when the external data source is Hadoop or Azure Storage blob for Hadoop. Use SHARD_MAP_MANAGER when creating an external data source for Elastic Database query for sharding on Azure SQL Database. Use RDBMS with external data sources for cross-database queries with Elastic Database query on Azure SQL Database.  Use BLOB_STORAGE when performing bulk operations using [BULK INSERT](../../t-sql/statements/bulk-insert-transact-sql.md) or [OPENROWSET](../../t-sql/functions/openrowset-transact-sql.md) with [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1 or later.
  
LOCATION = <location_path>  
**HADOOP**    
For HADOOP, specifies the Uniform Resource Indicator (URI) for a Hadoop cluster.  
`LOCATION = 'hdfs:\/\/*NameNode\_URI*\[:*port*\]'`  
NameNode_URI: The machine name or IP address of the Hadoop cluster Namenode.  
port: The Namenode IPC port. This is indicated by the fs.default.name configuration parameter in Hadoop. If the value is not specified, 8020 will be used by default.  
Example: `LOCATION = 'hdfs://10.10.10.10:8020'`

For Azure blob storage with Hadoop, specifies the URI for connecting to Azure blob storage.  
`LOCATION = 'wasb[s]://container@account_name.blob.core.windows.net'`  
wasb[s]: Specifies the protocol for Azure blob storage. The [s] is optional and specifies a secure SSL connection; data sent from SQL Server is securely encrypted through the SSL protocol. We strongly recommend using 'wasbs' instead of 'wasb'. Note that the location can use asv[s] instead of wasb[s]. The asv[s] syntax is deprecated and will be removed in a future release.  
container: Specifies the name of the Azure blob storage container. To specify the root container of a domain’s storage account, use the domain name instead of the container name. Root containers are read-only, so data cannot be written back to the container.  
account_name: The fully qualified domain name (FQDN) of the Azure storage account.  
Example: `LOCATION = 'wasbs://dailylogs@myaccount.blob.core.windows.net/'`

For Azure Data Lake Store, location specifies the URI for connecting to your Azure Data Lake Store.



**SHARD_MAP_MANAGER**   
 For SHARD_MAP_MANAGER, specifies the logical server name that hosts the shard map manager in Azure SQL Database or a SQL Server database on an Azure virtual machine.
 
 ```
 CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<password>';

CREATE DATABASE SCOPED CREDENTIAL ElasticDBQueryCred  
WITH IDENTITY = '<username>',
SECRET = '<password>';

CREATE EXTERNAL DATA SOURCE MyElasticDBQueryDataSrc WITH
  (TYPE = SHARD_MAP_MANAGER,
  LOCATION = '<server_name>.database.windows.net',
  DATABASE_NAME = 'ElasticScaleStarterKit_ShardMapManagerDb',
  CREDENTIAL = ElasticDBQueryCred,
  SHARD_MAP_NAME = 'CustomerIDShardMap'
) ;
```

For a step-by-step tutorial, see [Getting started with elastic queries for sharding (horizontal partitioning)](https://azure.microsoft.com/documentation/articles/sql-database-elastic-query-getting-started/).
  
**RDBMS**   
For RDBMS, specifies the logical server name of the remote database in Azure SQL Database.  

```  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<password>';  
  
CREATE DATABASE SCOPED CREDENTIAL SQL_Credential    
WITH IDENTITY = '<username>',  
SECRET = '<password>';  
  
CREATE EXTERNAL DATA SOURCE MyElasticDBQueryDataSrc WITH   
    (TYPE = RDBMS,   
    LOCATION = '<server_name>.database.windows.net',   
    DATABASE_NAME = 'Customers',   
    CREDENTIAL = SQL_Credential   
) ;   
```  
  
For a step-by-step tutorial on RDBMS, see [Getting started with cross-database queries (vertical partitioning)](https://azure.microsoft.com/documentation/articles/sql-database-elastic-query-getting-started-vertical/).  

**BLOB_STORAGE**   
For bulk operations only, `LOCATION` must be valid the URL to Azure Blob storage and container. Do not put **/**, file name, or shared access signature parameters at the end of the `LOCATION` URL.   
The credential used, must be created using `SHARED ACCESS SIGNATURE` as the identity. For more information on shared access signatures, see [Using Shared Access Signatures (SAS)](https://docs.microsoft.com/azure/storage/storage-dotnet-shared-access-signature-part-1). For an example of accessing blob storage, see example F of [BULK INSERT](../../t-sql/statements/bulk-insert-transact-sql.md). 

  
 RESOURCE_MANAGER_LOCATION = '*ResourceManager_URI*[:*port*]'  
 Specifies the Hadoop resource manager location. When specified, the query optimizer can make a cost-based decision to pre-process data for a PolyBase query by using Hadoop’s computation capabilities with MapReduce. Called predicate pushdown, this can significantly reduce the volume of data transferred between Hadoop and SQL, and therefore improve query performance.  
  
 When this is not specified, pushing compute to Hadoop is disabled for PolyBase queries.  
 
If the port is not specified, the default value is determined using the current setting for ‘hadoop connectivity’ configuration.

|Hadoop Connectivity|Default Resource Manager Port|
|-------------------|-----------------------------|
|1|50300|
|2|50300|
|3|8021|
|4|8032|
|5|8050|
|6|8032|
|7|8050|

For a complete list of Hadoop distributions and versions supported by each connectivity value, see [PolyBase Connectivity Configuration (Transact-SQL)](../../database-engine/configure/windows/polybase-connectivity-configuration-transact-sql.md).
  
> [!IMPORTANT]  
>  The RESOURCE_MANAGER_LOCATION value is a string and is not validated when you create the external data source. Entering an incorrect value can cause future delays when accessing the location.  
  
 Hadoop examples:  
  
-   Hortonworks HDP 2.0, 2.1, 2.2. 2.3 on Windows:   
    ```  
    RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI:8032'  
    ```  
  
-   Hortonworks HDP 1.3 on Windows:   
    ```  
    RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI:50300'  
    ```  
  
-   Hortonworks HDP 2.0, 2.1, 2.2, 2.3 on Linux:   
    ```  
    RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI:8050'  
    ```  
  
-   Hortonworks HDP 1.3 on Linux:   
    ```  
    RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI:50300'  
    ```  
  
-   Cloudera 4.3 on Linux:   
    ```  
    RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI:8021'  
    ```  
  
-   Cloudera 5.1 - 5.5 on Linux:   
    ```  
    RESOURCE_MANAGER_LOCATION = 'ResourceManager_URI:8032'  
    ```  
  
 CREDENTIAL = *credential_name*  
 Specifies a database-scoped credential for authenticating to the external data source. For an example, see [C. Create an Azure blob storage external data source](../../t-sql/statements/create-external-data-source-transact-sql.md#credential). To create a credential, see [CREATE CREDENTIAL (Transact-SQL)](../../t-sql/statements/create-credential-transact-sql.md). Note that CREDENTIAL is not required for public data sets that allow anonymous access. 
  
 DATABASE_NAME = *'QueryDatabaseName'*  
 The name of the database that functions as the shard map manager (for SHARD_MAP_MANAGER) or the remote database (for RDBMS).  
  
 SHARD_MAP_NAME = *'ShardMapName'*  
 For SHARD_MAP_MANAGER only. The name of the shard map. For more information about creating a shard map, see [Getting started with Elastic Database query](https://azure.microsoft.com/documentation/articles/sql-database-elastic-query-getting-started/)  
  
## PolyBase-specific notes  
For a complete list of supported external data sources, see [PolyBase Connectivity Configuration (Transact-SQL)](../../database-engine/configure/windows/polybase-connectivity-configuration-transact-sql.md).

 To use PolyBase, you need to create these three objects:  
  
-   An external data source.  
  
-   An external file format, and  
  
-   An external table that references the external data source and external file format.  
  
## Permissions  
 Requires ALTER ANY EXTERNAL DATA SOURCE permission.

> [!IMPORTANT]  
>  The ALTER ANY EXTERNAL DATA SOURCE  permission grants any principal the ability to create and modify any external data source object, and therefore, it also grants the ability to access all database scoped credentials on the database. This permission must be considered as highly privileged, and therefore must be granted only to trusted principals in the system.
  
  
## Error Handling  
 A runtime error will occur if the external Hadoop data sources are inconsistent about having RESOURCE_MANAGER_LOCATION defined. That is, you cannot specify two external data sources that reference the same Hadoop cluster and then providing resource manager location for one and not for the other.  
  
 The SQL engine does not verify the existence of the external data source when it creates the external data source object. If the data source does not exist during query execution, an error will occur.  
  
## General Remarks  
For PolyBase, the external data source is database-scoped in SQL Server and SQL Data Warehouse. It is server-scoped in Parallel Data Warehouse.
  
For PolyBase, when RESOURCE_MANAGER_LOCATION or JOB_TRACKER_LOCATION is defined, the query optimizer will consider optimizing each query by initiating a map reduce job on the external Hadoop source and pushing down computation. This is entirely a cost-based decision.  

To ensure successful PolyBase queries in the event of Hadoop NameNode failover, consider using a virtual IP address for the NameNode of the Hadoop cluster. If you do not use a virtual IP address for the Hadoop NameNode, in the event of a Hadoop NameNode failover you will have to ALTER EXTERNAL DATA SOURCE object to point to the new location.  
  
## Limitations and Restrictions  
 All data sources defined on the same Hadoop cluster location must use the same setting for RESOURCE_MANAGER_LOCATION or JOB_TRACKER_LOCATION. If there is inconsistency, a runtime error will occur.  
  
 If the Hadoop cluster is set up with a name and the external data source uses the IP address for the cluster location, PolyBase must still be able to resolve the cluster name when the data source is used. To resolve the name, you must enable a DNS forwarder.  
  
## Locking  
 Takes a shared lock on the EXTERNAL DATA SOURCE object.  
  
##  <a name="examples"></a> Examples: SQL Server 2016  
  
### A. Create external data source to reference Hadoop  
To create an external data source to reference your Hortonworks or Cloudera Hadoop cluster, specify the machine name or IP address of the Hadoop Namenode and port.  
  
```tsql  
CREATE EXTERNAL DATA SOURCE MyHadoopCluster
WITH (
    TYPE = HADOOP,
    LOCATION = 'hdfs://10.10.10.10:8050'
);

```  
  
### B. Create external data source to reference Hadoop with pushdown enabled  
Specify the RESOURCE_MANAGER_LOCATION option to enable push-down computation to Hadoop for PolyBase queries. Once enabled, PolyBase uses a cost-based decision to determine whether the query computation should be pushed to Hadoop or all the data should be moved to process the query in SQL Server.
  
```tsql  
CREATE EXTERNAL DATA SOURCE MyHadoopCluster
WITH (
    TYPE = HADOOP,
    LOCATION = 'hdfs://10.10.10.10:8020',
    RESOURCE_MANAGER_LOCATION = '10.10.10.10:8050'
);

```
  
###  <a name="credential"></a> C. Create external data source to reference Kerberos-secured Hadoop  
To verify if the Hadoop cluster is Kerberos-secured, check the value of hadoop.security.authentication property in Hadoop core-site.xml. To reference a Kerberos-secured Hadoop cluster, you must specify a database scoped credential that contains your Kerberos username and password. The database master key is used to encrypt the database scoped credential secret. 
  
```tsql  
-- Create a database master key if one does not already exist, using your own password. This key is used to encrypt the credential secret in next step.
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'S0me!nfo';

-- Create a database scoped credential with Kerberos user name and password.
CREATE DATABASE SCOPED CREDENTIAL HadoopUser1 
WITH IDENTITY = '<hadoop_user_name>', 
SECRET = '<hadoop_password>';

-- Create an external data source with CREDENTIAL option.
CREATE EXTERNAL DATA SOURCE MyHadoopCluster WITH (
    TYPE = HADOOP, 
    LOCATION = 'hdfs://10.10.10.10:8050', 
    RESOURCE_MANAGER_LOCATION = '10.10.10.10:8050', 
    CREDENTIAL = HadoopUser1
);
```

### D. Create external data source to reference Azure blob storage
To create an external data source to reference your Azure blob storage container, specify the Azure blob storage URI and a database scoped credential that contains your Azure storage account key.

In this example, the external data source is an Azure blob storage container called dailylogs under Azure storage account named myaccount. The Azure storage external data source is for data transfer only; and it does not support predicate pushdown.

This example shows how to create the database scoped credential for authentication to Azure storage. Specify the Azure storage account key in the database credential secret. Specify any string in database scoped credential identity, it is not used for authentication to Azure storage. Then, the credential is used in the statement that creates an external data source.

```
-- Create a database master key if one does not already exist, using your own password. This key is used to encrypt the credential secret in next step.
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'S0me!nfo';

-- Create a database scoped credential with Azure storage account key as the secret.
CREATE DATABASE SCOPED CREDENTIAL AzureStorageCredential 
WITH IDENTITY = 'myaccount', 
SECRET = '<azure_storage_account_key>';

-- Create an external data source with CREDENTIAL option.
CREATE EXTERNAL DATA SOURCE MyAzureStorage WITH (
    TYPE = HADOOP, 
    LOCATION = 'wasbs://dailylogs@myaccount.blob.core.windows.net/',
    CREDENTIAL = AzureStorageCredential
);
```

## Examples: Azure SQL Database

### E. Create a Shard map manager external data source
To create an external data source to reference a SHARD_MAP_MANAGER, specify the logical server name that hosts the shard map manager in Azure SQL Database or a SQL Server database on an Azure virtual machine.

```tsql
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<password>';

CREATE DATABASE SCOPED CREDENTIAL ElasticDBQueryCred  
WITH IDENTITY = '<username>',
SECRET = '<password>';

CREATE EXTERNAL DATA SOURCE MyElasticDBQueryDataSrc 
WITH (
    TYPE = SHARD_MAP_MANAGER,
    LOCATION = '<server_name>.database.windows.net',
    DATABASE_NAME = 'ElasticScaleStarterKit_ShardMapManagerDb',
    CREDENTIAL = ElasticDBQueryCred,
    SHARD_MAP_NAME = 'CustomerIDShardMap'
);
```

### F. Create an RDBMS external data source
To create an external data source to reference a RDBMS, specifies the logical server name of the remote database in Azure SQL Database.

```tsql
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<password>';

CREATE DATABASE SCOPED CREDENTIAL SQL_Credential  
WITH IDENTITY = '<username>',
SECRET = '<password>';

CREATE EXTERNAL DATA SOURCE MyElasticDBQueryDataSrc 
WITH (
    TYPE = RDBMS, 
    LOCATION = '<server_name>.database.windows.net', 
    DATABASE_NAME = 'Customers', 
    CREDENTIAL = SQL_Credential 
);
```

## Examples: Azure SQL Data Warehouse

### G. Create external data source to reference Azure blob storage
To create an external data source to reference your Azure blob storage container, specify the Azure blob storage URI and a database scoped credential that contains your Azure storage account key.

In this example, the external data source is an Azure blob storage container called dailylogs under Azure storage account named myaccount. The Azure storage external data source is for data transfer only and does not support predicate pushdown.

This example shows how to create the database scoped credential for authentication to Azure storage. Specify the Azure storage account key in the database credential secret. Specify any string in database scoped credential identity, it is not used for authentication to Azure storage. Then, the credential is used in the statement that creates an external data source.

```tsql
-- Create a database master key if one does not already exist. This key is used to encrypt the credential secret in next step.
CREATE MASTER KEY;

-- Create a database scoped credential with Azure storage account key as the secret.
CREATE DATABASE SCOPED CREDENTIAL AzureStorageCredential 
WITH IDENTITY = 'myaccount', 
SECRET = '<azure_storage_account_key>';

-- Create an external data source with CREDENTIAL option.
CREATE EXTERNAL DATA SOURCE MyAzureStorage 
WITH (
    TYPE = HADOOP, 
    LOCATION = 'wasbs://dailylogs@myaccount.blob.core.windows.net/',
    CREDENTIAL = AzureStorageCredential
);
```
### H. Create external data source to reference Azure Data Lake Store
Azure Data lake Store connectivity is based on your ADLS URI and your Azure Acitve directory Application's service principle. Documentation for creating this application can be found at[Data lake store authentication using Active Directory](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-authenticate-using-active-directory).

```tsql
-- If you do not have a Master Key on your DW you will need to create one.
CREATE MASTER KEY

-- These values come from your Azure Active Directory Application used to authenticate to ADLS
CREATE DATABASE SCOPED CREDENTIAL ADLUser 
WITH IDENTITY = '<clientID>@<OAuth2.0TokenEndPoint>',
SECRET = '<KEY>' ;


CREATE EXTERNAL DATA SOURCE AzureDataLakeStore
WITH (TYPE = HADOOP,
      LOCATION = '<ADLS URI>'
)
```



## Examples: Parallel Data Warehouse

### I. Create external data source to reference Hadoop
To create an external data source to reference your Hortonworks or Cloudera Hadoop cluster, specify the machine name or IP address of the Hadoop Namenode and port.

```tsql
CREATE EXTERNAL DATA SOURCE MyHadoopCluster
WITH (
    TYPE = HADOOP,
    LOCATION = 'hdfs://10.10.10.10:8050'
);
```

### J. Create external data source to reference Hadoop with pushdown enabled
Specify the JOB_TRACKER_LOCATION option to enable push-down computation to Hadoop for PolyBase queries. Once enabled, PolyBase uses a cost-based decision to determine whether the query computation should be pushed to Hadoop or all the data should be moved to process the query in SQL Server. 

```tsql
CREATE EXTERNAL DATA SOURCE MyHadoopCluster
WITH (
    TYPE = HADOOP,
    LOCATION = 'hdfs://10.10.10.10:8020',
    JOB_TRACKER_LOCATION = '10.10.10.10:8050'
);
```

### K. Create external data source to reference Azure blob storage
To create an external data source to reference your Azure blob storage container, specify the Azure blob storage URI as the external data source LOCATION. Add your Azure storage account key to PDW core-site.xml file for authentication.

In this example, the external data source is an Azure blob storage container called dailylogs under Azure storage account named myaccount. The Azure storage external data source is for data transfer only and does not support predicate pushdown.

```tsql
CREATE EXTERNAL DATA SOURCE MyAzureStorage WITH (
        TYPE = HADOOP, 
        LOCATION = 'wasbs://dailylogs@myaccount.blob.core.windows.net/'
);
```

## Examples: Bulk Operations   
### L. Create an external data source for bulk operations retrieving data from Azure Blob storage.   
**Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.   
Use the following data source for bulk operations using [BULK INSERT](../../t-sql/statements/bulk-insert-transact-sql.md) or [OPENROWSET](../../t-sql/functions/openrowset-transact-sql.md). The credential used, must be created using `SHARED ACCESS SIGNATURE` as the identity. For more information on shared access signatures, see [Using Shared Access Signatures (SAS)](https://docs.microsoft.com/azure/storage/storage-dotnet-shared-access-signature-part-1).   
```tsql
CREATE EXTERNAL DATA SOURCE MyAzureInvoices
    WITH  (
        TYPE = BLOB_STORAGE,
        LOCATION = 'https://newinvoices.blob.core.windows.net/week3',
		CREDENTIAL = AccessAzureInvoices
    );   
```   
To see this example in use, see [BULK INSERT](../../t-sql/statements/bulk-insert-transact-sql.md).
  
## See Also
[ALTER EXTERNAL DATA SOURCE (Transact-SQL)](../../t-sql/statements/alter-external-data-source-transact-sql.md)  
[CREATE EXTERNAL FILE FORMAT &#40;Transact-SQL&#41;](../../t-sql/statements/create-external-file-format-transact-sql.md)   
[CREATE EXTERNAL TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-external-table-transact-sql.md)   
[CREATE EXTERNAL TABLE AS SELECT &#40;Transact-SQL&#41;](../../t-sql/statements/create-external-table-as-select-transact-sql.md)   
[CREATE TABLE AS SELECT &#40;Azure SQL Data Warehouse&#41;](../../t-sql/statements/create-table-as-select-azure-sql-data-warehouse.md)  
[sys.external_data_sources (Transact-SQL)](../../relational-databases/reference/system-catalog-views/sys.external-data-sources-transact-sql.md)  
  
  