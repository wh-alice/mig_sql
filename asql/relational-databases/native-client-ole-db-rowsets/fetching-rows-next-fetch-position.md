---
title: "Next Fetch Position | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "fetching rows"
  - "OLE DB rowsets, fetching"
  - "next fetch position"
  - "rowsets [OLE DB], fetching"
ms.assetid: 9ef74b3f-c9c0-492f-9b93-d65738a61abd
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Fetching Rows - Next Fetch Position
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider keeps track of the next fetch position so that a sequence of calls to the **GetNextRows** method (without skips, changes of direction, or intervening calls to the **FindNextRow**, **Seek**, or **RestartPosition** methods) reads the whole rowset without skipping or repeating any row. The next fetch position is changed either by calling **IRowset::GetNextRows**, **IRowset::RestartPosition**, or **IRowsetIndex::Seek**, or by calling **FindNextRow** with a null *pBookmark* value. Calling **FindNextRow** with a nonnull *pBookmark* value does not affect the next fetch position.  
  
## See Also  
 [Fetching Rows](../../relational-databases/native-client-ole-db-rowsets/fetching-rows.md)  
  
  