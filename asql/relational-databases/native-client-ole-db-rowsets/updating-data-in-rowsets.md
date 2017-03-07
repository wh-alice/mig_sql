---
title: "Updating Data in Rowsets | Microsoft Docs"
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
  - "updating data [SQL Server]"
  - "rowsets [OLE DB], updating data"
  - "SQL Server Native Client OLE DB provider, rowsets"
  - "OLE DB rowsets, updating data"
  - "SQL Server Native Client OLE DB provider, data updates"
  - "data updates [SQL Server], OLE DB"
ms.assetid: 37769b1c-c480-419a-8c54-5cc420bf73db
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# Updating Data in Rowsets
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider updates [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data when a consumer updates a modifiable rowset that contains that data. A modifiable rowset is created when the consumer requests support for either the **IRowsetChange** or **IRowsetUpdate** interface.  
  
 All [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider-modifiable rowsets use [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cursors to support the rowset. The rowset property DBPROP_LOCKMODE alters [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] concurrency control behavior in cursors and determines the behavior of rowset row fetching and data integrity error generation in updatable rowsets.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports row synchronization before or after an update.  
  
> [!NOTE]  
>  IRowChange::SetColumns is available to set the values of one or more named columns of a row object.  
  
## In This Section  
  
-   [Updating Data in SQL Server Cursors](../../relational-databases/native-client-ole-db-rowsets/updating-data-in-sql-server-cursors.md)  
  
-   [Resynchronizing Rows](../Topic/Resynchronizing%20Rows.md)  
  
## See Also  
 [Rowsets](../../relational-databases/native-client-ole-db-rowsets/rowsets.md)  
  
  