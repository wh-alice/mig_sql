---
title: "Session Properties - SQL Server Native Client OLE DB provider | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "sessions [OLE DB]"
  - "SQL Server Native Client OLE DB provider, sessions"
ms.assetid: 2498fbad-b3db-4bea-8fc6-fef5317d3eba
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# Session Properties - SQL Server Native Client OLE DB provider
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider interprets OLE DB session properties as follows.  
  
|Property ID|Description|  
|-----------------|-----------------|  
|DBPROP_SESS_AUTOCOMMITISOLEVELS|The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports all autocommit transaction isolation levels with the exception of the chaos level DBPROPVAL_TI_CHAOS.|  
  
 In the provider-specific property set DBPROPSET_SQLSERVERSESSION, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider defines the following additional session property.  
  
|Property ID|Description|  
|-----------------|-----------------|  
|SSPROP_QUOTEDCATALOGNAMES|Type: VT_BOOL<br /><br /> R/W: Read/write<br /><br /> Default: VARIANT_FALSE<br /><br /> Description: Quoted identifiers allowed in CATALOG restriction.<br /><br /> VARIANT_TRUE: Quoted identifiers are recognized for a catalog restriction for the schema rowsets that supply distributed query support.<br /><br /> VARIANT_FALSE: Quoted identifiers are not recognized for a catalog restriction for the schema rowsets that supply distributed query support.<br /><br /> For more information about schema rowsets that supply distributed query support, see [Distributed Query Support in Schema Rowsets](../Topic/Distributed%20Query%20Support%20in%20Schema%20Rowsets.md).|  
|SSPROP_ALLOWNATIVEVARIANT|Type: VT_BOOL<br /><br /> R/W: Read/Write<br /><br /> Default: VARIANT_FALSE<br /><br /> Description: Determines if the data fetched in is as DBTYPE_VARIANT or DBTYPE_SQLVARIANT.<br /><br /> VARIANT_TRUE: Column type is returned as DBTYPE_SQLVARIANT in which case the buffer will hold SSVARIANT structure.<br /><br /> VARIANT_FALSE: Column type is returned as DBTYPE_VARIANT and the buffer will have VARIANT structure.|  
|SSPROP_ASYNCH_BULKCOPY|To use asynchronous mode, set the provider specific session property SSPROP_ASYNCH_BULKCOPY to VARIANT_TRUE before calling the BCPExec method. This property is available in the DBPROPSET_SQLSERVERSESSION property set.|  
  
## See Also  
 [Data Source Objects &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-data-source-objects/data-source-objects-ole-db.md)  
  
  