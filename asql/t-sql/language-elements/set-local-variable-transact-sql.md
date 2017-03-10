---
title: "SET @local_variable (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SET @local_variable"
  - "variables [SQL Server], assigning"
  - "SET statement, @local_variable"
  - "local variables [SQL Server]"
ms.assetid: d410e06e-061b-4c25-9973-b2dc9b60bd85
caps.latest.revision: 52
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET @local_variable (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Sets the specified local variable, previously created by using the DECLARE @*local_variable* statement, to the specified value.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
SET   
{ @local_variable  
    [ . { property_name | field_name } ] = { expression | udt_name { . | :: } method_name }  
}  
|  
{ @SQLCLR_local_variable.mutator_method  
}  
|  
{ @local_variable  
    {+= | -= | *= | /= | %= | &= | ^= | |= } expression  
}  
|   
  { @cursor_variable =   
    { @cursor_variable | cursor_name   
    | { CURSOR [ FORWARD_ONLY | SCROLL ]   
        [ STATIC | KEYSET | DYNAMIC | FAST_FORWARD ]   
        [ READ_ONLY | SCROLL_LOCKS | OPTIMISTIC ]   
        [ TYPE_WARNING ]   
    FOR select_statement   
        [ FOR { READ ONLY | UPDATE [ OF column_name [ ,...n ] ] } ]   
      }   
    }  
}   
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
SET @local_variable {+= | -= | *= | /= | %= | &= | ^= | |= } expression  
  
```  
  
## Arguments  
 **@** *local_variable*  
 Is the name of a variable of any type except **cursor**, **text**, **ntext**, **image**, or **table**. Variable names must start with one at sign (**@**). Variable names must comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md).  
  
 *property_name*  
 Is a property of a user-defined type.  
  
 *field_name*  
 Is a public field of a user-defined type.  
  
 *udt_name*  
 Is the name of a common language runtime (CLR) user-defined type.  
  
 { **.** | **::** }  
 Specifies a method of a CLR user-define type. For an instance (non-static) method, use  a period (**.**). For a static method, use two colons (**::**). To invoke a method, property, or field of a CLR user-defined type, you must have EXECUTE permission on the type.  
  
 *method_name* **(** *argument* [ **,**... *n* ] **)**  
 Is a method of a user-defined type that takes one or more arguments to modify the state of an instance of a type. Static methods must be public.  
  
 **@** *SQLCLR_local_variable*  
 Is a variable whose type is located in an assembly. For more information, see [Common Language Runtime &#40;CLR&#41; Integration Programming Concepts](../../relational-databases/clr-integration/common-language-runtime-clr-integration-programming-concepts.md).  
  
 *mutator_method*  
 Is a method in the assembly that can change the state of the object. SQLMethodAttribute.IsMutator will be applied to this method.  
  
 { **+=** | **-=** | **\*=** | **/=** | **%=** | **&=** | **^=** | **|=** }  
 Compound assignment operator:  
  
 +=              Add and assign  
  
 -=               Subtract and assign  
  
 *=              Multiply and assign  
  
 /=               Divide and assign  
  
 %=             Modulo and assign  
  
 &=              Bitwise AND and assign  
  
 ^=              Bitwise XOR and assign  
  
 |=               Bitwise OR and assign  
  
 *expression*  
 Is any valid [expression](../../t-sql/language-elements/expressions-transact-sql.md).  
  
 *cursor_variable*  
 Is the name of a cursor variable. If the target cursor variable previously referenced a different cursor, that previous reference is removed.  
  
 *cursor_name*  
 Is the name of a cursor declared by using the DECLARE CURSOR statement.  
  
 CURSOR  
 Specifies that the SET statement contains a declaration of a cursor.  
  
 SCROLL  
 Specifies that the cursor supports all fetch options: FIRST, LAST, NEXT, PRIOR, RELATIVE, and ABSOLUTE. SCROLL cannot be specified when FAST_FORWARD is also specified.  
  
 FORWARD_ONLY  
 Specifies that the cursor supports only the FETCH NEXT option. The cursor can be retrieved only in one direction, from the first to the last row. When FORWARD_ONLY is specified without the STATIC, KEYSET, or DYNAMIC keywords, the cursor is implemented as DYNAMIC. When neither FORWARD_ONLY nor SCROLL is specified, FORWARD_ONLY is the default, unless the keywords STATIC, KEYSET, or DYNAMIC are specified. For STATIC, KEYSET, and DYNAMIC cursors, SCROLL is the default.  
  
 STATIC  
 Defines a cursor that makes a temporary copy of the data to be used by the cursor. All requests to the cursor are answered from this temporary table in tempdb; therefore, modifications made to base tables are not reflected in the data returned by fetches made to this cursor, and this cursor does not allow for modifications.  
  
 KEYSET  
 Specifies that the membership and order of rows in the cursor are fixed when the cursor is opened. The set of keys that uniquely identify the rows is built into the keysettable in tempdb. Changes to nonkey values in the base tables, either made by the cursor owner or committed by other users, are visible as the cursor owner scrolls around the cursor. Inserts made by other users are not visible, and inserts cannot be made through a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] server cursor.  
  
 If a row is deleted, an attempt to fetch the row returns an @@FETCH_STATUS of -2. Updates of key values from outside the cursor are similar to a delete of the old row followed by an insert of the new row. The row with the new values is not visible, and tries to fetch the row with the old values return an @@FETCH_STATUS of -2. The new values are visible if the update is performed through the cursor by specifying the WHERE CURRENT OF clause.  
  
 DYNAMIC  
 Defines a cursor that reflects all data changes made to the rows in its result set as the cursor owner scrolls around the cursor. The data values, order, and membership of the rows can change on each fetch. The absolute and relative fetch options are not supported with dynamic cursors.  
  
 FAST_FORWARD  
 Specifies a FORWARD_ONLY, READ_ONLY cursor with optimizations enabled. FAST_FORWARD cannot be specified when SCROLL is also specified.  
  
 READ_ONLY  
 Prevents updates from being made through this cursor. The cursor cannot be referenced in a WHERE CURRENT OF clause in an UPDATE or DELETE statement. This option overrides the default capability of a cursor to be updated.  
  
 SCROLL LOCKS  
 Specifies that positioned updates or deletes made through the cursor are guaranteed to succeed. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] locks the rows as they are read into the cursor to guarantee their availability for later modifications. SCROLL_LOCKS cannot be specified when FAST_FORWARD is also specified.  
  
 OPTIMISTIC  
 Specifies that positioned updates or deletes made through the cursor do not succeed if the row has been updated since it was read into the cursor. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not lock rows as they are read into the cursor. Instead, it uses comparisons of timestamp column values, or a checksum value if the table has no timestamp column, to determine whether the row was modified after it was read into the cursor. If the row was modified, the attempted positioned update or delete fails. OPTIMISTIC cannot be specified when FAST_FORWARD is also specified.  
  
 TYPE_WARNING  
 Specifies that a warning message is sent to the client when the cursor is implicitly converted from the requested type to another.  
  
 FOR *select_statement*  
 Is a standard SELECT statement that defines the result set of the cursor. The keywords FOR BROWSE, and INTO are not allowed within the *select_statement* of a cursor declaration.  
  
 If DISTINCT, UNION, GROUP BY, or HAVING are used, or an aggregate expression is included in the *select_list*, the cursor will be created as STATIC.  
  
 If each underlying tables does not have a unique index and an ISO SCROLL cursor or a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] KEYSET cursor is requested, it will automatically be a STATIC cursor.  
  
 If *select_statement* contains an ORDER BY clause in which the columns are not unique row identifiers, a DYNAMIC cursor is converted to a KEYSET cursor, or to a STATIC cursor if a KEYSET cursor cannot be opened. This also occurs for a cursor defined by using ISO syntax but without the STATIC keyword.  
  
 READ ONLY  
 Prevents updates from being made through this cursor. The cursor cannot be referenced in a WHERE CURRENT OF clause in an UPDATE or DELETE statement. This option overrides the default capability of a cursor to be updated. This keyword varies from the earlier READ_ONLY by having a space instead of an underscore between READ and ONLY.  
  
 UPDATE [OF *column_name*[ **,**... *n* ] ]  
 Defines updatable columns within the cursor. If OF *column_name* [**,**...*n*] is supplied, only the columns listed will allow modifications. If no list is supplied, all columns can be updated, unless the cursor has been defined as READ_ONLY.  
  
## Remarks  
 After a variable is declared, it is initialized to NULL. Use the SET statement to assign a value that is not NULL to a declared variable. The SET statement that assigns a value to the variable returns a single value. When you initialize multiple variables, use a separate SET statement for each local variable.  
  
 Variables can be used only in expressions, not instead of object names or keywords. To construct dynamic [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements, use EXECUTE.  
  
 The syntax rules for SET **@***cursor_variable* do not include the LOCAL and GLOBAL keywords. When the SET **@***cursor_variable* = CURSOR... syntax is used, the cursor is created as GLOBAL or LOCAL, depending on the setting of the default to local cursor database option.  
  
 Cursor variables are always local, even if they reference a global cursor. When a cursor variable references a global cursor, the cursor has both a global and a local cursor reference. For more information, see Example C.  
  
 For more information, see [DECLARE CURSOR &#40;Transact-SQL&#41;](../../t-sql/language-elements/declare-cursor-transact-sql.md).  
  
 The compound assignment operator can be used anywhere you have an assignment with an expression on the right hand side of the operator, including variables, and a SET in an UPDATE, SELECT and RECEIVE statement.  
  
 Do not use a variable in a SELECT statement to concatenate values (that is, to compute aggregate values). Unexpected query results may occur. This is because all expressions in the SELECT list (including assignments) are not guaranteed to be executed exactly once for each output row. For more information, see [this KB article](http://support.microsoft.com/kb/287515).  
  
## Permissions  
 Requires membership in the public role. All users can use SET **@***local_variable*.  
  
## Examples  
  
### A. Printing the value of a variable initialized by using SET  
 The following example creates the `@myvar` variable, puts a string value into the variable, and prints the value of the `@myvar` variable.  
  
```  
DECLARE @myvar char(20);  
SET @myvar = 'This is a test';  
SELECT @myvar;  
GO  
```  
  
### B. Using a local variable assigned a value by using SET in a SELECT statement  
 The following example creates a local variable named `@state` and uses this local variable in a `SELECT` statement to find the first and last names of all employees who reside in the state of `Oregon`.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @state char(25);  
SET @state = N'Oregon';  
SELECT RTRIM(FirstName) + ' ' + RTRIM(LastName) AS Name, City  
FROM HumanResources.vEmployee  
WHERE StateProvinceName = @state;  
```  
  
### C. Using a compound assignment for a local variable  
 The following two examples produce the same result. They create a local variable named `@NewBalance`, multiplies it by 10 and displays the new value of the local variable in a `SELECT` statement. The second example uses a compound assignment operator.  
  
```  
/* Example one */  
DECLARE  @NewBalance  int ;  
SET  @NewBalance  =  10;  
SET  @NewBalance  =  @NewBalance  *  10;  
SELECT  @NewBalance;  
  
/* Example Two */  
DECLARE @NewBalance int = 10;  
SET @NewBalance *= 10;  
SELECT @NewBalance;  
```  
  
### D. Using SET with a global cursor  
 The following example creates a local variable and then sets the cursor variable to the global cursor name.  
  
```  
DECLARE my_cursor CURSOR GLOBAL   
FOR SELECT * FROM Purchasing.ShipMethod  
DECLARE @my_variable CURSOR ;  
SET @my_variable = my_cursor ;   
--There is a GLOBAL cursor declared(my_cursor) and a LOCAL variable  
--(@my_variable) set to the my_cursor cursor.  
DEALLOCATE my_cursor;   
--There is now only a LOCAL variable reference  
--(@my_variable) to the my_cursor cursor.  
```  
  
### E. Defining a cursor by using SET  
 The following example uses the `SET` statement to define a cursor.  
  
```  
DECLARE @CursorVar CURSOR;  
  
SET @CursorVar = CURSOR SCROLL DYNAMIC  
FOR  
SELECT LastName, FirstName  
FROM AdventureWorks2012.HumanResources.vEmployee  
WHERE LastName like 'B%';  
  
OPEN @CursorVar;  
  
FETCH NEXT FROM @CursorVar;  
WHILE @@FETCH_STATUS = 0  
BEGIN  
    FETCH NEXT FROM @CursorVar  
END;  
  
CLOSE @CursorVar;  
DEALLOCATE @CursorVar;  
```  
  
### F. Assigning a value from a query  
 The following example uses a query to assign a value to a variable.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @rows int;  
SET @rows = (SELECT COUNT(*) FROM Sales.Customer);  
SELECT @rows;  
```  
  
### G. Assigning a value to a user-defined type variable by modifying a property of the type  
 The following example sets a value for user-defined type `Point` by modifying the value of the property `X` of the type.  
  
```  
DECLARE @p Point;  
SET @p.X = @p.X + 1.1;  
SELECT @p;  
GO  
```  
  
### H. Assigning a value to a user-defined type variable by invoking a method of the type  
 The following example sets a value for user-defined type **point** by invoking method `SetXY` of the type.  
  
```  
DECLARE @p Point;  
SET @p=point.SetXY(23.5, 23.5);  
```  
  
### I. Creating a variable for a CLR type and calling a mutator method  
 The following example creates a variable for the type `Point`, and then executes a mutator method in `Point`.  
  
```  
CREATE ASSEMBLY mytest from 'c:\test.dll' WITH PERMISSION_SET = SAFE  
CREATE TYPE Point EXTERNAL NAME mytest.Point  
GO  
DECLARE @p Point = CONVERT(Point, '')  
SET @p.SetXY(22, 23);  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### J. Printing the value of a variable initialized by using SET  
 The following example creates the `@myvar` variable, puts a string value into the variable, and prints the value of the `@myvar` variable.  
  
```  
DECLARE @myvar char(20);  
SET @myvar = 'This is a test';  
SELECT top 1 @myvar FROM sys.databases;  
  
```  
  
### K. Using a local variable assigned a value by using SET in a SELECT statement  
 The following example creates a local variable named `@dept` and uses this local variable in a `SELECT` statement to find the first and last names of all employees who work in the `Marketing` department.  
  
```  
-- Uses AdventureWorks  
  
DECLARE @dept char(25);  
SET @dept = N'Marketing';  
SELECT RTRIM(FirstName) + ' ' + RTRIM(LastName) AS Name  
FROM DimEmployee   
WHERE DepartmentName = @dept;  
```  
  
### L. Using a compound assignment for a local variable  
 The following two examples produce the same result. They create a local variable named `@NewBalance`, multiplies it by `10` and displays the new value of the local variable in a `SELECT` statement. The second example uses a compound assignment operator.  
  
```  
/* Example one */  
DECLARE  @NewBalance  int ;  
SET  @NewBalance  =  10;  
SET  @NewBalance  =  @NewBalance  *  10;  
SELECT  TOP 1 @NewBalance FROM sys.tables;  
  
/* Example Two */  
DECLARE @NewBalance int = 10;  
SET @NewBalance *= 10;  
SELECT TOP 1 @NewBalance FROM sys.tables;  
```  
  
### M. Assigning a value from a query  
 The following example uses a query to assign a value to a variable.  
  
```  
-- Uses AdventureWorks  
  
DECLARE @rows int;  
SET @rows = (SELECT COUNT(*) FROM dbo.DimCustomer);  
SELECT TOP 1 @rows FROM sys.tables;  
```  
  
## See Also  
 [DECLARE @local_variable &#40;Transact-SQL&#41;](../../t-sql/language-elements/declare-local-variable-transact-sql.md)   
 [EXECUTE &#40;Transact-SQL&#41;](../../t-sql/language-elements/execute-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)  
  
  

