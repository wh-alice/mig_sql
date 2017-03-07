---
title: "SYSTEM_USER (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "SYSTEM_USER_TSQL"
  - "SYSTEM_USER"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "current user names"
  - "system-supplied user names [SQL Server]"
  - "users [SQL Server], logins"
  - "logins [SQL Server], identification name"
  - "current system user names"
  - "SYSTEM_USER function"
  - "inserting system user name into table"
  - "system usernames [SQL Server]"
  - "users [SQL Server], names"
ms.assetid: 565984cd-60c6-4df7-83ea-2349b838ccb2
caps.latest.revision: 44
ms.author: "rickbyh"
manager: "jhubbard"
---
# SYSTEM_USER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Allows a system-supplied value for the current login to be inserted into a table when no default value is specified.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SYSTEM_USER  
```  
  
## Return Types  
 **nchar**  
  
## Remarks  
 You can use the SYSTEM_USER function with DEFAULT constraints in the CREATE TABLE and ALTER TABLE statements. You can also use it as any standard function.  
  
 If the user name and login name are different, SYSTEM_USER returns the login name.  
  
 If the current user is logged in to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using Windows Authentication, SYSTEM_USER returns the Windows login identification name in the form: *DOMAIN*\\*user_login_name*. However, if the current user is logged in to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using SQL Server Authentication, SYSTEM_USER returns the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login identification name, such as `WillisJo` for a user logged in as `WillisJo`.  
  
 SYSTEM_USER returns the name of the currently executing context. If the EXECUTE AS statement has been used to switch context, SYSTEM_USER returns the name of the impersonated context.  
  
## Examples  
  
### A. Using SYSTEM_USER to return the current system user name  
 The following example declares a `char` variable, stores the current value of `SYSTEM_USER` in the variable, and then prints the value stored in the variable.  
  
```  
DECLARE @sys_usr char(30);  
SET @sys_usr = SYSTEM_USER;  
SELECT 'The current system user is: '+ @sys_usr;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `----------------------------------------------------------`  
  
 `The current system user is: WillisJo`  
  
 `(1 row(s) affected)`  
  
### B. Using SYSTEM_USER with DEFAULT constraints  
 The following example creates a table with `SYSTEM_USER` as a `DEFAULT` constraint for the `SRep_tracking_user` column.  
  
```  
USE AdventureWorks2012;  
GO  
CREATE TABLE Sales.Sales_Tracking  
(  
    Territory_id int IDENTITY(2000, 1) NOT NULL,  
    Rep_id  int NOT NULL,  
    Last_sale datetime NOT NULL DEFAULT GETDATE(),  
    SRep_tracking_user varchar(30) NOT NULL DEFAULT SYSTEM_USER  
);  
GO  
INSERT Sales.Sales_Tracking (Rep_id)  
VALUES (151);  
INSERT Sales.Sales_Tracking (Rep_id, Last_sale)  
VALUES (293, '19980515');  
INSERT Sales.Sales_Tracking (Rep_id, Last_sale)  
VALUES (27882, '19980620');  
INSERT Sales.Sales_Tracking (Rep_id)  
VALUES (21392);  
INSERT Sales.Sales_Tracking (Rep_id, Last_sale)  
VALUES (24283, '19981130');  
GO  
```  
  
 The following query to selects all the information from the `Sales_Tracking` table:  
  
```  
SELECT * FROM Sales_Tracking ORDER BY Rep_id;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Territory_id Rep_id Last_sale            SRep_tracking_user`  
  
 `-----------  ------ -------------------- ------------------`  
  
 `2000         151    Mar 4 1998 10:36AM   ArvinDak`  
  
 `2001         293    May 15 1998 12:00AM  ArvinDak`  
  
 `2003         21392  Mar 4 1998 10:36AM   ArvinDak`  
  
 `2004         24283  Nov 3 1998 12:00AM   ArvinDak`  
  
 `2002         27882  Jun 20 1998 12:00AM  ArvinDak`  
  
 `(5 row(s) affected)`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C: Using SYSTEM_USER to return the current system user name  
 The following example returns the current value of `SYSTEM_USER`.  
  
```  
SELECT SYSTEM_USER;  
```  
  
## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)   
 [CURRENT_TIMESTAMP &#40;Transact-SQL&#41;](../../t-sql/functions/current-timestamp-transact-sql.md)   
 [CURRENT_USER &#40;Transact-SQL&#41;](../../t-sql/functions/current-user-transact-sql.md)   
 [SESSION_USER &#40;Transact-SQL&#41;](../../t-sql/functions/session-user-transact-sql.md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/system-functions/system-functions-transact-sql.md)   
 [USER &#40;Transact-SQL&#41;](../../t-sql/functions/user-transact-sql.md)  
  
  

