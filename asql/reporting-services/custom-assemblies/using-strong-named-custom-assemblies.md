---
title: "Using Strong-Named Custom Assemblies | Microsoft Docs"
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
  - "AllowPartiallyTrustedCallersAttribute attribute"
  - "strong-named custom assemblies [Reporting Services]"
  - "strong names [Reporting Services]"
  - "assemblies [Reporting Services], strong names"
  - "custom assemblies [Reporting Services], strong-named"
ms.assetid: ca9f19d7-6e86-46f2-b9ad-9bf807eaa52e
caps.latest.revision: 35
ms.author: "carlasab"
manager: "erikre"
---
# Using Strong-Named Custom Assemblies
  A strong name identifies an assembly and includes the assembly's text name, four-part version number, culture information (if provided), a public key, and a digital signature stored in the assembly's manifest. A strong name uniquely identifies an assembly to the common language runtime (CLR) and ensures binary integrity.  
  
## Using AllowPartiallyTrustedCallersAttribute  
 To use strong-named assemblies with reports, you must allow your strong-named assembly to be called by partially trusted code using the assembly's **AllowPartiallyTrustedCallers** attribute. You can use **AllowPartiallyTrustedCallersAttribute** to allow strong-named assemblies to be called by Report Designer or the report server in report expressions. To allow partially trusted code to call strong-named assemblies, add the following assembly-level attribute to your assembly attribute file.  
  
```vb#  
<assembly:AllowPartiallyTrustedCallers>  
```  
  
```c#  
[assembly:AllowPartiallyTrustedCallers]  
```  
  
 **AllowPartiallyTrustedCallersAttribute** is effective only when applied by a strong-named assembly at the assembly level. For more information about applying attributes at the assembly level, see "Applying Attributes" in the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK documentation.  
  
> [!CAUTION]  
>  When **AllowPartiallyTrustedCallersAttribute** is present, the default **FullTrustLinkDemand** security checks are prevented, making the assembly callable from any other partially trusted assembly. All security checks, including class-level or method-level declarative security attributes, must be explicitly stated.  
  
## See Also  
 [Using Custom Assemblies with Reports](../../reporting-services/custom-assemblies/using-custom-assemblies-with-reports.md)  
  
  