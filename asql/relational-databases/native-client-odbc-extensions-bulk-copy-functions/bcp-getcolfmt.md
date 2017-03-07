---
title: "bcp_getcolfmt | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "bcp_getcolfmt"
apilocation: 
  - "sqlncli11.dll"
apitype: "DLLExport"
helpviewer_keywords: 
  - "bcp_getcolfmt function"
ms.assetid: f8bdada5-7b2d-4475-8c98-f93e9d77b130
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# bcp_getcolfmt
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Used to find the column format property value.  
  
## Syntax  
  
```  
  
RETCODE bcp_getcolfmt (  
        HDBC hdbc,  
        INT field,  
        INT property,  
        void* pValue,  
        INT cbvalue,  
        INT* pcbLen);  
```  
  
## Arguments  
 *hdbc*  
 Is the bulk copy-enabled ODBC connection handle.  
  
 *field*  
 Is the column number for which the property is retrieved.  
  
 *property*  
 Is one of the property constants.  
  
 *pValue*  
 Is the pointer to the buffer from which to retrieve the property value.  
  
 *cbValue*  
 Is the length of the property buffer in bytes.  
  
 *pcbLen*  
 Pointer to length of the data that is being returned in the property buffer.  
  
## Returns  
 SUCCEED or FAIL.  
  
## Remarks  
 Column format property values are listed in the [bcp_setcolfmt](../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-setcolfmt.md) topic. The column format property values are set by calling the **bcp_setcolfmt** function, and the **bcp_getcolfmt** function is used to find the column format property value.  
  
 Behavior changes may be observed when connecting to a [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] (or later) server computer, compared to earlier [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] versions. For more information, see [Metadata Discovery](../../relational-databases/native-client/features/metadata-discovery.md).  
  
## bcp_getcolfmt Support for Enhanced Date and Time Features  
 The types used with the **BCP_FMT_TYPE** property for date/time types are as specified in [Bulk Copy Changes for Enhanced Date and Time Types &#40;OLE DB and ODBC&#41;](../../relational-databases/native-client-odbc-date-time/bulk-copy-changes-for-enhanced-date-and-time-types-ole-db-and-odbc.md).  
  
 For more information, see [Date and Time Improvements &#40;ODBC&#41;](../../relational-databases/native-client-odbc-date-time/date-and-time-improvements-odbc.md).  
  
## See Also  
 [Bulk Copy Functions](../Topic/Bulk%20Copy%20Functions.md)  
  
  