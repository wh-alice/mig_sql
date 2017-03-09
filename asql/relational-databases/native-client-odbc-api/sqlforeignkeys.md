---
title: "SQLForeignKeys | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apitype: "DLLExport"
helpviewer_keywords: 
  - "SQLForeignKeys function"
ms.assetid: 6c01ce0d-30d7-4c86-8705-3ab254d8a845
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLForeignKeys
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports cascading updates and deletes through the foreign key constraint mechanism. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] returns SQL_CASCADE for UPDATE_RULE and/or DELETE_RULE columns if CASCADE option is specified on the ON UPDATE and/or ON DELETE clause of the FOREIGN KEY constraints. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] returns SQL_NO_ACTION for UPDATE_RULE and/or DELETE_RULE columns if NO ACTION option is specified on the ON UPDATE and/or ON DELETE clause of the FOREIGN KEY constraints.  
  
 When invalid values are present in any **SQLForeignKeys** parameter, **SQLForeignKeys** returns SQL_SUCCESS on execution. **SQLFetch** returns SQL_NO_DATA when invalid values are used in these parameters.  
  
 **SQLForeignKeys** can be executed on a static server cursor. An attempt to execute **SQLForeignKeys** on an updatable (dynamic or keyset) cursor returns SQL_SUCCESS_WITH_INFO indicating that the cursor type has been changed.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver supports reporting information for tables on linked servers by accepting a two-part name for the *FKCatalogName* and *PKCatalogName* parameters: *Linked_Server_Name.Catalog_Name*.  
  
## See Also  
 [SQLForeignKeys Function](http://go.microsoft.com/fwlink/?LinkId=59344)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  