---
title: "bcp_collen | Microsoft Docs"
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
  - "bcp_collen"
apilocation: 
  - "sqlncli11.dll"
apitype: "DLLExport"
helpviewer_keywords: 
  - "bcp_collen function"
ms.assetid: faaf1f7a-81f2-4852-a178-56602c33673a
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# bcp_collen
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Sets the data length in the program variable for the current bulk copy into [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
## Syntax  
  
```  
  
RETCODE bcp_collen (  
        HDBC hdbc,  
        DBINT cbData,  
        INT idxServerCol);  
```  
  
## Arguments  
 *hdbc*  
 Is the bulk copy-enabled ODBC connection handle.  
  
 *cbData*  
 Is the length of the data in the program variable, not including the length of any length indicator or terminator. Setting *cbData* to SQL_NULL_DATA indicates all rows copied to the server contain a NULL value for the column. Setting it to SQL_VARLEN_DATA indicates that a string terminator or other method is used to determine the length of data copied. If both a length indicator and a terminator exist, the system uses whichever one results in less data being copied.  
  
 *idxServerCol*  
 Is the ordinal position of the column in the table to which the data is copied. The first column is 1. The ordinal position of a column is reported by [SQLColumns](../../relational-databases/extended-stored-procedures-reference/sqlcolumns.md).  
  
## Returns  
 SUCCEED or FAIL.  
  
## Remarks  
 The **bcp_collen** function allows you to change the data length in the program variable for a particular column when copying data to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] with [bcp_sendrow](../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-sendrow.md).  
  
 Initially, the data length is determined when [bcp_bind](../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-bind.md) is called. If the data length changes between calls to **bcp_sendrow** and no length prefix or terminator is being used, you can call **bcp_collen** to reset the length. The next call to **bcp_sendrow** uses the length set by the call to **bcp_collen**.  
  
 You must call **bcp_collen** once for each column in the table whose data length you want to modify.  
  
## See Also  
 [Bulk Copy Functions](../Topic/Bulk%20Copy%20Functions.md)  
  
  