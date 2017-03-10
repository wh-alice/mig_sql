---
title: "CLR Integration Security | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "security [CLR integration]"
  - "authorization [CLR integration]"
  - "common language runtime [SQL Server], security"
  - "database objects [CLR integration], security"
ms.assetid: 05d7a471-c5d5-4730-b903-e4edc8157bb4
caps.latest.revision: 55
ms.author: "jhubbard"
manager: "jhubbard"
---
# CLR Integration Security
  The security model of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] integration with the [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] common language runtime (CLR) manages and secures access between different types of CLR and non-CLR objects running within [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. These objects may be called by a [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statement or another CLR object running in the server. The calls between objects are referred to as links. The types of security checks performed on these objects depend on the types of links involved.  
  
 The CLR integration security model has the following goals:  
  
-   By default, running managed user code on [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] should not compromise the integrity and stability of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Performing operations that potentially compromise the robustness of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] should be protected by appropriate high-level permissions.  
  
-   Managed user code should not gain unauthorized access to user data or other user code in the database. User-defined code should run under the security context of the user-session that invoked it, and with the correct privileges for that security context.  
  
-   There should be controls for restricting user code from accessing any resources outside the server, using it strictly for local data access and computation.  
  
-   User-defined code should not be able to gain unauthorized access to system resources by virtue of running in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process.  
  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] now integrates the user-based security model of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] with the code access-based security model of the CLR. Some of the advantages of this combined approach to security are discussed in this section.  
  
 The following table lists the topics in this section.  
  
 [CLR Integration Code Access Security](../../../relational-databases/clr-integration/security/clr-integration-code-access-security.md)  
 Discusses the code access security (CAS) model for managed code.  
  
 [Host Protection Attributes and CLR Integration Programming](../../../relational-databases/clr-integration-security-host-protection-attributes/host-protection-attributes-and-clr-integration-programming.md)  
 Provides information about the host protection attribute (HPA) values that are disallowed in SAFE and EXTERNAL_ACCESS assemblies.  
  
 [Links in CLR Integration Security](http://msdn.microsoft.com/en-US/library/ms345104(SQL.130).aspx)  
 Describes how pieces of user-code can call each other in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [Impersonation and CLR Integration Security](http://msdn.microsoft.com/en-US/library/ms345105(SQL.130).aspx)  
 Discusses how managed code accesses external resources using impersonation.  
  
 [Allowing Partially Trusted Callers](http://msdn.microsoft.com/en-US/library/ms345097(SQL.130).aspx)  
 Discusses issues that arise when a managed method invokes a method in a class contained in another assembly.  
  
 [Application Domains and CLR Integration Security](http://msdn.microsoft.com/en-US/library/ms345100(SQL.130).aspx)  
 Describes how assemblies are loaded into application domains.  
  
## See Also  
 [Managing CLR Integration Assemblies](../../../relational-databases/clr-integration/assemblies/managing-clr-integration-assemblies.md)  
  
  