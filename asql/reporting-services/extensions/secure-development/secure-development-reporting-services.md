---
title: "Secure Development (Reporting Services) | Microsoft Docs"
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
  - "development security [Reporting Services]"
  - "security [Reporting Services], development"
  - "security [Reporting Services], strategies"
ms.assetid: 12161a6c-b93b-4312-9d27-0c922561eb9b
caps.latest.revision: 15
ms.author: "carlasab"
manager: "erikre"
---
# Secure Development (Reporting Services)
  The [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] provides a robust security system that can run code in tightly constrained, administrator-defined security contexts. [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] uses the [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] security system, known as code access security (or evidence-based security). Under code access security, a user may be trusted to access a resource, but if the code the user executes is not trusted, access to the resource will be denied.  
  
 Security based on code, as opposed to specific users, permits security to be expressed for custom assemblies or data, delivery, rendering, and security extensions that you develop for [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. Your extension code may be executed by any number of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] users, all of whom are unknown at development time. The custom assemblies or extensions that you develop require specific security policies in [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. These security policies are represented as types in the [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)]. For a more information about code access security, see "Code Access Security" in the [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] documentation.  
  
## In This Section  
 [Code Access Security in Reporting Services](../../../reporting-services/extensions/secure-development/code-access-security-in-reporting-services.md)  
 Introduces code access security and policy configuration for custom assemblies and extensions in [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
 [Understanding Security Policies](../../../reporting-services/extensions/secure-development/understanding-security-policies.md)  
 Describes the various assembly types in [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] and how code access security affects code permissions.  
  
 [Using Reporting Services Security Policy Files](../../../reporting-services/extensions/secure-development/using-reporting-services-security-policy-files.md)  
 Describes the different [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] components and the corresponding policy configuration files.  
  
  