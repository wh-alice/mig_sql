---
title: "ProtocolName Property (ClientNetworkProtocolProperty Class) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "ProtocolName Property (ClientNetworkProtocolProperty Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "ProtocolName property"
ms.assetid: 77c53201-4fab-481e-9b3b-57d0b8b83113
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# ProtocolName Property (ClientNetworkProtocolProperty Class)
  Gets the name of the protocol that owns the current property referenced by the [PropertyIdx Property (ClientNetworkProtocolProperty Class)](../../../relational-databases/wmi-provider-configuration-classes/clientnetworkprotocolproperty-class/propertyidx-property-clientnetworkprotocolproperty-class.md) value.  
  
## Syntax  
  
```  
  
object.ProtocolName [= value]  
```  
  
## Parts  
 *object*  
 A [ClientNetworkProtocolProperty Class](../../../relational-databases/wmi-provider-configuration-classes/clientnetworkprotocolproperty-class/clientnetworkprotocolproperty-class.md) object that represents an attribute of the network protocol used by the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client.  
  
## Property Value/Return Value  
 A string value that specifies the name of the protocol that owns the property.  
  
## Remarks  
  
## See Also  
 [Configure Client Protocols](../../../database-engine/configure/windows/configure-client-protocols.md)  
  
  