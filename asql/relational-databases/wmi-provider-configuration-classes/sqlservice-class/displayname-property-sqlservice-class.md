---
title: "DisplayName Property (SqlService Class) | Microsoft Docs"
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
  - "DisplayName Property (SqlService Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "DisplayName property"
ms.assetid: 49c408aa-6eb4-45cd-8d5c-60f065f24f5c
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# DisplayName Property (SqlService Class)
  Gets the display name of the service.  
  
## Syntax  
  
```  
  
object.DisplayName [= value]  
```  
  
## Parts  
 *object*  
 A [SqlService Class](../../../relational-databases/wmi-provider-configuration-classes/sqlservice-class/sqlservice-class.md) object that represents the service.  
  
## Property Value/Return Value  
 A string value that specifies the display name of the service.  
  
## Remarks  
 This string has a maximum length of 256 characters. The name is case-preserved in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager. However, display name comparisons are always case-insensitive.  
  
## Example  
  
```  
mysqlservice.DisplayName = "Atdisk"  
```  
  
## See Also  
 [Starting and Stopping Services](http://technet.microsoft.com/library/ms174886\(v=sql.105\).aspx)  
  
  