---
title: "ProtocolDLL Property (ClientNetworkProtocol Class) | Microsoft Docs"
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
  - "ProtocolDLL Property (ClientNetworkProtocol Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "ProtocolDLL property"
ms.assetid: fe8650d5-7b9d-46f8-bf74-baf1d9d2a06a
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# ProtocolDLL Property (ClientNetworkProtocol Class)
  Gets the name of the .dll file required by the network protocol specified by the [Configure Client Protocols](http://technet.microsoft.com/library/ms181035.aspx).  
  
## Syntax  
  
```  
  
object.ProtocolDLL [= value]  
```  
  
## Parts  
 *object*  
 A [ClientNetworkProtocol Class](../../../relational-databases/wmi-provider-configuration-classes/clientnetworkprotocol-class/clientnetworkprotocol-class.md) object that represents the network protocol used by the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client.  
  
## Property Value/Return Value  
 A string value that specifies the protocol .dll file required by the client network protocol.  
  
## Remarks  
  
## See Also  
 [Configuring Client Network Protocols and Net-Libraries](http://technet.microsoft.com/library/ms181035.aspx)  
  
  