---
title: "Add Reference Dialog Box | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.rtp.rptdesigner.addreference.f1"
helpviewer_keywords: 
  - "Edit References dialog box"
ms.assetid: 7bdd2eee-195a-4a2f-a0aa-56f7e90c1fb4
caps.latest.revision: 31
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Add Reference Dialog Box
  Use the **Add Reference** dialog box to add references to a custom assembly or [!INCLUDE[dnprdnshort](../a9retired/includes/dnprdnshort-md.md)] component to your report. After you add an assembly reference, you can write expressions or embedded custom code that includes fully qualified references to classes or methods in the assembly or component. For more information, see [Custom Code and Assembly References in Expressions in Report Designer &#40;SSRS&#41;](../reporting-services/report-design/custom-code-and-assembly-references-in-expressions-in-report-designer-ssrs.md) or [Add an Assembly Reference to a Report &#40;SSRS&#41;](../reporting-services/report-design/add-an-assembly-reference-to-a-report-ssrs.md).  
  
1. To open the **Add Reference** dialog:
2. In the **Report** menu, click **Report Properties**
3. Click the **References** tab. 
  
## Options
After you click the **Add**:
 
 **.NET**  
 Use to select a [!INCLUDE[dnprdnshort](../a9retired/includes/dnprdnshort-md.md)] component or an assembly installed in the global assembly cache (GAC).  
  
 **Browse**  
 Use to browse to an external assembly on your file system.  
  
> [!NOTE]  
>  When you publish a report that includes a reference to an external assembly, the assembly must be installed on the report server before the report can be processed successfully.  
  
 **Recent**  
 Use to select the name of a recently used assembly.  
  
## See Also  
 [Add Code to a Report](../reporting-services/report-design/add-code-to-a-report-ssrs.md)  
[Add an Assembly reference to a report](../reporting-services/report-design/add-an-assembly-reference-to-a-report-ssrs.md)  
  