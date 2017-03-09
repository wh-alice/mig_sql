---
title: "Table-Valued Parameters (OLE DB) | Microsoft Docs"
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
  - "OLE DB, table-valued parameters"
  - "table-valued parameters (OLE DB)"
ms.assetid: 4298b73d-615b-4d28-9843-03b4d5fc489e
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# Table-Valued Parameters (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  This section describes support for table-valued parameters in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider. For additional overview information, see [Table-Valued Parameters &#40;SQL Server Native Client&#41;](../../relational-databases/native-client/features/table-valued-parameters-sql-server-native-client.md). For a sample, see [Use Table-Valued Parameters &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-how-to/use-table-valued-parameters-ole-db.md).  
  
## Remarks  
 Currently, you can send multirow data to the server as parameters to a procedure with parameter sets (the DBPARAMS parameter in **ICommand::Execute**). With parameter sets, every element of the set has to be sent in a separate remote procedure call (RPC) request to the server. Table-valued parameters provide similar functionality, but there is better integration with the server. This reduces the number of RPC requests and enables set-based operations on the server.  
  
 Table-value parameters are supported in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider as OLE DB **Rowset** objects. Any **Rowset** object could be provided by the consumer (that is, the client application using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider) as a placeholder for table-valued parameter parameters. Table-valued parameters are treated like other [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] parameter types. The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider provides creation, discovery, specification, binding and schema interfaces.  
  
## In This Section  
  
-   [Table-Valued Parameter Rowset Creation](../../relational-databases/native-client-ole-db-table-valued-parameters/table-valued-parameter-rowset-creation.md)  
  
-   [Table-Valued Parameter Type Discovery](../../relational-databases/native-client-ole-db-table-valued-parameters/table-valued-parameter-type-discovery.md)  
  
-   [Executing Commands Containing Table-Valued Parameters](../../relational-databases/native-client-ole-db-table-valued-parameters/executing-commands-containing-table-valued-parameters.md)  
  
-   [Inserting Data into Table-Valued Parameters](../../relational-databases/native-client-ole-db-table-valued-parameters/inserting-data-into-table-valued-parameters.md)  
  
-   [Schema Rowsets Changed for OLE DB Table-Valued Parameters](../../relational-databases/native-client-ole-db-table-valued-parameters/schema-rowsets-changed-for-ole-db-table-valued-parameters.md)  
  
-   [OLE DB Table-Valued Parameter Type Support](../../relational-databases/native-client-ole-db-table-valued-parameters/ole-db-table-valued-parameter-type-support.md)  
  
-   [OLE DB Table-Valued Parameter Type Support &#40;Methods&#41;](../../relational-databases/native-client-ole-db-table-valued-parameters/ole-db-table-valued-parameter-type-support-methods.md)  
  
-   [OLE DB Table-Valued Parameter Type Support &#40;Properties&#41;](../../relational-databases/native-client-ole-db-table-valued-parameters/ole-db-table-valued-parameter-type-support-properties.md)  
  
## See Also  
 [SQL Server Native Client &#40;OLE DB&#41;](../../relational-databases/native-client/ole-db/sql-server-native-client-ole-db.md)   
 [Use Table-Valued Parameters &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-how-to/use-table-valued-parameters-ole-db.md)  
  
  