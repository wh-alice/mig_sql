---
title: "Script Transformation Editor (Script Page) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.scriptcomponent.script.f1"
helpviewer_keywords: 
  - "Script Transformation Editor"
ms.assetid: 4c6d1901-ef21-4aa7-9d0a-6bbeb7fadf1c
caps.latest.revision: 38
ms.author: "douglasl"
manager: "jhubbard"
---
# Script Transformation Editor (Script Page)
  Use the **Script** tab of the **Script Transformation Editor** dialog box to specify a script and related properties.  
  
 To learn more about the Script component, see [Script Component](../../../integration-services/data-flow/transformations/script-component.md) and [Configuring the Script Component in the Script Component Editor](../../../integration-services/extending-packages-scripting/data-flow-script-component/configuring-the-script-component-in-the-script-component-editor.md). To learn about programming the Script component, see [Extending the Data Flow with the Script Component](../../../integration-services/extending-packages-scripting/data-flow-script-component/extending-the-data-flow-with-the-script-component.md).  
  
## Options  
 **Properties**  
 View and modify the properties of the Script transformation. Many of the properties displayed are read-only. You can modify the following properties:  
  
|Value|Description|  
|-----------|-----------------|  
|**Description**|Describe the script transformation in terms of its purpose.|  
|**LocaleID**|Specify the locale to provide region-specific information for ordering, and for date and time conversion.|  
|**Name**|Type a descriptive name for the component.|  
|**ValidateExternalMetadata**|Indicate whether the Script transformation validates column metadata against external data sources at design time. A value of **false** delays validation until the time of execution.|  
|**ReadOnlyVariables**|Type a comma-separated list of variables for read-only access by the Script transformation.<br /><br /> Note: Variable names are case-sensitive.|  
|**ReadWriteVariables**|Type a comma-separated list of variables for read/write access by the Script transformation.<br /><br /> Note: Variable names are case-sensitive.|  
|**ScriptLanguage**|Select the script language to be used by the Script component.<br /><br /> To set the default script language for Script components and Script tasks, use the **Scripting language** option on the **General** page of the **Options** dialog box.|  
|**UserComponentTypeName**|Specifies the <xref:Microsoft.SqlServer.Dts.Pipeline.ScriptComponentHost> class and the **Microsoft.SqlServer.TxScript** assembly that support the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] infrastructure.|  
  
 **Edit Script**  
 Use [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[vsprvs](../../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] Tools for Applications (VSTA) to create or modify a script.  
  
## See Also  
 [Integration Services Error and Message Reference](../../../integration-services/integration-services-error-and-message-reference.md)   
 [Select Script Component Type](../../../integration-services/data-flow/transformations/select-script-component-type.md)   
 [Script Transformation Editor &#40;Input Columns Page&#41;](../../../integration-services/data-flow/transformations/script-transformation-editor-input-columns-page.md)   
 [Script Transformation Editor &#40;Inputs and Outputs Page&#41;](../../../integration-services/data-flow/transformations/script-transformation-editor-inputs-and-outputs-page.md)   
 [Script Transformation Editor &#40;Connection Managers Page&#41;](../../../integration-services/data-flow/transformations/script-transformation-editor-connection-managers-page.md)   
 [Additional Script Component Examples](../../../integration-services/extending-packages-scripting-data-flow-script-component-examples/additional-script-component-examples.md)  
  
  