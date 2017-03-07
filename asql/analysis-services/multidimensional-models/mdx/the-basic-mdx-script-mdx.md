---
title: "The Basic MDX Script (MDX) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "default MDX scripts"
  - "statements [MDX]"
  - "expressions [MDX], scripts"
  - "scripts [MDX], about scripts"
ms.assetid: 83d9afda-7d34-42b5-8f28-20172a905f23
caps.latest.revision: 27
ms.author: "owend"
manager: "erikre"
---
# The Basic MDX Script (MDX)
  A Multidimensional Expressions (MDX) script defines the calculation process for a cube in [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)]. There are two types of MDX scripts:  
  
 **The default MDX script**  
 At the time that you create a cube, [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] creates a default MDX script for that cube. This script defines a calculation pass for the whole cube.  
  
 **User-defined MDX script**  
 After you have created a cube, you can add user-defined MDX scripts that extend the calculation capabilities of the cube.  
  
## The Default MDX Script  
 The default MDX script that [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] creates when you define a cube contains a single CALCULATE statement. This single CALCULATE statement is at the beginning of the default MDX script, and indicates that the entire cube should be calculated during the first calculation pass.  
  
 The default MDX script also contains the script commands that create named sets, assignments, and calculated members created in Cube Designer:  
  
-   [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] directly adds script commands to the default MDX script.  
  
-   For each named set in the cube, a corresponding CREATE SET statement exists in the default MDX script.  
  
-   For each calculated member defined in the cube, a corresponding CREATE MEMBER statement exists in the default MDX script.  
  
 You can control the order of script commands, named sets, and calculated members in the default MDX script by using the **Calculations** tab of Cube Designer. For more information on defining calculations stored in the default MDX script, see [Calculations in Multidimensional Models](../../../analysis-services/multidimensional-models/calculations-in-multidimensional-models.md).  
  
 If there is no MDX script associated with a cube, the cube assumes the default MDX script. A cube needs to be associated with at least one MDX script because a cube relies on the MDX script to determine calculation behavior. In other words, a cube that was not associated with an MDX script or was associated with an empty MDX script could not and would not be able to calculate any cells. If you programmatically create cubes, either by using Analysis Services Scripting Language (ASSL) commands or by using Analysis Management Objects (AMO), it is recommended that you create a default MDX script containing a single CALCULATE statement for the cube.  
  
## MDX Script Content  
 An MDX script can contain the following statements and expressions:  
  
 All MDX scripting statements  
 In MDX scripts, MDX scripting statements control the context and scope of calculations, and manage the behavior of other statements in the MDX script. This category includes the following statements:  
  
-   [CALCULATE](../Topic/CALCULATE%20Statement%20\(MDX\).md)  
  
-   [FREEZE](../Topic/FREEZE%20Statement%20\(MDX\).md)  
  
-   [SCOPE](../Topic/SCOPE%20Statement%20\(MDX\).md)  
  
 For more information on MDX scripting statements, see [MDX Scripting Statements &#40;MDX&#41;](../../../mdx/mdx-scripting-statements-mdx.md).  
  
 [CREATE MEMBER](../Topic/CREATE%20MEMBER%20Statement%20\(MDX\).md)  
 The CREATE MEMBER statement creates calculated members. For more information about how to create calculated members, see [Building Calculated Members in MDX &#40;MDX&#41;](../Topic/Building%20Calculated%20Members%20in%20MDX%20\(MDX\).md).  
  
 [CREATE SET](../Topic/CREATE%20SET%20Statement%20\(MDX\).md)  
 The CREATE SET statement creates named sets. For more information about how to create names sets, see [Building Named Sets in MDX &#40;MDX&#41;](../Topic/Building%20Named%20Sets%20in%20MDX%20\(MDX\).md).  
  
 Conditional statements  
 Conditional statements add conditional logic to MDX scripts. This category includes the [CASE](../../../mdx/case-statement-mdx.md) and [IF](../Topic/IF%20Statement%20%20\(MDX\).md) statements.  
  
 Assignment expressions  
 An assignment expression assigns an expression, such as a value, to a constrained subcube. A constrained subcube expression is a collection of constrained set expressions that define the "edges" of a subcube within an MDX script. The following codes shows the syntax for a constrained subcube expression:  
  
```  
<Constrained subcube> ::= (   
    ( <Constrained set> [<Crossjoin operator> <Constrained set>...] |  
    <ROOT function> |  
    <TREE function> |  
    LEAVES() |  
    * ) [, <Constrained subcube>...]  
<Constrained set> ::=   
    <Natural hierarchy>.MEMBERS |   
    <Natural hierarchy>.LEVEL(<numeric expression>).MEMBERS |   
    { <Natural hierarchy member> } |   
    DESCENDANTS( <Natural hierarchy member>, <Level expression>, ( SELF | AFTER | SELF_AND_AFTER ) ) |   
    DESCENDANTS( <Natural hierarchy member>, , LEAVES )  
<Natural hierarchy> ::= <Hierarchy identifier>  
<Natural hierarchy member> ::= <Natural hierarchy>.<identifier>[.<identifier>...]  
```  
  
## See Also  
 [MDX Language Reference &#40;MDX&#41;](../../../mdx/mdx-language-reference-mdx.md)   
 [MDX Scripting Fundamentals &#40;Analysis Services&#41;](../../../analysis-services/multidimensional-models/mdx/mdx-scripting-fundamentals-analysis-services.md)  
  
  