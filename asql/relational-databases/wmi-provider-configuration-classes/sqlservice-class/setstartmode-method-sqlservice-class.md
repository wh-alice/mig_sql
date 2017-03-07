---
title: "SetStartMode Method (SqlService Class) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "SetStartMode Method (SqlService Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "SetStartMode method"
ms.assetid: f6f198b4-f9a4-468c-8977-76462ef06e61
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# SetStartMode Method (SqlService Class)
  Modifies the start mode of the service instance.  
  
## Syntax  
  
```  
  
object.SetStartMode(StartMode)  
```  
  
## Parts  
 *object*  
 A [SqlService Class](../../../relational-databases/wmi-provider-configuration-classes/sqlservice-class/sqlservice-class.md) object that represents the service.  
  
#### Parameters  
 *StartMode*  
 A **uint32** value that specifies the start mode of the service instance.  
  
 The valid values are as follows:  
  
 Value = 0. Boot - Device driver started by the operating system loader. This value is valid only for driver services.  
  
 Value = 1. System - Device driver started by the **IoInitSystem** method. This value is valid only for driver services.  
  
 Value = 2. Automatic - Service to be started automatically by the service control manager during system startup.  
  
 Value = 3. Manual - Service to be started by the Computer Manager when a process calls the **StartService** method.  
  
 Value = 4. Disabled - Service can no longer be started.  
  
## Property Value/Return Value  
 A **uint32** value, which is 0 if the service was successfully modified or 1 if the request is not supported. Any other number indicates an error.  
  
## Remarks  
  
## See Also  
 [Starting and Stopping Services](http://technet.microsoft.com/library/ms174886\(v=sql.105\).aspx)  
  
  