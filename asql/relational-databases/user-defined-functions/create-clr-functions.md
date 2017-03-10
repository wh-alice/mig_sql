---
title: "Create CLR Functions | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-udf"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "CLR functions [SQL Server]"
  - "user-defined functions [SQL Server], CLR"
ms.assetid: a82df075-2243-4e19-bfe1-ae6d65dabd0f
caps.latest.revision: 34
ms.author: "jhubbard"
manager: "jhubbard"
---
# Create CLR Functions
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  You can create a database object inside an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that is programmed in an assembly created in the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] common language runtime (CLR). Database objects that can leverage the rich programming model provided by the common language runtime include aggregate functions, functions, stored procedures, triggers, and types.  
  
 Creating a CLR function in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] involves the following steps:  
  
-   Define the function as a static method of a class in a language supported by the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)]. For more information about how to program functions in the common language runtime, see [CLR User-Defined Functions](../../relational-databases/clr-integration-database-objects-user-defined-functions/clr-user-defined-functions.md). Then, compile the class to build an assembly in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] by using the appropriate language compiler.  
  
-   Register the assembly in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using the CREATE ASSEMBLY statement. For more information about assemblies in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Assemblies &#40;Database Engine&#41;](../../relational-databases/clr-integration/assemblies-database-engine.md).  
  
-   Create the function that references the registered assembly by using the [CREATE FUNCTION](../../t-sql/statements/create-function-transact-sql.md) statement.  
  
> [!NOTE]  
>  Deploying a SQL Server Project in [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] registers an assembly in the database that was specified for the project. Deploying the project also creates CLR functions in the database for all methods annotated with the **SqlFunction** attribute. For more information, see [Deploying CLR Database Objects](../../relational-databases/clr-integration/deploying-clr-database-objects.md).  
  
> [!NOTE]  
>  The ability of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to execute CLR code is off by default. You can create, alter, and drop database objects that reference managed code modules, but these references will not execute in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] unless the [clr enabled Option](../../database-engine/configure/windows/clr-enabled-server-configuration-option.md) is enabled by using [sp_configure (Transact-SQL)](../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md).  
  
## Accessing External Resources  
 CLR functions can be used to access external resources such as files, network resources, Web Services, other databases (including remote instances of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]). This can be achieved by using various classes in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)], such as `System.IO`, `System.WebServices`, `System.Sql`, and so on. The assembly that contains such functions should at least be configured with the EXTERNAL_ACCESS permission set for this purpose. For more information, see [CREATE ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/create-assembly-transact-sql.md). The SQL Client Managed Provider can be used to access remote instances of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. However, loopback connections to the originating server are not supported in CLR functions.  
  
 **To create, modify, or drop assemblies in SQL Server**  
  
-   [CREATE ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/create-assembly-transact-sql.md)  
  
-   [ALTER ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-assembly-transact-sql.md)  
  
-   [DROP ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-assembly-transact-sql.md)  
  
 **To create a CLR function**  
  
-   [CREATE FUNCTION &#40;Transact-SQL&#41;](../../t-sql/statements/create-function-transact-sql.md)  
  
## Accessing Native Code  
 CLR functions can be used to access native (unmanaged) code, such as code written in C or C++, via the use of PInvoke from managed code (see [Calling Native Functions from Managed Code](http://go.microsoft.com/fwlink/?LinkID=181929) for details). This can allow you to re-use legacy code as CLR UDFs, or write performance-critical UDFs in native code. This requires using an UNSAFE assembly. See [CLR Integration Code Access Security](../../relational-databases/clr-integration/security/clr-integration-code-access-security.md) for cautions about use of UNSAFE assemblies.  
  
## See Also  
 [Create User-defined Functions &#40;Database Engine&#41;](../../relational-databases/user-defined-functions/create-user-defined-functions-database-engine.md)   
 [Create User-defined Aggregates](../../relational-databases/user-defined-functions/create-user-defined-aggregates.md)   
 [Execute User-defined Functions](../../relational-databases/user-defined-functions/execute-user-defined-functions.md)   
 [View User-defined Functions](../../relational-databases/user-defined-functions/view-user-defined-functions.md)   
 [Common Language Runtime &#40;CLR&#41; Integration Programming Concepts](../../relational-databases/clr-integration/common-language-runtime-clr-integration-programming-concepts.md)  
  
  