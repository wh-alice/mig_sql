---
title: "Use an Expression in a Precedence Constraint | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "precedence constraints [Integration Services], adding expressions"
  - "expressions [Integration Services], adding"
ms.assetid: 601038bb-3b17-42ac-b09d-5b3a82fb6564
caps.latest.revision: 45
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Use an Expression in a Precedence Constraint
  This procedure describes how to add an expression to a precedence constraint by using the **Precedence Constraint Editor** dialog box. Before you can add an expression to a precedence constraint, the package must include at least two executables, either tasks or containers, and they must be connected by a precedence constraint.  
  
### To add an expression to a precedence constraint  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project that contains the package you want.  
  
2.  In Solution Explorer, double-click the package to open it.  
  
3.  Click the **Control Flow** tab.  
  
4.  On the design surface of the **Control Flow** tab, double-click the precedence constraint. The **Precedence Constraint Editor** opens.  
  
5.  Select **Expression**, **Expression and Constraint**, or **Expression or Constraint** in the **Evaluation operation** list.  
  
6.  Type an expression in the **Expression** text box or launch the Expression Builder to create an expression.  
  
7.  To validate the expression syntax, click **Test**.  
  
8.  To save the updated package, click **Save Selected Items** on the **File** menu.  
  
## See Also  
 [Precedence Constraints](../integration-services/control-flow/precedence-constraints.md)   
 [Connect Tasks and Containers by Using a Default Precedence Constraint](../a9retired/connect-tasks-and-containers-by-using-a-default-precedence-constraint.md)   
 [Set the Value of a Precedence Constraint by Using the Shortcut Menu](../a9retired/set-the-value-of-a-precedence-constraint-by-using-the-shortcut-menu.md)   
 [Set the Properties of a Precedence Constraint](../a9retired/set-the-properties-of-a-precedence-constraint.md)   
 [Integration Services &#40;SSIS&#41; Expressions](../integration-services/expressions/integration-services-ssis-expressions.md)  
  
  