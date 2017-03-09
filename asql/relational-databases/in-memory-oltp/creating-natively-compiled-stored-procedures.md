---
title: "Creating Natively Compiled Stored Procedures | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e6b34010-cf62-4f65-bbdf-117f291cde7b
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# Creating Natively Compiled Stored Procedures
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Natively compiled stored procedures do not implement the full [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] programmability and query surface area. There are certain [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] constructs that cannot be used inside natively compiled stored procedures. For more information, see [Supported Features for Natively Compiled T-SQL Modules](../../relational-databases/in-memory-oltp/supported-features-for-natively-compiled-t-sql-modules.md).  
  
 There are, however, several [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] features that are only supported for natively compiled stored procedures:  
  
-   Atomic blocks. For more information, see [Atomic Blocks](../../relational-databases/in-memory-oltp/atomic-blocks-in-native-procedures.md).  
  
-   **NOT NULL** constraints on parameters of and variables in natively compiled stored procedures. You cannot assign **NULL** values to parameters or variables declared as **NOT NULL**. For more information, see [DECLARE @local_variable &#40;Transact-SQL&#41;](../Topic/DECLARE%20@local_variable%20\(Transact-SQL\).md).  
  
    -   CREATE PROCEDURE dbo.myproc (@myVarchar  varchar(32)  **not null**) ...  
  
    -   DECLARE @myVarchar  varchar(32)  **not null = "Hello"**; -- *(Must initialize to a value.)*  
  
    -   SET @myVarchar **= null**; -- *(Compiles, but fails during run time.)*  
  
-   Schema binding of natively compiled stored procedures.  
  
 Natively compiled stored procedures are created using [CREATE PROCEDURE &#40;Transact-SQL&#41;](../../t-sql/statements/create-procedure-transact-sql.md). The following example shows a memory-optimized table and a natively compiled stored procedure used for inserting rows into the table.  
  
```tsql  
create table dbo.Ord  
(OrdNo integer not null primary key nonclustered,   
 OrdDate datetime not null,   
 CustCode nvarchar(5) not null)   
 with (memory_optimized=on)  
go  
  
create procedure dbo.OrderInsert(@OrdNo integer, @CustCode nvarchar(5))  
with native_compilation, schemabinding  
as   
begin atomic with  
(transaction isolation level = snapshot,  
language = N'English')  
  
  declare @OrdDate datetime = getdate();  
  insert into dbo.Ord (OrdNo, CustCode, OrdDate) values (@OrdNo, @CustCode, @OrdDate);  
end  
go  
```  
  
 In the code sample, **NATIVE_COMPILATION** indicates that this [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] stored procedure is a natively compiled stored procedure. The following options are required:  
  
|Option|Description|  
|------------|-----------------|  
|**SCHEMABINDING**|A natively compiled stored procedure must be bound to the schema of the objects it references. This means that tables referenced by the procedure cannot be dropped. Tables referenced in the procedure must include their schema name, and wildcards (\*) are not allowed in queries (meaning no `SELECT * from...`). **SCHEMABINDING** is only supported for natively compiled stored procedures in this version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|**BEGIN ATOMIC**|The natively compiled stored procedure body must consist of exactly one atomic block. Atomic blocks guarantee atomic execution of the stored procedure. If the procedure is invoked outside the context of an active transaction, it will start a new transaction, which commits at the end of the atomic block. Atomic blocks in natively compiled stored procedures have two required options:<br /><br /> **TRANSACTION ISOLATION LEVEL**. See [Transaction Isolation Levels for Memory-Optimized Tables](../Topic/Transaction%20Isolation%20Levels%20for%20Memory-Optimized%20Tables.md) for supported isolation levels.<br /><br /> **LANGUAGE**. The language for the stored procedure must be set to one of the available languages or language aliases.|  
  
## See Also  
 [Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/natively-compiled-stored-procedures.md)  
  
  