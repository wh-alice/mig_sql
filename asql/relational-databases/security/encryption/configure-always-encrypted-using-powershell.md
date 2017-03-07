---
title: "Configure Always Encrypted using PowerShell | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-29"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-security"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 12f2bde5-e100-41fa-b474-2d2332fc7650
caps.latest.revision: 15
ms.author: "sstein"
manager: "jhubbard"
---
# Configure Always Encrypted using PowerShell
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

The SqlServer PowerShell module provides cmdlets for configuring [Always Encrypted](../../../relational-databases/security/encryption/always-encrypted-database-engine.md) in both Azure SQL Database and SQL Server 2016.

Most of the cmdlets for Always Encrypted in the SqlServer module work with Always Encrypted keys or sensitive data stored in encrypted columns so it is important that you run the cmdlets on a secure computer. When managing Always Encrypted execute the cmdlets from a different computer than the computer hosting your SQL Server instance. 

Because the primary goal of Always Encrypted is to ensure encrypted sensitive data is safe even if the database system gets compromised, executing a PowerShell script that processes keys or sensitive data on the SQL Server computer can reduce or defeat the benefits of the feature. For additional security-related recommendations, see [Security Considerations for Key Management](../../../relational-databases/security/encryption/overview-of-key-management-for-always-encrypted.md#SecurityForKeyManagement).

Links to the individual cmdlet articles are at the [bottom of this page](#aecmdletreference).

## Prerequisites

Install the [SqlServer module](https://msdn.microsoft.com/library/mt740629.aspx) on a secure computer that is NOT a computer hosting your SQL Server instance. 

Install the SqlServer module by installing the latest version of [SQL Server Management Studio](https://msdn.microsoft.com/library/mt238290.aspx).
Note that the *SqlServer* module is different from the *sqlps* module, which does not support Always Encrypted. For details, see the team's [SQL PowerShell - July 2016 Update](https://blogs.technet.microsoft.com/dataplatforminsider/2016/06/30/sql-powershell-july-2016-update) blog post.

## <a name="importsqlservermodule"></a> Importing the SqlServer Module 

To load the SqlServer module:

1.	Use the **Set-ExecutionPolicy** cmdlet to set the appropriate script execution policy.
2.	Use the **Import-Module** cmdlet to import the SqlServer module.

This example loads the SqlServer module.

```
# Import the SQL Server Module.  
Import-Module "SqlServer" 
```

## <a name="connectingtodatabase"></a> Connecting to a Database

Some of the Always Encrypted cmdlets work with data or metadata in the database and require that you connect to the database first. There are two recommended methods of connecting to a database when configuring Always Encrypted using the SqlServer module: 
1. Connect using SQL Server PowerShell.
2. Connect using SQL Server Management Objects (SMO).

### Using SQL Server PowerShell

This method works only for SQL Server (it is not supported in Azure SQL Database).

With SQL Server PowerShell, you can navigate the paths using Windows PowerShell aliases similar to the commands you typically use to navigate file system paths. Once you have navigated to the target instance and the database, the subsequent cmdlets will target that database as shown in the following example:

```
# Import the SqlServer module.
Import-Module "SqlServer"
# Navigate to the database in the remote instance.
cd SQLSERVER:\SQL\servercomputer\DEFAULT\Databases\yourdatabase
# List column master keys in the above database.
Get-SqlColumnMasterKey
```

 
Alternatively, you can specify a database path using the generic **Path** parameter, instead of navigating to the database.


```
# Import the SqlServer module.
Import-Module "SqlServer" 
# List column master keys for the specified database.
Get-SqlColumnMasterKey -Path SQLSERVER:\SQL\servercomputer\DEFAULT\Databases\yourdatabase
```
 
### Using SMO

This method works for both Azure SQL Database and SQL Server.
With SMO, you can create an object of the [Database Class](https://msdn.microsoft.com/library/microsoft.sqlserver.management.smo.database.aspx), and then pass the object using the **InputObject** parameter of a cmdlet that connects to the database.


```
# Import the SqlServer module
Import-Module "SqlServer"  

# Connect to your database (Azure SQL database).
$serverName = "<Azure SQL server name>.database.windows.net"
$databaseName = "<database name>"
$connStr = "Server = " + $serverName + "; Database = " + $databaseName + "; Authentication = Active Directory Integrated"
$connection = New-Object Microsoft.SqlServer.Management.Common.ServerConnection
$connection.ConnectionString = $connStr
$connection.Connect()
$server = New-Object Microsoft.SqlServer.Management.Smo.Server($connection)
$database = $server.Databases[$databaseName] 

# List column master keys for the specified database.
Get-SqlColumnMasterKey -InputObject $database
```


Alternatively, you can use piping:


```
$database | Get-SqlColumnMasterKey
```

## Always Encrypted Tasks using PowerShell

- [Configure Always Encrypted Keys using PowerShell](../../../relational-databases/security/encryption/configure-always-encrypted-keys-using-powershell.md) 
- [Rotate Always Encrypted Keys using PowerShell](../../../relational-databases/security/encryption/rotate-always-encrypted-keys-using-powershell.md)
- [Configure Column Encryption using PowerShell](../../../relational-databases/security/encryption/configure-column-encryption-using-powershell.md)


##  <a name="aecmdletreference"></a> Always Encrypted Cmdlet Reference

The following PowerShell cmdlets are available for Always Encrypted:

|CMDLET	|Description
|:---|:---
|**[Add-SqlAzureAuthenticationContext](https://msdn.microsoft.com/library/mt759815.aspx)**	|Performs authentication to Azure and acquires an authentication token.
|**[Add-SqlColumnEncryptionKeyValue](https://msdn.microsoft.com/library/mt759817.aspx)**	|Adds a new encrypted value for an existing column encryption key object in the database.
|**[Complete-SqlColumnMasterKeyRotation](https://msdn.microsoft.com/library/mt759791.aspx)**	|Completes the rotation of a column master key
|**[Get-SqlColumnEncryptionKey](https://msdn.microsoft.com/library/mt759814.aspx)**	|Returns all column encryption key objects defined in the database, or returns one column encryption key object with the specified name.
|**[Get-SqlColumnMasterKey](https://msdn.microsoft.com/library/mt759782.aspx)**	|Returns the column master key objects defined in the database, or returns one column master key object with the specified name.
|**[Invoke-SqlColumnMasterKeyRotation](https://msdn.microsoft.com/library/mt759810.aspx)**	|Initiates the rotation of a column master key.
|**[New-SqlAzureKeyVaultColumnMasterKeySettings](https://msdn.microsoft.com/library/mt759795.aspx)**	|Creates a SqlColumnMasterKeySettings object describing an asymmetric key stored in Azure Key Vault.
|**[New-SqlCngColumnMasterKeySettings](https://msdn.microsoft.com/library/mt759818.aspx)**	|Creates a SqlColumnMasterKeySettings object describing an asymmetric key stored in a key store supporting the Cryptography Next Generation (CNG) API.
|**[New-SqlColumnEncryptionKey](https://msdn.microsoft.com/library/mt759808.aspx)**	|Creates a new column encryption key object in the database.
|**[New-SqlColumnEncryptionKeyEncryptedValue](https://msdn.microsoft.com/library/mt759794.aspx)**	|Produces an encrypted value of a column encryption key.
|**[New-SqlColumnEncryptionSettings](https://msdn.microsoft.com/library/mt759825.aspx)**	|Creates a new SqlColumnEncryptionSettings object that encapsulates information about a single column’s encryption, including CEK and encryption type.
|**[New-SqlColumnMasterKey](https://msdn.microsoft.com/library/mt759813.aspx)**	|Creates a new column master key object in the database.
|**New-SqlColumnMasterKeySettings**|Creates a SqlColumnMasterKeySettings object for a column master key with the specified provider and key path.
|**[New-SqlCspColumnMasterKeySettings](https://msdn.microsoft.com/library/mt759784.aspx)**	|Creates a SqlColumnMasterKeySettings object describing an asymmetric key stored in a key store with a Cryptography Service Provider (CSP) supporting Cryptography API (CAPI).
|**[Remove-SqlColumnEncryptionKey](https://msdn.microsoft.com/library/mt759786.aspx)**	|Removes the column encryption key object from the database.
|**[Remove-SqlColumnEncryptionKeyValue](https://msdn.microsoft.com/library/mt759783.aspx)**	|Removes an encrypted value from an existing column encryption key object in the database.
|**[Remove-SqlColumnMasterKey](https://msdn.microsoft.com/library/mt759800.aspx)**	|Removes the column master key object from the database.
|**[Set-SqlColumnEncryption](https://msdn.microsoft.com/library/mt759790.aspx)**	|Encrypts, decrypts, or re-encrypts specified columns in the database.



## Additional Resources

- [Always Encrypted (Database Engine)](../../../relational-databases/security/encryption/always-encrypted-database-engine.md)
- [Overview of Key Management for Always Encrypted](../../../relational-databases/security/encryption/overview-of-key-management-for-always-encrypted.md)
- [Using Always Encrypted with .NET Framework Data Provider for SQL Server](../../../relational-databases/security/encryption/always-encrypted-client-development.md)
- [Configure Always Encrypted using SQL Server Management Studio](../../../relational-databases/security/encryption/configure-always-encrypted-using-sql-server-management-studio.md)

