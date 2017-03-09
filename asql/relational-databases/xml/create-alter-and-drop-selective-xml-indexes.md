---
title: "Create, Alter, and Drop Selective XML Indexes | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c398f396-f630-4a2d-a264-f243c5346de1
caps.latest.revision: 8
ms.author: "rickbyh"
manager: "jhubbard"
---
# Create, Alter, and Drop Selective XML Indexes
  Describes how to create a new selective XML index, or alter or drop an existing selective XML index.  
  
 For more information about selective XML indexes, see [Selective XML Indexes &#40;SXI&#41;](../../relational-databases/xml/selective-xml-indexes-sxi.md).  
  
##  <a name="create"></a> Creating a Selective XML Index  
  
### How to: Create a Selective XML Index  
 **Create a Selective XML Index by Using Transact-SQL**  
 Create a selective XML index by calling the CREATE SELECTIVE XML INDEX statement. For more information, see [CREATE SELECTIVE XML INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-selective-xml-index-transact-sql.md).  
  
 **Example**  
  
 The following example shows the syntax for creating a selective XML index. It also shows several variations of the syntax for describing the paths to be indexed, with optional optimization hints.  
  
```tsql  
CREATE SELECTIVE XML INDEX sxi_index  
ON Tbl(xmlcol)  
  
FOR(  
    pathab   = '/a/b' as XQUERY 'node()'  
    pathabc  = '/a/b/c' as XQUERY 'xs:double',   
    pathdtext = '/a/b/d/text()' as XQUERY 'xs:string' MAXLENGTH(200) SINGLETON  
    pathabe = '/a/b/e' as SQL NVARCHAR(100)  
)  
```  
  
  
##  <a name="alter"></a> Altering a Selective XML Index  
  
### How to: Alter a Selective XML Index  
 **Alter a Selective XML Index by Using Transact-SQL**  
 Alter an existing selective XML index by calling the ALTER INDEX statement. For more information, see [ALTER INDEX &#40;Selective XML Indexes&#41;](../../t-sql/statements/alter-index-selective-xml-indexes.md).  
  
 **Example**  
  
 The following example shows an ALTER INDEX statement. This statement adds the path `'/a/b/m'` to the XQuery part of the index and deletes the path `'/a/b/e'` from the SQL part of the index created in the example in the topic [CREATE SELECTIVE XML INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-selective-xml-index-transact-sql.md). The path to delete is identified by the name that was given to it when it was created.  
  
```tsql  
ALTER INDEX sxi_index  
ON Tbl  
FOR   
(  
    ADD pathm = '/a/b/m' as XQUERY 'node()' ,  
    REMOVE pathabe  
)  
```  
  
  
##  <a name="drop"></a> Dropping a Selective XML Index  
  
### How to: Drop a Selective XML Index  
 **Drop a Selective XML Index by Using Transact-SQL**  
 Drop a selective XML index by calling the DROP INDEX statement. For more information, see [DROP INDEX &#40;Selective XML Indexes&#41;](../../t-sql/statements/drop-index-selective-xml-indexes.md).  
  
 **Example**  
  
 The following example shows a DROP INDEX statement.  
  
```tsql  
DROP INDEX sxi_index ON tbl  
```  
  
  
  