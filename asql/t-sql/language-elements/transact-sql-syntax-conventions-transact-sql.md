---
title: "Transact-SQL Syntax Conventions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sql13.TSQLExpandPortal.f1"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "conventions [SQL Server]"
  - "Applies to section in Transact-SQL topics"
  - "code example conventions [SQL Server]"
  - "objects [SQL Server], names"
  - "code [SQL Server], conventions"
  - "multipart names [SQL Server]"
  - "Transact-SQL syntax conventions"
  - "syntax conventions [SQL Server]"
  - "code [SQL Server]"
  - "Transact-SQL"
  - "naming conventions [SQL Server]"
  - "syntax [SQL Server], Transact-SQL"
ms.assetid: 35fbcf7f-8b55-46cd-a957-9b8c7b311241
caps.latest.revision: 55
ms.author: "rickbyh"
manager: "jhubbard"
---
# Transact-SQL Syntax Conventions-Transact-SQL
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  The following table lists and describes conventions that are used in the syntax diagrams in the [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] Reference.  
  
|Convention|Used for|  
|----------------|--------------|  
|UPPERCASE|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] keywords.|  
|*italic*|User-supplied parameters of [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] syntax.|  
|**bold**|Database names, table names, column names, index names, stored procedures, utilities, data type names, and text that must be typed exactly as shown.|  
|**underline**|Indicates the default value applied when the clause that contains the underlined value is omitted from the statement.|  
|&#124; (vertical bar)|Separates syntax items enclosed in brackets or braces. You can use only one of the items.|  
|[ ] (brackets)|Optional syntax items. Do not type the brackets.|  
|{ } (braces)|Required syntax items. Do not type the braces.|  
|[**,**...*n*]|Indicates the preceding item can be repeated *n* number of times. The occurrences are separated by commas.|  
|[...*n*]|Indicates the preceding item can be repeated *n* number of times. The occurrences are separated by blanks.|  
|;|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement terminator.Although the semicolon is not required for most statements in this version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], it will be required in a future version.|  
|\<label> ::=|The name for a block of syntax. This convention is used to group and label sections of lengthy syntax or a unit of syntax that can be used in more than one location within a statement. Each location in which the block of syntax can be used is indicated with the label enclosed in chevrons: \<label>.<br /><br /> A set is a collection of expressions, for example \<grouping set>; and a list is a collection of sets, for example \<composite element list>.|  
  
## Multipart Names  
 Unless specified otherwise, all [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] references to the name of a database object can be a four-part name in the following form:  
  
 *server_name* **.**[*database_name*]**.**[*schema_name*]**.***object_name*  
  
 | *database_name***.**[*schema_name*]**.***object_name*  
  
 | *schema_name***.***object_name*  
  
 *| object_name*  
  
 *server_name*  
 Specifies a linked server name or remote server name.  
  
 *database_name*  
 Specifies the name of a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database when the object resides in a local instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. When the object is in a linked server, *database_name* specifies an OLE DB catalog.  
  
 *schema_name*  
 Specifies the name of the schema that contains the object if the object is in a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database. When the object is in a linked server, *schema_name* specifies an OLE DB schema name.  
  
 *object_name*  
 Refers to the name of the object.  
  
 When referencing a specific object, you do not always have to specify the server, database, and schema for the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] to identify the object. However, if the object cannot be found, an error is returned.  
  
> [!NOTE]  
>  To avoid name resolution errors, we recommend specifying the schema name whenever you specify a schema-scoped object.  
  
 To omit intermediate nodes, use periods to indicate these positions. The following table shows the valid formats of object names.  
  
|Object reference format|Description|  
|-----------------------------|-----------------|  
|*server* **.** *database* **.** *schema* **.** *object*|Four-part name.|  
|*server* **.** *database* **..** *object*|Schema name is omitted.|  
|*server* **..** *schema* **.** *object*|Database name is omitted.|  
|*server* **...** *object*|Database and schema name are omitted.|  
|*database* **.** *schema* **.** *object*|Server name is omitted.|  
|*database* **..** *object*|Server and schema name are omitted.|  
|*schema* **.** *object*|Server and database name are omitted.|  
|*object*|Server, database, and schema name are omitted.|  
  
## Code Example Conventions  
 Unless stated otherwise, the examples provided in the [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] Reference were tested by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] and its default settings for the following options:  
  
-   ANSI_NULLS  
  
-   ANSI_NULL_DFLT_ON  
  
-   ANSI_PADDING  
  
-   ANSI_WARNINGS  
  
-   CONCAT_NULL_YIELDS_NULL  
  
-   QUOTED_IDENTIFIER  
  
 Most code examples in the [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] Reference have been tested on servers that are running a case-sensitive sort order. The test servers were typically running the ANSI/ISO 1252 code page.  
  
 Many code examples prefix Unicode character string constants with the letter **N**. Without the **N** prefix, the string is converted to the default code page of the database. This default code page may not recognize certain characters.  
  
## "Applies to" References  
 The [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] reference includes topics related to [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)], [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)], [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)], [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)], and [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)]. Near the top of each topic is a section indicating which products support the subject of the topic. If a product is omitted, then the feature described by the topic is not available in that product. For example, availability groups were introduced in [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)]. The **CREATE AVAILABILTY GROUP** topic indicates it applies to **SQL Server (SQL Server 2012 through current version)** because it does not apply to [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)], [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)], or [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].  
  
 In some cases, the general subject of topic can be used in a product, but all of the arguments are not supported. For example, contained database users were introduced in [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)]. The **CREATE USER** statement can be used in any [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] product, however the **WITH PASSWORD** syntax cannot be used with older versions. In this case, additional **Applies to** sections are inserted into the appropriate argument descriptions in the body of the topic.  
  
## See Also  
 [Transact-SQL Reference &#40;Database Engine&#41;](../../t-sql/transact-sql-reference-database-engine.md)  
  
  

