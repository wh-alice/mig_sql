---
title: "IDBProperties (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 2e5a4fd8-5164-495a-9986-3477aef8d8a5
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# IDBProperties (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The OLE DB standard specification allows providers to specify VT_EMPTY for **DBPROPINFO::vValues**. However, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB always returns VT_EMPTY when you call **IDBProperties::GetPropertyInfo** with **DBPROPSET_ROWSETALL** to retrieve rowset properties.  
  
## See Also  
 [Interfaces &#40;OLE DB&#41;](../Topic/Interfaces%20\(OLE%20DB\).md)  
  
  