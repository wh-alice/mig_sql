---
title: "Host Protection Attributes and CLR Integration Programming | Microsoft Docs"
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
  - "host protection attributes [CLR integration]"
  - "HostProtectionAttribute [CLR integration]"
  - "common language runtime [SQL Server], host protection attributes"
  - "disallowed types and members [CLR integration]"
  - "common language runtime [SQL Server], disallowed types and members"
  - "HPAs [CLR integration]"
ms.assetid: 268078df-63ca-4c03-a8e7-7108bcea9697
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# Host Protection Attributes and CLR Integration Programming
  The common language runtime (CLR) provides a mechanism to annotate managed application programming interfaces (APIs) that are part of the .NET Framework with certain attributes that may be of interest to a host of the CLR, such as [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], beginning with [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)]. Examples of such host protection attributes (HPAs) include:  
  
-   **SharedState**, which indicates whether the API exposes the ability to create or manage shared state (for example, static class fields).  
  
-   **Synchronization**, which indicates whether the API exposes the ability to perform synchronization between threads.  
  
-   **ExternalProcessMgmt**, which indicates whether the API exposes a way to control the host process.  
  
 Given these attributes, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] specifies a list of HPAs that are disallowed in the hosted environment through code access security (CAS). The CAS requirements are specified by one of three [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] permission sets: **SAFE**, **EXTERNAL_ACCESS**, or **UNSAFE**. One of these three security levels is specified when the assembly is registered on the server, using the **CREATE ASSEMBLY** statement. Code executing within the **SAFE** or **EXTERNAL_ACCESS** permission sets must avoid certain types or members that have the **System.Security.Permissions.HostProtectionAttribute** attribute applied. For more information, see [Creating an Assembly](../../relational-databases/clr-integration/assemblies/creating-an-assembly.md) and [CLR Integration Programming Model Restrictions](../../relational-databases/clr-integration/database-objects/clr-integration-programming-model-restrictions.md).  
  
 The **HostProtectionAttribute** is not a security permission as much as a way to improve reliability, in that it identifies specific code constructs, either types or methods, that the host may disallow. The use of the **HostProtectionAttribute** enforces a programming model that helps protect the stability of the host.  
  
## Host Protection Attributes  
 HPAs identify types or members that do not fit the host programming model and represent the following increasing levels of reliability threat:  
  
-   Are otherwise benign.  
  
-   Could lead to destabilization of server-managed user code.  
  
-   Could lead to destabilization of the server process itself.  
  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] disallows the use of a type or member that has a **HostProtectionAttribute** that specifies a **System.Security.Permissions.HostProtectionResource** enumeration with a value of **ExternalProcessMgmt**, **ExternalThreading**, **MayLeakOnAbort**, **SecurityInfrastructure**, **SelfAffectingProcessMgmnt**, **SelfAffectingThreading**, **SharedState**, **Synchronization**, or **UI**. This prevents the assemblies from calling members that enable sharing state, perform synchronization, might cause a resource leak on termination, or affect the integrity of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] process.  
  
### Disallowed Types and Members  
 The following topics identify types and members whose **HostProtectionResource** values are disallowed by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  The lists in these topics were generated from the supported assemblies.  For more information, see [Supported .NET Framework Libraries](../../relational-databases/clr-integration/database-objects/supported-.net-framework-libraries.md).  
  
## In This Section  
 [Disallowed Types and Members in Microsoft.VisualBasic.dll](../../relational-databases/clr-integration-security-host-protection-attributes/disallowed-types-and-members-in-microsoft.visualbasic.dll.md)  
 Lists the types and members in Microsoft.VisualBasic.dll whose HPA values are disallowed.  
  
 [Disallowed Types and Members in mscorlib.dll](../../relational-databases/clr-integration-security-host-protection-attributes/disallowed-types-and-members-in-mscorlib.dll.md)  
 Lists the types and members in mscorlib.dll whose HPA values are disallowed.  
  
 [Disallowed Types and Members in System.dll](../../relational-databases/clr-integration-security-host-protection-attributes/disallowed-types-and-members-in-system.dll.md)  
 Lists the types and members in System.dll whose HPA values are disallowed.  
  
 [Disallowed Types and Members in System.Data.dll](../../relational-databases/clr-integration-security-host-protection-attributes/disallowed-types-and-members-in-system.data.dll.md)  
 Lists the types and members in System.Data.dll whose HPA values are disallowed.  
  
 [Disallowed Types and Members in System.Core.dll](../../relational-databases/clr-integration-security-host-protection-attributes/disallowed-types-and-members-in-system.core.dll.md)  
 Lists the types and members in System.Core.dll whose HPA values are disallowed.  
  
## See Also  
 [CLR Integration Code Access Security](../../relational-databases/clr-integration/security/clr-integration-code-access-security.md)   
 [CLR Integration Programming Model Restrictions](../../relational-databases/clr-integration/database-objects/clr-integration-programming-model-restrictions.md)   
 [Creating an Assembly](../../relational-databases/clr-integration/assemblies/creating-an-assembly.md)  
  
  