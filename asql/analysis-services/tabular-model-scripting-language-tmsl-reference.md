---
title: "Tabular Model Scripting Language (TMSL) Reference | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: c700d7f8-7e01-4052-a9ad-8200dd4009f2
caps.latest.revision: 20
ms.author: "owend"
manager: "erikre"
---
# Tabular Model Scripting Language (TMSL) Reference
  Tabular Model Scripting Language (TMSL) is the command and object model definition syntax for tabular databases at compatibility level 1200, created for the SQL Server 2016 version of Analysis Services. TMSL communicates to Analysis Services  through the XMLA protocol, where the [XMLA.Execute](../Topic/Execute%20Method%20\(XMLA\).md) method accepts both JSON-based **statement** scripts in TMSL as well as the traditional XML-based scripts in [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md).  
  
 Key elements of TMSL include the following:  
  
-   Tabular metadata based on Tabular model semantics. A Tabular model is composed of tables, columns, and relationships. Equivalent object definitions in TMSL are now, not surprisingly, tables, columns, relationships, and so forth.  
  
     A new metadata engine supports these definitions. It's available only for models at compatibility level 1200.  
  
-   Object definitions are  structured as JSON instead of XML.  
  
 With the exception of how the payload is formatted (in either JSON or XML), both TMSL and ASSL are functionally equivalent in how they provide commands and metadata  to XMLA methods used for server communication and data transfer.  
  
## How to use TMSL  
 The easiest way to  explore TMSL scripting is using the CREATE, ALTER, DELETE, or Process commands in SQL Server Management Studio on a model you already know. Assuming you're using an existing model, remember to upgrade it to compatibility level 1200 first. See [Upgrade Analysis Services](../database-engine/install/windows/upgrade-analysis-services.md) for help with this step.  
  
1.  Find the command you want to use: [Commands in Tabular Model Scripting Language &#40;TMSL&#41;](../Topic/Commands%20in%20Tabular%20Model%20Scripting%20Language%20\(TMSL\).md)  
  
2.  Check the object definition reference for objects used in the command: [Object Definitions in Tabular Model Scripting Language &#40;TMSL&#41;](../Topic/Object%20Definitions%20in%20Tabular%20Model%20Scripting%20Language%20\(TMSL\).md)  
  
3.  Choose a method for submitting TMSL script:  
  
    -   XMLA window in Management Studio  
  
    -   **invoke-ascmd** via AMO PowerShell ([Invoke-ASCmd cmdlet](../analysis-services/powershell/invoke-ascmd-cmdlet.md))  
  
    -   [Analysis Services Execute DDL Task](../integration-services/control-flow/analysis-services-execute-ddl-task.md) in SSIS.  
  
## Model definition schema  
 The following screenshot shows an abbreviated version of the schema, collapsed to show the major objects.  
  
 ![SSAS_TabularMetadata](../analysis-services/media/ssas-tabularmetadata.JPG "SSAS_TabularMetadata")  
  
## Scripting languages in Analysis Services  
 Analysis Services has several scripting languages: ASSL and TMSL. Only Tabular models created at the 1200 compatibility level are described in TMS in JSON format.  
  
 [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md) was the first scripting language, and is still the only scripting language for Multidimensional models and Tabular models at lower compatibility levels (1100 or 1103). In ASSL, tabular models at 110x are described in multidimensional terms, such as **cube** (for a model) and **measuregroup** (for a table).  
  
> [!NOTE]  
>  Using [SQL Server Data Tools (SSDT)](https://msdn.microsoft.com/en-us/library/mt204009.aspx), you can upgrade an earlier version Tabular model to use TMSL by switching up its **CompatibilityLevel** to 1200. Remember that upgrade is irreversible. Prior to converting, back up your model in case you need the original version later.  
  
 The following table is the scripting language matrix for Analysis Services data models across different versions, at specific compatibility levels.  
  
|||||  
|-|-|-|-|  
|**Version and model type**|**Multidimensional**|**Tabular 110x**|**Tabular 1200**|  
|SQL Server 2012|ASSL|ASSL<sup>1</sup>|Not Applicable|  
|SQL Server 2014|ASSL|ASSL<sup>1</sup>|Not Applicable|  
|SQL Server 2016|ASSL|ASSL<sup>1</sup>|TMSL|  
  
 <sup>1</sup> ASSL is not ideal for Tabular models, but designing and implementing a more semantically correct scripting language required deep changes across the spectrum of the Analysis Services component architecture. Changes of this magnitude can only be made in major version releases, and only when all components impacted by this change  can be updated in tandem.  
  
## See Also  
 [Compatibility Level for Tabular models in Analysis Services](../analysis-services/tabular-models/compatibility-level-for-tabular-models-in-analysis-services.md)   
 [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md)   
 [Determine the Server Mode of an Analysis Services Instance](../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md)  
  
  