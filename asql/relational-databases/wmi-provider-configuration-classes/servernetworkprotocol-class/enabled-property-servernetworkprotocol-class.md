---
title: "Enabled Property (ServerNetworkProtocol Class) | Microsoft Docs"
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
  - "Enabled Property (ServerNetworkProtocol Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "Enabled property"
ms.assetid: a514822a-91f1-4aca-9175-2b96cff29700
caps.latest.revision: 32
ms.author: "jhubbard"
manager: "jhubbard"
---
# Enabled Property (ServerNetworkProtocol Class)
  Gets the Boolean property that specifies whether the server network protocol is enabled.  
  
## Syntax  
  
```  
  
object.Enabled [= value]  
```  
  
## Parts  
 *object*  
 A [ServerNetworkProtocol Class](../../../relational-databases/wmi-provider-configuration-classes/servernetworkprotocol-class/servernetworkprotocol-class.md) object that represents the network protocol used by the instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
## Property Value/Return Value  
 A Boolean value that specifies whether the server network protocol is enabled: **true** if the server network protocol is enabled, or **false** if the server network protocol is disabled.  
  
## Remarks  
  
## See Also  
 [Configuring Server Network Protocols and Net-Libraries](http://msdn.microsoft.com/library/ms177485\(v=sql.100\).aspx)  
  
  