---
title: "SET FIPS_FLAGGER (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "FIPS_FLAGGER"
  - "SET_FIPS_FLAGGER_TSQL"
  - "FIPS_FLAGGER_TSQL"
  - "SET FIPS_FLAGGER"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SET FIPS_FLAGGER statement"
  - "FIPS 127-2 standard"
  - "FIPS_FLAGGER option"
ms.assetid: e82f6bee-6cf6-4061-be22-9ad2e8e9d3d6
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET FIPS_FLAGGER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Specifies checking for compliance with the FIPS 127-2 standard. This is based on the ISO standard.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
SET FIPS_FLAGGER ( 'level' |  OFF )  
```  
  
## Arguments  
 **'** *level* **'**  
 Is the level of compliance against the FIPS 127-2 standard for which all database operations are checked. If a database operation conflicts with the level of ISO standards chosen, [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] generates a warning.  
  
 *level* must be one of the following values.  
  
|Value|Description|  
|-----------|-----------------|  
|ENTRY|Standards checking for ISO entry-level compliance.|  
|FULL|Standards checking for ISO full compliance.|  
|INTERMEDIATE|Standards checking for ISO intermediate-level compliance.|  
|OFF|No standards checking.|  
  
## Remarks  
 The setting of SET FIPS_FLAGGER is set at parse time and not at execute or run time. Setting at parse time means that if the SET statement is present in the batch or stored procedure, it takes effect, regardless of whether code execution actually reaches that point; and the SET statement takes effect before any statements are executed. For example, even if the SET statement is in an IF...ELSE statement block that is never reached during execution, the SET statement still takes effect because the IF...ELSE statement block is parsed.  
  
 If SET FIPS_FLAGGER is set in a stored procedure, the value of SET FIPS_FLAGGER is restored after control is returned from the stored procedure. Therefore, a SET FIPS_FLAGGER statement specified in dynamic SQL does not have any effect on any statements following the dynamic SQL statement.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## See Also  
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)  
  
  