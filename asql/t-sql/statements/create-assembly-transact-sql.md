---
title: "CREATE ASSEMBLY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "ASSEMBLY"
  - "CREATE ASSEMBLY"
  - "CREATE_ASSEMBLY_TSQL"
  - "ASSEMBLY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "assemblies [CLR integration], validating"
  - "validating assemblies"
  - "CREATE ASSEMBLY statement"
  - "assemblies [CLR integration], creating"
ms.assetid: d8d1d245-c2c3-4325-be52-4fc1122c2079
caps.latest.revision: 94
ms.author: "jhubbard"
manager: "jhubbard"
---
# CREATE ASSEMBLY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates a managed application module that contains class metadata and managed code as an object in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. By referencing this module, common language runtime (CLR) functions, stored procedures, triggers, user-defined aggregates, and user-defined types can be created in the database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
CREATE ASSEMBLY assembly_name  
[ AUTHORIZATION owner_name ]  
FROM { <client_assembly_specifier> | <assembly_bits> [ ,...n ] }  
[ WITH PERMISSION_SET = { SAFE | EXTERNAL_ACCESS | UNSAFE } ]  
[ ; ]  
<client_assembly_specifier> :: =  
        '[\\computer_name\]share_name\[path\]manifest_file_name'  
  | '[local_path\]manifest_file_name'  
  
