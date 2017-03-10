---
title: "SQUARE (Transact-SQL) | Microsoft Docs"
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
  - "SQUARE"
  - "SQUARE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SQUARE"
  - "square values"
ms.assetid: 007b6b12-da86-4229-8f5c-fdd4fa839f5f
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQUARE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns the square of the specified float value.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SQUARE ( float_expression )  
```  
  
## Arguments  
 *float_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of type **float** or of a type that can be implicitly converted to float.  
  
## Return Types  
 **float**  
  
## Examples  
 The following example returns the volume of a cylinder having a radius of `1` inch and a height of `5` inches.  
  
```  
DECLARE @h float, @r float;  
SET @h = 5;  
SET @r = 1;  
SELECT PI()* SQUARE(@r)* @h AS 'Cyl Vol';  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Cyl Vol  
--------------------------  
15.707963267948966  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example returns the square of each value in the `volume` column in the `containers` table.  
  
```  
-- Uses AdventureWorks  
  
CREATE TABLE Containers (  
    ID int NOT NULL,  
    Name varchar(20),  
    Volume float(24));  
  
INSERT INTO Containers VALUES (1, 'Cylinder', '125.22');  
INSERT INTO Containers VALUES (2, 'Cube', '23.98');  
  
SELECT Name, SQUARE(Volume) AS VolSquared   
FROM Containers;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Name           VolSquared`  
  
 `-------------  ----------`  
  
 `Cylinder       15680.05`  
  
 `Cube             575.04`  
  
## See Also  
 [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)  
  
  

