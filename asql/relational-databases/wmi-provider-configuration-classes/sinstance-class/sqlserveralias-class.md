---
title: "SqlServerAlias Class | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "SqlServerAlias Class"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "SqlServerAlias class"
ms.assetid: 475662b9-6985-45bf-b1e9-b0f26ef50443
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# SqlServerAlias Class
  The [SqlServerAlias Class](../../../relational-databases/wmi-provider-configuration-classes/sinstance-class/sqlserveralias-class.md) class represents a server connection alias.  
  
 A server connection alias is required when both the following occur:  
  
-   The client is connecting to an instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] over a network transport that is not the default network transport.  
  
-   The instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to which the client is connected listens on an alternate named pipe.  
  
 **Note:** The [SqlServerAlias Class](../../../relational-databases/wmi-provider-configuration-classes/sinstance-class/sqlserveralias-class.md) inherits the **Put** method from the Provider class. However, it does not return any results as indicated by the **Provider::Put** method. For more information, see the WMI documentation.  
  
## See Also  
 [Configure Client Protocols](http://technet.microsoft.com/library/ms181035.aspx)  
  
  