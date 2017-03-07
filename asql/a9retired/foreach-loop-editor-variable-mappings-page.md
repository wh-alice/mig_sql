---
title: "Foreach Loop Editor (Variable Mappings Page) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.foreachloopcontainer.mapping.f1"
ms.assetid: aa847b87-f391-48a5-9849-eeda2d6b00b9
caps.latest.revision: 37
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Foreach Loop Editor (Variable Mappings Page)
  Use the **Variables Mappings** page of the **Foreach Loop Editor** dialog box to map variables to the collection value. The value of the variable is updated with the collection values on each iteration of the loop.  
  
 To learn about how to use the Foreach Loop container in an Integration Services package,  see [Foreach Loop Container](../integration-services/control-flow/foreach-loop-container.md) . To learn about how to configure it, see [Configure a Foreach Loop Container](../a9retired/configure-a-foreach-loop-container.md).  
  
 The [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] tutorial, Creating a Simple ETL Package Tutorial, includes a lesson that teaches you to add and configure a Foreach Loop.  
  
## Options  
 **Variable**  
 Select an existing variable, or click \<**New variable...**> to create a new variable.  
  
> [!NOTE]  
>  After you map a variable, a new row is automatically added to the **Variable** list.  
  
 **Related Topics**: [Integration Services &#40;SSIS&#41; Variables](../integration-services/integration-services-ssis-variables.md), [Add Variable](../a9retired/add-variable.md)  
  
 **Index**  
 If using the Foreach Item enumerator, specify the index of the column in the collection value to map to the variable. For other enumerator types, the index is read-only.  
  
> [!NOTE]  
>  The index is 0-based.  
  
 **Related Topics**: [Loop through Excel Files and Tables by Using a Foreach Loop Container](../integration-services/control-flow/loop-through-excel-files-and-tables-by-using-a-foreach-loop-container.md)  
  
 **Delete**  
 Select a variable, and then click **Delete**.  
  
## See Also  
 [Integration Services Error and Message Reference](../integration-services/integration-services-error-and-message-reference.md)   
 [Foreach Loop Editor &#40;General Page&#41;](../a9retired/foreach-loop-editor-general-page.md)   
 [Foreach Loop Editor &#40;Collection Page&#41;](../a9retired/foreach-loop-editor-collection-page.md)   
 [Expressions Page](../integration-services/expressions/expressions-page.md)   
 [For Loop Container](../integration-services/control-flow/for-loop-container.md)  
  
  