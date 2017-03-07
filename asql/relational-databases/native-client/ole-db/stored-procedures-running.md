---
title: "Running Stored Procedures (OLE DB) | Microsoft Docs"
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
  - "stored procedures [OLE DB], executing"
  - "OLE DB, stored procedures"
  - "SQL Server Native Client OLE DB provider, stored procedures"
ms.assetid: c77d9be9-2176-4438-8c7a-04b63ebece08
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Stored Procedures - Running
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  When executing statements, calling a stored procedure on the data source (instead of executing or preparing a statement in the client application directly) can provide:  
  
-   Higher performance.  
  
-   Reduced network overhead.  
  
-   Better consistency.  
  
-   Better accuracy.  
  
-   Added functionality.  
  
 The [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider supports three of the mechanisms that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] stored procedures use to return data:  
  
-   Every SELECT statement in the procedure generates a result set.  
  
-   The procedure can return data through output parameters.  
  
-   The procedure can have an integer return code.  
  
 The application must be able to handle all of these outputs from stored procedures.  
  
 Different OLE DB providers return output parameters and return values at different times during result processing. In case of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider, the output parameters and return codes are not supplied until after the consumer has retrieved or canceled the result sets returned by the stored procedure. The return codes and the output parameters are returned in the last TDS packet from the server.  
  
 Providers use the DBPROP_OUTPUTPARAMETERAVAILABILITY property to report when it returns output parameters and return values. This property is in the DBPROPSET_DATASOURCEINFO property set.  
  
 The [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider sets the DBPROP_OUTPUTPARAMETERAVAILABILITY property to DBPROPVAL_OA_ATROWRELEASE to indicate that return codes and output parameters are not returned until the result set is processed or released.  
  
## See Also  
 [Stored Procedures](../../../relational-databases/native-client/ole-db/stored-procedures.md)  
  
  