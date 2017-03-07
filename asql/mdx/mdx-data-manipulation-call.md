---
title: "CALL Statement (MDX) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CALL"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "voids [MDX]"
  - "stored procedures [MDX]"
  - "CALL statement"
ms.assetid: b534a20b-924c-43b8-832d-24e57d50425c
caps.latest.revision: 35
ms.author: "owend"
manager: "erikre"
---
# MDX Data Manipulation - CALL
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Runs a stored procedure that returns a void either in the current scope or optionally on a specified cube.  
  
## Syntax  
  
```  
  
CALL SP_Name   
   [ (SP_Argument   
      [, SP_Argument ,...n]  
      ) ]   
[ONCube_Expression]  
```  
  
## Arguments  
 *SP_Name*  
 A valid string expression that provides the name of a stored procedure.  
  
 *SP_Argument*  
 A valid string expression that provides an argument to the called stored procedure.  
  
 *Cube_Expression*  
 A valid string cube expression providing the name of the cube.  
  
## Remarks  
 The **CALL** statement runs a specified registered stored procedure, optionally including one or more arguments for the specified stored procedure. The **CALL** statement is for use only with stored procedures that return voids. This statement cannot be combined with other functions or operators within an MDX expression. Registered stored procedures that return values can be called directly within MDX expressions and combined with other MDX functions and operators.  
  
 If a cube is not specified, the statement runs the stored procedure on the current cube.  
  
> [!NOTE]  
>  If the stored procedure is not registered on the client, the **CALL** statement attempts to call the stored procedure from an instance of [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)][!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)].  
  
## See Also  
 [MDX Data Manipulation Statements &#40;MDX&#41;](../mdx/mdx-data-manipulation-statements-mdx.md)   
 [Using Stored Procedures &#40;MDX&#41;](../mdx/using-stored-procedures-mdx.md)  
  
  