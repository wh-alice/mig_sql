---
title: "Analysis Services Developer Documentation | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-14"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "multidimensional data [Analysis Services], developer's guide"
  - "developer's guide [Analysis Services - multidimensional data]"
ms.assetid: 0a6eda76-1c5e-487e-9c8b-1feb09f1a34c
caps.latest.revision: 22
ms.author: "owend"
manager: "erikre"
---
# Analysis Services Developer Documentation
  In Analysis Services, almost every object and workload is programmable, and often there is more than one approach to choose from.  Options include writing managed code, script, or using open standards like XMLA and MSOLAP if your solution requirements preclude using the .NET framework.  
  
## What you can accomplish in code  
 Typical programming scenarios include server and database deployment, administration, model and database creation, and data access from your custom applications and reports that consume Analysis Services data. Common to all these scenarios is a fixed architecture and object definition hierarchy, with well-understood operations that span data definition, processing, and query workloads.  
  
 Although objects and workloads are programmable, they are not extensible. Specifically, you cannot create custom data cartridges that retrieve data from unsupported data sources, customize or replace formula or storage engine behaviors, nor can you create new types of object metadata on a server, database, or model.  
  
 To further elaborate on the last point about creating new object types: while you cannot create a new type of object, you can create calculated objects built from expressions or code at run time. Not everything in your model needs to be predefined and mapped to an existing data structure. Additionally, you can extend the schema via Annotations in AMO to pass object-specific information to your client application.  
  
## Choose a platform or approach to development  
Analysis Services provides many ways to customize a solution through code, but most developers use the managed APIs or script.  
 
 + Managed APIs include [AMO and TOM](../Topic/Analysis%20Services%20Management%20Objects%20\(AMO\).md) for data definition and administrative tasks, and [ADOMD.NET](../Topic/ADOMD.NET%20Reference%20for%20Analysis%20Services.md) for query support from client code. In SQL Server 2016, AMO is updated to use the new Tabular metadata for models created or upgraded to compatibility level 1200.  
  
 + Script can often achieve the same results as a program executable, with possibly less work.  
   + You can write PowerShell script using Analysis Services PowerShell components that call AMO types directly. Within PowerShell, you can also create and execute ASSL/XMLA or TMSL (in JSON) script.  
   + ASSL and TMSL are script languages that provide  objects used in discover and execute operations. Which type of script you use depends on the underlying server, database, or model. 
   + Tabular models or databases at compatibility level 1200 use the Tabular Model Scripting Language (TMSL), which is in JSON. 
   + Multidimensional models and Tabular models at compatibility levels 1050-1103 use Analysis Services Scripting Language (ASSL), which is the Analysis Services extension of the XMLA open standard.
   + You can generate ASSL or TMSL script in Management Studio. You can also use **View Code** in SQL Server Data Tools to view the model definition in ASSL or TMSL. See [Script Administrative Tasks in Analysis Services](../analysis-services/instances/script-administrative-tasks-in-analysis-services.md) for more information.  
  
+ Although it is possible to build a solution based on the open standards of XMLA and MDX, it's quite rare to do so. There is no documentation other than XMLA and MDX reference to help you, and most community and forum support draws from experiences with .NET or native (MSOLAP) technologies.  
  
## Programming in Analysis Services  
 [Data Mining Programming](../analysis-services/data-mining-programming.md)  
 Describes the approaches building solutions that include data mining objects.  
  
 [Multidimensional Model Programming](http://msdn.microsoft.com/library/871a6d98-85bf-4200-8343-137543029512)  
 Describes the development tasks and approaches for integrating multidimensional model objects in a custom solution.  
  
 [Tabular Model Programming for Compatibility Level 1200](../analysis-services/tabular-model-programming-compatibility-level-1200/tabular-model-programming-for-compatibility-level-1200.md)  
 **New in SQL Server 2016**.  Summarizes the interfaces and script languages used for working with Tabular 1200 models programmatically.  
  
 [Tabular Model Programming for Compatibility Levels 1050 through 1103](../analysis-services/tabular-model-programming-compatibility-levels-1050-1103/tabular-model-programming-for-compatibility-levels-1050-through-1103.md)  
 This documentation is intended for developers who support tabular models at earlier compatibility levels. It describes the CSDL extensions that define a tabular model in XML syntax. It also includes information about  tabular object model definitions and syntax.  
  
 [Analysis Services Management Objects (AMO)](../Topic/Analysis%20Services%20Management%20Objects%20\(AMO\).md)  
 Developer reference documentation for the managed provider, Analysis Services Management Objects (AMO), for data definition and administration, including processing.  
  
 [ADOMD.NET](../Topic/ADOMD.NET%20Reference%20for%20Analysis%20Services.md)  
 Developer reference documentation for the managed provider, ADOMD.NET, used for programmatic data access and query workloads.  
  
 [Analysis Services Schema Rowsets](../analysis-services/schema-rowsets/analysis-services-schema-rowsets.md)  
 Describes the schema rowsets that provide information about server state, server operations, and database objects.  
  
 [XML for Analysis  &#40;XMLA&#41; Reference](../analysis-services/xmla/xml-for-analysis-xmla-reference.md)  
 Describes XMLA concepts that can help you understand how XMLA contributes to your custom solution. It also describes the level of compliance with the XMLA 1.1 specification.  
  
 [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md)  
 Describes the ASSL extensions to XMLA. ASSL provides a data definition and manipulation language for Analysis Services multidimensional models that supplements the XMLA specification.  
  
 [Tabular Model Scripting Language &#40;TMSL&#41; Reference](../analysis-services/tabular-model-scripting-language-tmsl-reference.md)  
 TMSL is a JSON representation of Tabular models at compatibility level 1200 or later. Object definitions are based on tabular metadata constructs like table, column, and relationship rather than multidimensional metadata that might be unfamiliar if you are new to Analysis Services data modeling in Tabular mode.  
  
 [Analysis Services PowerShell Reference](../analysis-services/powershell/analysis-services-powershell-reference.md)  
 Documents the cmdlets used for administrative functions, plus the general-purpose **Invoke-ASCmd** cmdlet that accepts any script or query as input.  
  
## See Also  
 [Technical Reference &#40;SSAS&#41;](../analysis-services/powershell/technical-reference-ssas.md)   
 [Query and Expression Language Reference &#40;Analysis Services&#41;](http://msdn.microsoft.com/library/9597533d-35f4-4742-9d8c-7af392163527)  
  
  