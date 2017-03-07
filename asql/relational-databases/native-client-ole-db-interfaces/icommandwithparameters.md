---
title: "ICommandWithParameters | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 66644c70-def7-46d8-8c47-b883292a0288
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# ICommandWithParameters
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  Improvements in the database engine beginning with [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] allow ICommandWithParameters::GetParameterInfo to obtain more accurate descriptions of the expected results. These more accurate results may differ from the values returned by CommandWithParameters::GetParameterInfo in previous versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. For more information, see [Metadata Discovery](../../relational-databases/native-client/features/metadata-discovery.md).  
  
 Also beginning in [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], when calling ICommandWithParameters::SetParameterInfo, the value passed to the *pwszName* parameter must be a valid identifier. For more information, see [Database Identifiers](../../relational-databases/databases/database-identifiers.md).  
  
## See Also  
 [Interfaces &#40;OLE DB&#41;](../../a9retired/interfaces-ole-db.md)  
  
  