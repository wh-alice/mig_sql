---
title: "Reporting Services Extension Library | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "namespaces [Reporting Services]"
  - "Reporting Services, extending"
  - "extensions [Reporting Services], library"
  - "library [Reporting Services]"
ms.assetid: e8eff470-64d6-41c3-b98b-5ec916c121c3
caps.latest.revision: 33
ms.author: "carlasab"
manager: "erikre"
---
# Reporting Services Extension Library
  The Reporting Services Extension Library is a set of classes, interfaces, and value types that are included in [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)]. This library provides access to system functionality and is designed to be the foundation on which [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] applications can be used to extend [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] components.  
  
## Namespaces  
 The [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] extension library provides the following namespaces.  
  
 <xref:Microsoft.ReportingServices.DataProcessing>  
 Contains classes and interfaces that enable you to build components that extend the data processing capability of [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)].  
  
 <xref:Microsoft.ReportingServices.Interfaces>  
 Contains classes and interfaces that enable you to construct and send custom notifications to users through your own delivery extensions, and to build custom security extensions for [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)].  
  
 **Microsoft.ReportingServices.ReportRendering**  
 Contains classes and interfaces that enable you to extending the rendering capabilities of [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)]. Using the members of this namespace along with members of the <xref:Microsoft.ReportingServices.Interfaces> namespace, you can build your own, custom rendering extensions for [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)].  
  
## See Also  
 [Reporting Services Extensions](../../reporting-services/extensions/reporting-services-extensions.md)  
  
  