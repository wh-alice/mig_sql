---
title: "SetDefaults Method (ServerSettings Class) | Microsoft Docs"
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
  - "SetDefaults Method (ServerSettings Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "SetDefaults method"
ms.assetid: 76e4cfab-4b15-4da4-bb2f-8aac6f927f79
caps.latest.revision: 14
ms.author: "jhubbard"
manager: "jhubbard"
---
# SetDefaults Method (ServerSettings Class)
  Sets all the default values for the instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] with the option to overwrite existing data.  
  
## Syntax  
  
```  
  
object.SetDefaults(OverwriteAll)  
```  
  
## Parts  
 *object*  
 A [ServerSettings Class](../../../relational-databases/wmi-provider-configuration-classes/serversettings-class/serversettings-class.md) object that represents a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client instance.  
  
#### Parameters  
  
|Parameter|Description|  
|---------------|-----------------|  
|*OverwriteAll*|A Boolean value that specifies whether to overwrite existing values on the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]: **true** to overwrite existing data, or **false** if existing data is not to be overwritten.|  
  
## Property Value/Return Value  
 A u**int32** value, which is 0 if the service was successfully modified, 1 if the request is not supported, and any other number to indicate an error.  
  
## Remarks  
  
## See Also  
 [Configuring Server Network Protocols and Net-Libraries](http://msdn.microsoft.com/library/ms177485\(v=sql.100\).aspx)  
  
  