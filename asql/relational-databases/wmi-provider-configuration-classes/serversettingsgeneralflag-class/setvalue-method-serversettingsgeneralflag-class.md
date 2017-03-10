---
title: "SetValue Method (ServerSettingsGeneralFlag Class) | Microsoft Docs"
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
  - "SetValue Method (ServerSettingsGeneralFlag Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "SetValue method"
ms.assetid: a889feac-c0e0-4635-b506-843863d86967
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# SetValue Method (ServerSettingsGeneralFlag Class)
  Sets all the values of the referenced flag.  
  
## Syntax  
  
```  
  
object.SetValue(Value)  
```  
  
## Parts  
 *object*  
 A [ServerSettingsGeneralFlag Class](../../../relational-databases/wmi-provider-configuration-classes/serversettingsgeneralflag-class/serversettingsgeneralflag-class.md) object that represents a general flag for the server settings.  
  
#### Parameters  
  
|Parameter|Description|  
|---------------|-----------------|  
|*Value*|A Boolean value that specifies the value of the flag.|  
  
## Property Value/Return Value  
 A **uint32** value, which is 0 if the service was successfully modified, 1 if the request is not supported, and any other number to indicate an error.  
  
## Remarks  
  
## See Also  
 [Configuring Server Network Protocols and Net-Libraries](http://msdn.microsoft.com/library/ms177485\(v=sql.100\).aspx)  
  
  