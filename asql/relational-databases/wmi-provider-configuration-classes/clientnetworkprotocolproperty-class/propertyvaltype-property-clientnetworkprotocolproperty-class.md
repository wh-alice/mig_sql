---
title: "PropertyValType Property (ClientNetworkProtocolProperty Class) | Microsoft Docs"
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
  - "PropertyValType Property (ClientNetworkProtocolProperty Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "PropertyValType property"
ms.assetid: 624b9bdd-ed93-4140-bd4e-00d714a2558c
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# PropertyValType Property (ClientNetworkProtocolProperty Class)
  Gets the data type of the value stored in the property referenced by the [PropertyIdx Property (ClientNetworkProtocolProperty Class)](../../../relational-databases/wmi-provider-configuration-classes/clientnetworkprotocolproperty-class/propertyidx-property-clientnetworkprotocolproperty-class.md) value.  
  
## Syntax  
  
```  
  
object.PropertyValType [= value]  
```  
  
## Parts  
 *object*  
 A [ClientNetworkProtocolProperty Class](../../../relational-databases/wmi-provider-configuration-classes/clientnetworkprotocolproperty-class/clientnetworkprotocolproperty-class.md) object that represents an attribute of the network protocol used by the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] client.  
  
## Property Value/Return Value  
 A **uint32** value that specifies the data type of the property value.  
  
## Remarks  
  
## See Also  
 [Configure Client Protocols](../../../database-engine/configure/windows/configure-client-protocols.md)  
  
  