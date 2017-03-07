---
title: "Understanding the WMI Provider for Configuration Management | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "WMI Provider for Configuration Management, operations supported"
ms.assetid: 92323972-7943-4208-bbf4-050774fb6027
caps.latest.revision: 21
ms.author: "jhubbard"
manager: "jhubbard"
---
# Understanding the WMI Provider for Configuration Management
  [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provides the WMI Provider for Configuration Management. This lets you use Windows Management Instrumentation (WMI) to manage [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] client and server network settings, and server aliases. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services, network settings, and aliases are represented by WMI objects in the root\Microsoft\SqlServer\ComputerManagement*nn* namespace of the computer. After a connection is established with the WMI provider on the specified computer, the services, network settings, and aliases can be queried using WQL or a scripting language.  
  
 The WMI Provider is an instance provider. It supplies instances of the [WMI Classes](../../relational-databases/wmi-provider-configuration-classes/wmi-provider-for-configuration-management-classes.md) and supports the following asynchronous operations.  
  
 Instance retrieval  
 Retrieval of a particular class type instance.  
  
 Enumeration  
 Enumeration of all instances of a class type.  
  
 Modification  
 Modification of a particular instance of a class type.  
  
 Classes have methods that allow the modification of their properties.  
  
 Deletion  
 Removing a particular instance of a class type.  
  
 Query processing  
 Enumeration of instances of a class type based on a filter.  
  
 For examples of management application using the WMI Provider for Configuration Management, see [Using WQL and Scripting Languages with the WMI Provider for Configuration Management](../../relational-databases/wmi-provider-configuration/c1e64905-3c2b-4974-88f4-abf17cf7e289.md).  
  
 For more information about programming management applications using the WMI Provider, see the WMI documentation in the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] .NET Framework SDK.  
  
## See Also  
 [Working with the WMI Provider for Configuration Management](../../relational-databases/wmi-provider-configuration/working-with-the-wmi-provider-for-configuration-management.md)   
 [Using WQL and Scripting Languages with the WMI Provider for Configuration Management](../../relational-databases/wmi-provider-configuration/c1e64905-3c2b-4974-88f4-abf17cf7e289.md)  
  
  