<assembly_bits> :: =  
{ varbinary_literal | varbinary_expression }  
```  
  
## Arguments  
 *assembly_name*  
 Is the name of the assembly. The name must be unique within the database and a valid [identifier](../../relational-databases/databases/database-identifiers.md).  
  
 AUTHORIZATION *owner_name*  
 Specifies the name of a user or role as owner of the assembly. *owner_name* must either be the name of a role of which the current user is a member, or the current user must have IMPERSONATE permission on *owner_name*. If not specified, ownership is given to the current user.  
  
 <client_assembly_specifier>  
 Specifies the local path or network location where the assembly that is being uploaded is located, and also the manifest file name that corresponds to the assembly.  <client_assembly_specifier> can be expressed as a fixed string or an expression evaluating to a fixed string, with variables. CREATE ASSEMBLY does not support loading multimodule assemblies. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] also looks for any dependent assemblies of this assembly in the same location and also uploads them with the same owner as the root level assembly. If these dependent assemblies are not found and they are not already loaded in the current database, CREATE ASSEMBLY fails. If the dependent assemblies are already loaded in the current database, the owner of those assemblies must be the same as the owner of the newly created assembly.  
  
 <client_assembly_specifier> cannot be specified if the logged in user is being impersonated.  
  
 <assembly_bits>  
 Is the list of binary values that make up the assembly and its dependent assemblies. The first value in the list is considered the root-level assembly. The values corresponding to the dependent assemblies can be supplied in any order. Any values that do not correspond to dependencies of the root assembly are ignored.  
  
> [!NOTE]  
>  This option is not available in a contained database.  
  
 *varbinary_literal*  
 Is a **varbinary** literal.  
  
 *varbinary_expression*  
 Is an expression of type **varbinary**.  
  
 PERMISSION_SET { **SAFE** | EXTERNAL_ACCESS | UNSAFE }  
 Specifies a set of code access permissions that are granted to the assembly when it is accessed by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. If not specified, SAFE is applied as the default.  
  
 We recommend using SAFE. SAFE is the most restrictive permission set. Code executed by an assembly with SAFE permissions cannot access external system resources such as files, the network, environment variables, or the registry.  
  
 EXTERNAL_ACCESS enables assemblies to access certain external system resources such as files, networks, environmental variables, and the registry.  
  
> [!NOTE]  
>  This option is not available in a contained database.  
  
 UNSAFE enables assemblies unrestricted access to resources, both within and outside an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Code running from within an UNSAFE assembly can call unmanaged code.  
  
> [!NOTE]  
>  This option is not available in a contained database.  
  
> [!IMPORTANT]  
>  SAFE is the recommended permission setting for assemblies that perform computation and data management tasks without accessing resources outside an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
>   
>  We recommend using EXTERNAL_ACCESS for assemblies that access resources outside of an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. EXTERNAL_ACCESS assemblies include the reliability and scalability protections of SAFE assemblies, but from a security perspective are similar to UNSAFE assemblies. This is because code in EXTERNAL_ACCESS assemblies runs by default under the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service account and accesses external resources under that account, unless the code explicitly impersonates the caller. Therefore, permission to create EXTERNAL_ACCESS assemblies should be granted only to logins that are trusted to run code under the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service account. For more information about impersonation, see [CLR Integration Security](../../relational-databases/clr-integration/security/clr-integration-security.md).  
>   
>  Specifying UNSAFE enables the code in the assembly complete freedom to perform operations in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process space that can potentially compromise the robustness of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. UNSAFE assemblies can also potentially subvert the security system of either [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or the common language runtime. UNSAFE permissions should be granted only to highly trusted assemblies. Only members of the **sysadmin** fixed server role can create and alter UNSAFE assemblies.  
  
 For more information about assembly permission sets, see [Designing Assemblies](../../relational-databases/clr-integration/assemblies-designing.md).  
  
## Remarks  
 CREATE ASSEMBLY uploads an assembly that was previously compiled as a .dll file from managed code for use inside an instance of SQL Server.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not allow registering different versions of an assembly with the same name, culture and public key.  
  
 When attempting to access the assembly specified in <client_assembly_specifier>, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] impersonates the security context of the current Windows login. If <client_assembly_specifier> specifies a network location (UNC path), the impersonation of the current login is not carried forward to the network location because of delegation limitations. In this case, access is made using the security context of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service account. For more information, see [Credentials &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/credentials-database-engine.md).  
  
 Besides the root assembly specified by *assembly_name*, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] tries to upload any assemblies that are referenced by the root assembly being uploaded. If a referenced assembly is already uploaded to the database because of an earlier CREATE ASSEMBLY statement, this assembly is not uploaded but is available to the root assembly. If a dependent assembly was not previously uploaded, but [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cannot locate its manifest file in the source directory, CREATE ASSEMBLY returns an error.  
  
 If any dependent assemblies referenced by the root assembly are not already in the database and are implicitly loaded together with the root assembly, they have the same permission set as the root level assembly. If the dependent assemblies must be created by using a different permission set than the root-level assembly, they must be uploaded explicitly before the root level assembly with the appropriate permission set.  
  
## Assembly Validation  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] performs checks on the assembly binaries uploaded by the CREATE ASSEMBLY statement to guarantee the following:  
  
-   The assembly binary is well formed with valid metadata and code segments, and the code segments have valid Microsoft Intermediate language (MSIL) instructions.  
  
-   The set of system assemblies it references is one of the following supported assemblies in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Microsoft.Visualbasic.dll, Mscorlib.dll, System.Data.dll, System.dll, System.Xml.dll, Microsoft.Visualc.dll, Custommarshallers.dll, System.Security.dll, System.Web.Services.dll, System.Data.SqlXml.dll, System.Core.dll, and System.Xml.Linq.dll. Other system assemblies can be referenced, but they must be explicitly registered in the database.  
  
-   For assemblies created by using SAFE or EXTERNAL ACCESS permission sets:  
  
    -   The assembly code should be type-safe. Type safety is established by running the common language runtime verifier against the assembly.  
  
    -   The assembly should not contain any static data members in its classes unless they are marked as read-only.  
  
    -   The classes in the assembly cannot contain finalizer methods.  
  
    -   The classes or methods of the assembly should be annotated only with allowed code attributes. For more information, see [Custom Attributes for CLR Routines](../../relational-databases/clr-integration/database-objects/clr-integration-custom-attributes-for-clr-routines.md).  
  
 Besides the previous checks that are performed when CREATE ASSEMBLY executes, there are additional checks that are performed at execution time of the code in the assembly:  
  
-   Calling certain [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] APIs that require a specific Code Access Permission may fail if the permission set of the assembly does not include that permission.  
  
-   For SAFE and EXTERNAL_ACCESS assemblies, any attempt to call [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] APIs that are annotated with certain HostProtectionAttributes will fail.  
  
 For more information, see [Designing Assemblies](../../relational-databases/clr-integration/assemblies-designing.md).  
  
## Permissions  
 Requires CREATE ASSEMBLY permission.  
  
 If PERMISSION_SET = EXTERNAL_ACCESS is specified, requires**EXTERNAL ACCESS ASSEMBLY** permission on the server. If PERMISSION_SET = UNSAFE is specified, requires **UNSAFE ASSEMBLY** permission on the server.  
  
 User must be the owner of any assemblies that are referenced by the assembly that are to be uploaded if the assemblies already exist in the database. To upload an assembly by using a file path, the current user must be a Windows authenticated login or a member of the **sysadmin** fixed server role. The Windows login of the user that executes CREATE ASSEMBLY must have read permission on the share and the files being loaded in the statement.  
  
 For more information about assembly permission sets, see [Designing Assemblies](../../relational-databases/clr-integration/assemblies-designing.md).  
  
## Examples  
  
### Example A: Creating an assembly from a dll  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 The following example assumes that the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] samples are installed in the default location of the local computer and the HelloWorld.csproj sample application is compiled. For more information, see [Hello World Sample](http://msdn.microsoft.com/library/fed6c358-f5ee-4d4c-9ad6-089778383ba7).  
  
```  
CREATE ASSEMBLY HelloWorld   
FROM <system_drive>:\Program Files\Microsoft SQL Server\100\Samples\HelloWorld\CS\HelloWorld\bin\debug\HelloWorld.dll  
WITH PERMISSION_SET = SAFE;  
```  
  
### Example B: Creating an assembly from assembly bits  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Replace the sample bits (which are not complete or valid) with your assembly bits.  
  
```  
CREATE ASSEMBLY HelloWorld  
    FROM 0x4D5A900000000000  
WITH PERMISSION_SET = SAFE;  
```  
  
## See Also  
 [ALTER ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-assembly-transact-sql.md)   
 [DROP ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-assembly-transact-sql.md)   
 [CREATE FUNCTION &#40;Transact-SQL&#41;](../../t-sql/statements/create-function-transact-sql.md)   
 [CREATE PROCEDURE &#40;Transact-SQL&#41;](../../t-sql/statements/create-procedure-transact-sql.md)   
 [CREATE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/create-trigger-transact-sql.md)   
 [CREATE TYPE &#40;Transact-SQL&#41;](../../t-sql/statements/create-type-transact-sql.md)   
 [CREATE AGGREGATE &#40;Transact-SQL&#41;](../../t-sql/statements/create-aggregate-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)   
 [Usage Scenarios and Examples for Common Language Runtime &#40;CLR&#41; Integration](http://msdn.microsoft.com/library/33aac25f-abb4-4f29-af88-4a0dacd80ae7)  
  
  