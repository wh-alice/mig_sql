---
title: "GetNextOrderValue Method (ClientNetworkProtocol Class) | Microsoft Docs"
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
  - "GetNextOrderValue Method (ClientNetworkProtocol Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "GetNextOrderValue method"
ms.assetid: d741dc5c-c225-43d9-a730-7ad664ac525f
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# GetNextOrderValue Method (ClientNetworkProtocol Class)
  Selects the protocol that is in the next position in the list of protocols.  
  
## Syntax  
  
```  
  
object.GetNextOrderValue()  
```  
  
## Parts  
 *object*  
 A [ClientNetworkProtocol Class](../../../relational-databases/wmi-provider-configuration-classes/clientnetworkprotocol-class/clientnetworkprotocol-class.md) object that represents the network protocol used by the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client.  
  
## Property Value/Return Value  
 A **uint32** value, which is 0 if the service was successfully modified, 1 if the request is not supported, and any other number to indicate an error.  
  
## Remarks  
  
## See Also  
 [Configure Client Protocols](http://technet.microsoft.com/library/ms181035.aspx)   
 [Configuring Client Network Protocols and Net-Libraries](http://technet.microsoft.com/library/ms181035.aspx)  
  
  