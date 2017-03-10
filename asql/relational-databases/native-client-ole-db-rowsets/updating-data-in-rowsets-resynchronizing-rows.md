---
title: "Resynchronizing Rows | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "synchronization [OLE DB]"
  - "IRowsetResynch interface"
  - "resynchronizing rows"
  - "data updates [SQL Server], OLE DB"
ms.assetid: d2d30505-a878-4aa9-b821-53d8118a45a5
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# Updating Data in Rowsets - Resynchronizing Rows
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports **IRowsetResynch** on [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cursor-supported rowsets only. **IRowsetResynch** is not available on demand. The consumer must request the interface before opening the rowset.  
  
## See Also  
 [Updating Data in Rowsets](../../relational-databases/native-client-ole-db-rowsets/updating-data-in-rowsets.md)  
  
  