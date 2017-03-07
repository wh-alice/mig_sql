---
title: "Analysis Server Properties Dialog Box (Analysis Services) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.ASVS.SSMSIMBI.SERVERPROPERTIES.F1"
  - "sql13.ASVS.SQLSERVERSTUDIO.SERVERPROPERTIES.F1"
helpviewer_keywords: 
  - "Analysis Server Properties dialog box"
ms.assetid: b01ec658-c191-49c9-a6cb-549b21a368ab
caps.latest.revision: 21
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Analysis Server Properties Dialog Box (Analysis Services)
  Use the **Analysis Server Properties** dialog box in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to set the general, language/collation, and security settings for an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance. You can display the **Analysis Server Properties** dialog box by right-clicking an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance in **Object Explorer** and selecting **Properties** from the context menu. The **Analysis Server Properties** dialog box contains the following properties.  
  
## Information Properties  
 Use this page to view server mode, version, and compatibility level. Each instance is installed in either Tabular or Multidimensional server mode, with the ability to load tabular or multidimensional models. If you need to support both modes, you must install two instances.  
  
 **Supported Compatibility Level** is equivalent to the **DefaultCompatibilityLevel** property in AMO. It is read-only, based on the server deployment mode specified during installation. The server checks this property when performing operations that vary by server mode or version, such as restoring a backup of a tabular database onto a tabular server instance. Do not confuse it with the database compatibility mode of tabular or multidimensional models, which have a similar names and values. Valid values for this server property include:  
  
-   **1100** is the default compatibility level for a deployment mode of 0, for multidimensional and data mining mode.  
  
-   **1103** is the default compatibility level for deployment modes 1 or 2, for installations supporting Tabular mode or [!INCLUDE[ssGeminiShort](../a9notintoc/includes/ssgeminishort-md.md)].  
  
 The server returns this value when a client supporting the namespace requests DISCOVER_XML_METADATA. See [DISCOVER_XML_METADATA Rowset](../analysis-services/schema-rowsets/xml/discover-xml-metadata-rowset.md) for more details.  
  
## General Properties  
 Use this page to set the basic and advanced general properties, such as folder locations and network settings, for an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance.  
  
 The server properties page shows only those properties an administrator is more likely to change, such as memory and thread pool properties used to tune the server for certain configurations. The following list provides links to the main property groups:  
  
-   [General Properties](../analysis-services/server-properties/general-properties.md)  
  
-   [Data Mining Properties](../analysis-services/server-properties/data-mining-properties.md)  
  
-   [Feature Properties](../analysis-services/server-properties/feature-properties.md)  
  
-   [Filestore Properties](../analysis-services/server-properties/filestore-properties.md)  
  
-   [Lock Manager Properties](../analysis-services/server-properties/lock-manager-properties.md)  
  
-   [Log Properties](../analysis-services/server-properties/log-properties.md)  
  
-   [Memory Properties](../analysis-services/server-properties/memory-properties.md)  
  
-   [Network Properties](../analysis-services/server-properties/network-properties.md)  
  
-   [OLAP Properties](../analysis-services/server-properties/olap-properties.md)  
  
-   [Security Properties](../analysis-services/server-properties/security-properties.md)  
  
-   [Thread Pool Properties](../analysis-services/server-properties/thread-pool-properties.md)  
  
## Language Collation Properties  
 Use this page to set the default language and collation options for an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)]. The following list contains short descriptions of each option. See [Languages and Collations &#40;Analysis Services&#41;](../analysis-services/languages-and-collations-analysis-services.md) for more detailed descriptions.  
  
-   **Binary** is used to sort and compare data based on the bit patterns defined for each character. Binary sort order is case-sensitive, that is, lowercase precedes uppercase, and accent-sensitive. This is the fastest sorting order.  
  
     If this option is not selected, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] follows sorting and comparison rules as defined in dictionaries for the associated language or alphabet.  
  
    > [!NOTE]  
    >  If this option is selected, the **Case-Sensitive**, **Accent-Sensitive**, **Kana-Sensitive**, and **Width-Sensitive** options are disabled.  
  
-   **Binary 2** is used to sort and compare Unicode data based on the bit patterns defined for each character. Binary sort order is case-sensitive, that is, lowercase precedes uppercase, and accent-sensitive. This is the fastest sorting order.  
  
-   **Case-Sensitive** is used to sort and compare data based on the dictionary rules provided for the associated language or alphabet, and to distinguish between uppercase and lowercase letters.  
  
     If this option is not selected, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] considers the uppercase and lowercase versions of letters to be equal. [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] does not define whether lowercase letters sort lower or higher in relation to uppercase letters when **Case-sensitive** is not selected.  
  
-   **Accent-Sensitive** is used to sort and compare data based on the dictionary rules provided for the associated language or alphabet, and to distinguish between accented and unaccented characters. For example, 'a' is not equal to 'á'.  
  
     If this option is not selected, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] considers the accented and unaccented versions of letters to be equal.  
  
-   **Kana-Sensitive** is used to and compare data based on the dictionary rules provided for the associated language or alphabet, and to distinguish between the two types of Japanese kana characters: Hiragana and Katakana.  
  
     If this option is not selected, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] considers Hiragana and Katakana characters to be equal.  
  
-   **Width-Sensitive** is used to sort and compare data based on the dictionary rules provided for the associated language or alphabet, and to distinguish between a single-byte character (half-width) and the same character when represented as a double-byte character (full-width).  
  
     If this option is not selected, [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] considers the single-byte and double-byte representation of the same character to be equal.  
  
## Security Properties  
 Use this page to specify the Windows user and group accounts belonging to the server administrator role for an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance. Membership in this role conveys permission to perform server-wide tasks, such as creating or processing a database, modifying server properties, adding or removing other members of this role, or launching a trace. See [Grant server admin rights to an  Analysis Services instance](../analysis-services/instances/grant-server-admin-rights-to-an-analysis-services-instance.md) for details.  
  
## See Also  
 [Determine the Server Mode of an Analysis Services Instance](../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md)   
 [Server Properties in Analysis Services](../analysis-services/server-properties/server-properties-in-analysis-services.md)   
 [Authentication methodologies supported by Analysis Services](../analysis-services/instances/authentication-methodologies-supported-by-analysis-services.md)   
 [Roles and Permissions &#40;Analysis Services&#41;](../analysis-services/multidimensional-models/roles-and-permissions-analysis-services.md)   
 [Languages and Collations &#40;Analysis Services&#41;](../analysis-services/languages-and-collations-analysis-services.md)  
  
  