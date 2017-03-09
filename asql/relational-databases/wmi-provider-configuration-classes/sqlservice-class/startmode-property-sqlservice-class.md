---
title: "StartMode Property (SqlService Class) | Microsoft Docs"
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
  - "StartMode Property (SqlService Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "StartMode property"
ms.assetid: c0c2c7f8-d4ae-44f2-ad8e-aecfcb7c2878
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# StartMode Property (SqlService Class)
  Gets the start mode of the service.  
  
## Syntax  
  
```  
  
object.StartMode [= value]  
```  
  
## Parts  
 *object*  
 A [SqlService Class](../../../relational-databases/wmi-provider-configuration-classes/sqlservice-class/sqlservice-class.md) object that represents the service.  
  
## Property Value/Return Value  
 A uint32 value that specifies the mode of the service.  
  
 Values can be one of the following.  
  
 Boot  
 Value = 0. Service started by the operating system loader. This option is valid only for driver services.  
  
 System  
 Value = 1. Service started by the **IoInitSystem** method. This option is valid only for driver services.  
  
 Automatic  
 Value = 2. Service to be started automatically by the service control manager during system startup.  
  
 Manual  
 Value = 3. Service to be started by the Computer Manager when a process calls the **StartService** method.  
  
 Disabled  
 Value = 4. Service cannot be started.  
  
## Remarks  
  
## See Also  
 [Starting and Stopping Services](http://technet.microsoft.com/library/ms174886\(v=sql.105\).aspx)  
  
  