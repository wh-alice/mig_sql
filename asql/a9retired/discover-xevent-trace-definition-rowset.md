---
title: "DISCOVER_XEVENT_TRACE_DEFINITION Rowset | Microsoft Docs"
ms.custom: ""
ms.date: "02/24/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: e1ce2d2d-f994-4318-801a-ee0385aecd84
caps.latest.revision: 5
ms.author: "heidist"
manager: "erikre"
robots: noindex,nofollow
---
# DISCOVER_XEVENT_TRACE_DEFINITION Rowset
  Provides information about XEvent traces that are currently active on the server.  
  
 **Applies to:** tabular models, multidimensional models  
  
## Rowset Columns  
 The **DISCOVER_XEVENT_TRACE_DEFINITION** rowset contains the following columns.  
  
|Column name|Type indicator|Length|Description|  
|-----------------|--------------------|------------|-----------------|  
|**Data**|**DBTYPE_WSTR**||The XML definition of the XEvent trace.|  
  
 This schema rowset is not sorted.  
  
## Using ADOMD.NET to return the rowset  
 When using ADOMD.NET and the schema rowset to retrieve metadata, you can use either the GUID or string to reference a schema rowset object in the GetSchemaDataSet method. For more information, see [Working with Schema Rowsets in ADOMD.NET](../analysis-services/multidimensional-models-adomd-net-client/retrieving-metadata-working-with-schema-rowsets.md).  
  
 The following table provides the GUID and string values that identify this rowset.  
  
|Argument|Value|  
|--------------|-----------|  
|GUID|a07ccd1c-8148-11d0-87bb-00c04fc33942|  
|String|DISCOVER_XEVENT_TRACE_DEFINITION|  
  
## See Also  
 [XML for Analysis Schema Rowsets](../analysis-services/schema-rowsets/xml/xml-for-analysis-schema-rowsets.md)   
 [Monitor Analysis Services with SQL Server Extended Events](../analysis-services/instances/monitor-analysis-services-with-sql-server-extended-events.md)   
 [Use Dynamic Management Views &#40;DMVs&#41; to Monitor Analysis Services](../analysis-services/instances/use-dynamic-management-views-dmvs-to-monitor-analysis-services.md)  
  
  