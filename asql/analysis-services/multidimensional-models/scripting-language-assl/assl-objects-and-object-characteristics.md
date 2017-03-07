---
title: "ASSL Objects and Object Characteristics | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "reference exceptions [Analysis Services Scripting Language]"
  - "ASSL, objects"
  - "inheritance [Analysis Services Scripting Language]"
  - "localized names [Analysis Services Scripting Language]"
  - "objects [Analysis Services Scripting Language]"
  - "names [Analysis Services Scripting Language]"
  - "Analysis Services Scripting Language, objects"
  - "expansion [Analysis Services Scripting Language]"
ms.assetid: 6e5c28b5-c0bc-4ccd-82e5-e174bbb71386
caps.latest.revision: 28
ms.author: "owend"
manager: "erikre"
---
# ASSL Objects and Object Characteristics
  Objects in Analysis Services Scripting Language (ASSL) follow specific guidelines in regards to object groups, inheritance, naming, expansion, and processing.  
  
## Object Groups  
 All [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] objects have an XML representation. The objects are divided into two groups:  
  
 **Major objects**  
 Major objects can be independently created, altered, and deleted. Major objects include:  
  
-   Servers  
  
-   Databases  
  
-   Dimensions  
  
-   Cubes  
  
-   Measure groups  
  
-   Partitions  
  
-   Perspectives  
  
-   Mining models  
  
-   Roles  
  
-   Commands associated with a server or database  
  
-   Data sources  
  
 Major objects have the following properties to track their history and status.  
  
-   **CreatedTimestamp**  
  
-   **LastSchemaUpdate**  
  
-   **LastProcessed** (where appropriate)  
  
> [!NOTE]  
>  The classification of an object as a major object affects how an instance of [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] treats that object and how that object is handled in the object definition language. However, this classification does not guarantee that [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] management and development tools will allow the independent creation, modification, or deletion of these objects.  
  
 **Minor objects**  
 Minor objects can only be created, altered, or deleted as part of creating, altering, or deleting the parent major object. Minor objects include:  
  
-   Hierarchies and levels  
  
-   Attributes  
  
-   Measures  
  
-   Mining model columns  
  
-   Commands associated with a cube  
  
-   Aggregations  
  
## Object Expansion  
 The **ObjectExpansion** restriction can be used to control the degree of expansion of ASSL XML returned by the server. This restriction has the options listed in the following table.  
  
|Enumeration value|Allowed for \<Alter>|Description|  
|-----------------------|---------------------------|-----------------|  
|*ReferenceOnly*|no|Returns only the name, ID, and timestamp for the requested object and for all contained major objects recursively.|  
|*ObjectProperties*|yes|Expands the requested object and minor contained objects, but does not return major contained objects.|  
|*ExpandObject*|no|Same as *ObjectProperties*, but also returns the name, ID, and timestamp for contained major objects.|  
|*ExpandFull*|yes|Fully expands the requested object and all contained objects recursively.|  
  
 This ASSL reference section describes the *ExpandFull* representation. All other **ObjectExpansion** levels are derived from this level.  
  
## Object Processing  
 ASSL includes read-only elements or properties (for example, **LastProcessed**) that can be read from the [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] instance, but which are omitted when command scripts are submitted to the instance. [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] ignores modified values for read-only elements without warning or error.  
  
 [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] also ignores inappropriate or irrelevant properties without raising validation errors. For example, the X element should only be present when the Y element has a particular value. The [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] instance ignores the X element instead of validating that element against the value of the Y element.  
  
  