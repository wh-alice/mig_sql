---
title: "CREATE AGGREGATE (Transact-SQL) | Microsoft Docs"
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
  - "CREATE_AGGREGATE_TSQL"
  - "CREATE AGGREGATE"
  - "AGGREGATE_TSQL"
  - "AGGREGATE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "CREATE AGGREGATE statement"
  - "aggregate functions [SQL Server], user-defined"
  - "user-defined functions [CLR integration]"
ms.assetid: 62eebc19-9f15-4245-94fa-b3fcd64a9d42
caps.latest.revision: 50
ms.author: "jhubbard"
manager: "jhubbard"
---
# CREATE AGGREGATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates a user-defined aggregate function whose implementation is defined in a class of an assembly in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)]. For the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] to bind the aggregate function to its implementation, the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] assembly that contains the implementation must first be uploaded into an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using a CREATE ASSEMBLY statement.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
CREATE AGGREGATE [ schema_name . ] aggregate_name  
        (@param_name <input_sqltype>   
        [ ,...n ] )  
RETURNS <return_sqltype>  
EXTERNAL NAME assembly_name [ .class_name ]  
  
<input_sqltype> ::=  
        system_scalar_type | { [ udt_schema_name. ] udt_type_name }  
  
<return_sqltype> ::=  
        system_scalar_type | { [ udt_schema_name. ] udt_type_name }  
  
```  
  
## Arguments  
 *schema_name*  
 Is the name of the schema to which the user-defined aggregate function belongs.  
  
 *aggregate_name*  
 Is the name of the aggregate function you want to create.  
  
 **@** *param_name*  
 One or more parameters in the user-defined aggregate. The value of a parameter must be supplied by the user when the aggregate function is executed. Specify a parameter name by using an "at" sign (**@**) as the first character. The parameter name must comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md). Parameters are local to the function.  
  
 *system_scalar_type*  
 Is any one of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system scalar data types to hold the value of the input parameter or return value. All scalar data types can be used as a parameter for a user-defined aggregate, except **text**, **ntext**, and **image**. Nonscalar types, such as **cursor** and **table**, cannot be specified.  
  
 *udt_schema_name*  
 Is the name of the schema to which the CLR user-defined type belongs. If not specified, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] references *udt_type_name* in the following order:  
  
-   The native SQL type namespace.  
  
-   The default schema of the current user in the current database.  
  
-   The **dbo** schema in the current database.  
  
 *udt_type_name*  
 Is the name of a CLR user-defined type already created in the current database. If *udt_schema_name* is not specified, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] assumes the type belongs to the schema of the current user.  
  
 *assembly_name* [ **.***class_name* ]  
 Specifies the assembly to bind with the user-defined aggregate function and, optionally, the name of the schema to which the assembly belongs and the name of the class in the assembly that implements the user-defined aggregate. The assembly must already have been created in the database by using a CREATE ASSEMBLY statement. *class_name* must be a valid [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] identifier and match the name of a class that exists in the assembly. *class_name* may be a namespace-qualified name if the programming language used to write the class uses namespaces, such as C#. If *class_name* is not specified, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] assumes it is the same as *aggregate_name*.  
  
## Remarks  
 By default, the ability of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to run CLR code is off. You can create, modify, and drop database objects that reference managed code modules, but the code in these modules will not run in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] unless the [clr enabled option](../../database-engine/configure/windows/clr-enabled-server-configuration-option.md) is enabled by using [sp_configure](../../relational-databases/system-stored-procedures/sp-configure-transact-sql.md).  
  
 The class of the assembly referenced in *assembly_name* and its methods, should satisfy all the requirements for implementing a user-defined aggregate function in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information, see [CLR User-Defined Aggregates](../../relational-databases/clr-integration-database-objects-user-defined-functions/clr-user-defined-aggregates.md).  
  
## Permissions  
 Requires CREATE AGGREGATE permission and also REFERENCES permission on the assembly that is specified in the EXTERNAL NAME clause.  
  
## Examples  
 The following example assumes that a StringUtilities.csproj sample application is compiled. For more information, see [String Utility Functions Sample](../Topic/String%20Utility%20Functions%20Sample.md).  
  
 The example creates aggregate `Concatenate`. Before the aggregate is created, the assembly `StringUtilities.dll` is registered in the local database.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @SamplesPath nvarchar(1024)  
-- You may have to modify the value of the this variable if you have  
--installed the sample some location other than the default location.  
  
SELECT @SamplesPath = REPLACE(physical_name, 'Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\master.mdf', 'Microsoft SQL Server\130\Samples\Engine\Programmability\CLR\')   
     FROM master.sys.database_files   
     WHERE name = 'master';  
  
CREATE ASSEMBLY StringUtilities FROM @SamplesPath + 'StringUtilities\CS\StringUtilities\bin\debug\StringUtilities.dll'  
WITH PERMISSION_SET=SAFE;  
GO  
  
CREATE AGGREGATE Concatenate(@input nvarchar(4000))  
RETURNS nvarchar(4000)  
EXTERNAL NAME [StringUtilities].[Microsoft.Samples.SqlServer.Concatenate];  
GO  
```  
  
## See Also  
 [DROP AGGREGATE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-aggregate-transact-sql.md)  
  
  