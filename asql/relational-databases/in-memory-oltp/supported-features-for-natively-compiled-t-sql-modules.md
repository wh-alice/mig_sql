---
title: "Supported Features for Natively Compiled T-SQL Modules | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 05515013-28b5-4ccf-9a54-ae861448945b
caps.latest.revision: 44
ms.author: "genemi"
manager: "jhubbard"
---
# Supported Features for Natively Compiled T-SQL Modules
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../relational-databases/extended-events/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]


  This topic contains a list of T-SQL surface area and supported features in the body of natively compiled T-SQL modules, such as stored procedures ([CREATE PROCEDURE (Transact-SQL)](../../t-sql/statements/create-procedure-transact-sql.md)), scalar user-defined functions, inline table-valued functions, and triggers.  

 For supported features around the definition of native modules, see [Supported DDL for Natively Compiled T-SQL modules](../../relational-databases/in-memory-oltp/supported-ddl-for-natively-compiled-t-sql-modules.md).  

-   [Query Surface Area in Native Modules](#qsancsp)  

-   [Data Modification](#dml)  

-   [Control-of-flow language](#cof)  

-   [Supported Operators](#so)  

-   [Built-in Functions in Natively Compiled Modules](#bfncsp)  

-   [Auditing](../../relational-databases/in-memory-oltp/supported-features-for-natively-compiled-t-sql-modules.md#auditing)  

-   [Table and Query Hints](../../relational-databases/in-memory-oltp/supported-features-for-natively-compiled-t-sql-modules.md#tqh)  

-   [Limitations on Sorting](../../relational-databases/in-memory-oltp/supported-features-for-natively-compiled-t-sql-modules.md#los)  

 For complete information about unsupported constructs, and for information about how to work around some of the unsupported features in natively compiled modules, see [Migration Issues for Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/migration-issues-for-natively-compiled-stored-procedures.md). For more information about unsupported features, see [Transact-SQL Constructs Not Supported by In-Memory OLTP](../../relational-databases/in-memory-oltp/transact-sql-constructs-not-supported-by-in-memory-oltp.md).  

##  <a name="qsancsp"></a> Query Surface Area in Native Modules  

The following query constructs are supported:  

SELECT clause:  

-   Columns and  name aliases (using either AS or = syntax).  

-   Scalar subqueries  

-   TOP*  

-   SELECT DISTINCT  

              DISTINCT aggregates are not supported.  

-   UNION and UNION ALL

-   Variable assignments  

FROM clause:  

-   FROM \<memory optimized table or table variable>  

-   FROM \<natively compiled inline TVF>  

-   LEFT OUTER JOIN, RIGHT OUTER JOIN, CROSS JOIN and INNER JOIN.  

-   Subqueries `[AS] table_alias`. For more information, see [FROM &#40;Transact-SQL&#41;](../../t-sql/queries/from-transact-sql.md).  

WHERE clause:  

-   Filter predicate IS [NOT] NULL  

-   AND, OR, NOT, IN, EXISTS, BETWEEN  


[GROUP BY](../../t-sql/queries/select-group-by-transact-sql.md) clause:

- Aggregate functions AVG, COUNT, COUNT_BIG, MIN, MAX, and SUM.  

- MIN and MAX are not supported for types nvarchar, char, varchar, varchar, varbinary, and binary.  

[ORDER BY](../../t-sql/queries/select-order-by-clause-transact-sql.md) clause:


- There is no support for **DISTINCT** in the **ORDER BY** clause.


- Is supported with [GROUP BY &#40;Transact-SQL&#41;](../../t-sql/queries/select-group-by-transact-sql.md) if an expression in the ORDER BY list appears verbatim in the GROUP BY list.
  - For example, GROUP BY a + b ORDER BY a + b is supported, but GROUP BY a, b ORDER BY a + b is not.  


HAVING clause:

- Is subject to the same expression limitations as the WHERE clause.


#### ORDER BY and TOP are supported in natively compiled modules, with some restrictions


- There is no support for **WITH TIES** or **PERCENT** in the **TOP** clause.


- There is no support for **DISTINCT** in the **ORDER BY** clause.  


- **TOP** combined with **ORDER BY** does not support more than 8,192 when using a constant in the **TOP** clause.
  - This limit may be lowered in case the query contains joins or aggregate functions. (For example, with one join (two tables), the limit is 4,096 rows. With two joins (three tables), the limit is 2,730 rows.)  
  - You can obtain results greater than 8,192 by storing the number of rows in a variable:  

```tsql
DECLARE @v INT = 9000;
SELECT TOP (@v) … FROM … ORDER BY …
```

However, a constant in the **TOP** clause results in better performance compared to using a variable.  

These restrictions on natively compiled [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] do not apply to interpreted [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] access on memory-optimized tables.  


##  <a name="dml"></a> Data Modification  

The following DML statements are supported.  

-   INSERT VALUES (one row per statement) and INSERT ... SELECT  

-   UPDATE  

-   DELETE  

-   WHERE is supported with UPDATE and DELETE statements.  

##  <a name="cof"></a> Control-of-flow language  
 The following control-of-flow language constructs are supported.  

-   [IF...ELSE &#40;Transact-SQL&#41;](../Topic/IF...ELSE%20\(Transact-SQL\).md)  

-   [WHILE &#40;Transact-SQL&#41;](../Topic/WHILE%20\(Transact-SQL\).md)  

-   [RETURN &#40;Transact-SQL&#41;](../Topic/RETURN%20\(Transact-SQL\).md)  

-   [DECLARE @local_variable &#40;Transact-SQL&#41;](../Topic/DECLARE%20@local_variable%20\(Transact-SQL\).md) can use all [Supported Data Types for In-Memory OLTP](../../relational-databases/in-memory-oltp/supported-data-types-for-in-memory-oltp.md), as well as memory-optimized table types. Variables can be declared as NULL or NOT NULL.  

-   [SET @local_variable &#40;Transact-SQL&#41;](../Topic/SET%20@local_variable%20\(Transact-SQL\).md)  

-   [TRY...CATCH &#40;Transact-SQL&#41;](../Topic/TRY...CATCH%20\(Transact-SQL\).md)  

               To achieve optimal performance, use a single TRY/CATCH block for an entire natively compiled T-SQL module.  

-   [THROW &#40;Transact-SQL&#41;](../Topic/THROW%20\(Transact-SQL\).md)  

-   BEGIN ATOMIC (at the outer level of the stored procedure). For more detail see [Atomic Blocks](../../relational-databases/in-memory-oltp/atomic-blocks-in-native-procedures.md).  

##  <a name="so"></a> Supported Operators  
 The following operators are supported.  

-   [Comparison Operators &#40;Transact-SQL&#41;](../Topic/Comparison%20Operators%20\(Transact-SQL\).md) (for example, >, \<, >=, and <=)  

-   Unary operators (+, -).  

-   Binary operators (*, /, +, -, % (modulo)).  

               The plus operator (+) is supported on both numbers and strings.  

-   Logical operators (AND, OR, NOT).  

-   Bitwise operators ~, &, |, and ^  

-   APPLY operator
    - **Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.  
      Beginning with [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1, the APPLY operator is supported in natively compiled modules.

##  <a name="bfncsp"></a> Built-in Functions in Natively Compiled Modules  
 The following functions are supported in constraints on memory-optimized tables and in natively compiled T-SQL modules.  

-   All [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)  

-   Date functions: CURRENT_TIMESTAMP, DATEADD, DATEDIFF, DATEFROMPARTS, DATEPART, DATETIME2FROMPARTS, DATETIMEFROMPARTS, DAY, EOMONTH, GETDATE, GETUTCDATE, MONTH, SMALLDATETIMEFROMPARTS, SYSDATETIME, SYSUTCDATETIME, and YEAR.  

-   String functions: LEN, LTRIM, RTRIM, and SUBSTRING.  
    - **Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.  
      Beginning with [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1, the following built-in functions are also supported: TRIM, TRANSLATE, and CONCAT_WS.  

-   Identity functions: SCOPE_IDENTITY  

-   NULL functions: ISNULL  

-   Uniqueidentifier functions: NEWID and NEWSEQUENTIALID  

-   JSON functions  
    - **Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.  
      Beginning with [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1, the JSON functions are supported in natively compiled modules.

-   Error functions: ERROR_LINE, ERROR_MESSAGE, ERROR_NUMBER, ERROR_PROCEDURE, ERROR_SEVERITY, and ERROR_STATE  

-   System Functions: @@rowcount. Statements inside natively compiled stored procedures update @@rowcount and you can use @@rowcount in a natively compiled stored procedure to determine the number of rows affected by the last statement executed within that natively compiled stored procedure. However, @@rowcount is reset to 0 at the start and at the end of the execution of a natively compiled stored procedure.  

-   Security functions: IS_MEMBER({'group' | 'role'}), IS_ROLEMEMBER ('role' [, 'database_principal']), IS_SRVROLEMEMBER ('role' [, 'login']), ORIGINAL_LOGIN(), SESSION_USER, CURRENT_USER, SUSER_ID(['login']), SUSER_SID(['login'] [, Param2]), SUSER_SNAME([server_user_sid]), SYSTEM_USER, SUSER_NAME, USER, USER_ID(['user']), USER_NAME([id]), CONTEXT_INFO().

-   Executions of native modules can be nested.

##  <a name="auditing"></a> Auditing  
 Procedure level auditing is supported in natively compiled stored procedures.  

 For more information about auditing, see [Create a Server Audit and Database Audit Specification](../../relational-databases/security/auditing/create-a-server-audit-and-database-audit-specification.md).  

##  <a name="tqh"></a> Table and Query Hints  
 The following are supported:  

-   INDEX, FORCESCAN, and FORCESEEK hints, either in table hints syntax or in [OPTION Clause &#40;Transact-SQL&#41;](../../t-sql/queries/option-clause-transact-sql.md) of the query. For more information, see [Table Hints &#40;Transact-SQL&#41;](../../t-sql/queries/hints-transact-sql-table.md).  

-   FORCE ORDER  

-   LOOP JOIN hint  

-   OPTIMIZE FOR  

 For more information, see [Query Hints &#40;Transact-SQL&#41;](../../t-sql/queries/hints-transact-sql-query.md).  

##  <a name="los"></a> Limitations on Sorting  
 You can sort greater than 8,000 rows in a query that uses [TOP &#40;Transact-SQL&#41;](../../t-sql/queries/top-transact-sql.md) and an [ORDER BY Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-order-by-clause-transact-sql.md). However, without [ORDER BY Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-order-by-clause-transact-sql.md), [TOP &#40;Transact-SQL&#41;](../../t-sql/queries/top-transact-sql.md) can sort up to 8,000 rows (fewer rows if there are joins).  

 If your query uses both the [TOP &#40;Transact-SQL&#41;](../../t-sql/queries/top-transact-sql.md) operator and an [ORDER BY Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-order-by-clause-transact-sql.md), you can specify up to 8192 rows for the TOP operator. If you specify more than 8192 rows you get the error message: **Msg 41398, Level 16, State 1, Procedure *\<procedureName>*, Line *\<lineNumber>* The TOP operator can return a maximum of 8192 rows; *\<number>* was requested.**  

 If you do not have a TOP clause, you can sort any number of rows with ORDER BY.  

 If you do not use an ORDER BY clause, you can use any integer value with the TOP operator.  

 Example with TOP N = 8192: Compiles  

```tsql  
CREATE PROCEDURE testTop  
WITH EXECUTE AS OWNER, SCHEMABINDING, NATIVE_COMPILATION  
  AS  
  BEGIN ATOMIC WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')  
    SELECT TOP 8192 ShoppingCartId, CreatedDate, TotalPrice FROM dbo.ShoppingCart  
    ORDER BY ShoppingCartId DESC  
  END;  
GO  
```

 Example with TOP N > 8192: Fails to compile.  

```tsql  
CREATE PROCEDURE testTop  
WITH EXECUTE AS OWNER, SCHEMABINDING, NATIVE_COMPILATION  
  AS  
  BEGIN ATOMIC WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')  
    SELECT TOP 8193 ShoppingCartId, CreatedDate, TotalPrice FROM dbo.ShoppingCart  
    ORDER BY ShoppingCartId DESC  
  END;  
GO  
```

 The 8192 row limitation only applies to `TOP N` where `N` is a constant, as in the preceding examples.  If you need `N` greater than 8192 you can assign the value to a variable and use that variable with `TOP`.  

 Example using a variable: Compiles  

```tsql  
CREATE PROCEDURE testTop  
WITH EXECUTE AS OWNER, SCHEMABINDING, NATIVE_COMPILATION  
  AS  
  BEGIN ATOMIC WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')  
    DECLARE @v int = 8193   
    SELECT TOP (@v) ShoppingCartId, CreatedDate, TotalPrice FROM dbo.ShoppingCart  
    ORDER BY ShoppingCartId DESC  
  END;  
GO  
```

 **Limitations on rows returned:** There are two cases where that can potentially reduce the number of rows that can be returned by the TOP operator:  

-   Using JOINs in the query.  The influence of JOINs on the limitation depends on the query plan.  

-   Using aggregate functions or references to aggregate functions in the ORDER BY clause.  

 The formula to calculate a worst case maximum supported N in TOP N is: `N = floor ( 65536 / number_of_tables * 8 + total_size+of+aggs )`.  

## See Also  
 [Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/natively-compiled-stored-procedures.md)   
 [Migration Issues for Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/migration-issues-for-natively-compiled-stored-procedures.md)  

