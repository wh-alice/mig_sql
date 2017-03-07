---
title: "Add an Annotation to a Package | Microsoft Docs"
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
  - "self-documenting packages"
  - "adding annotations"
  - "annotations [Integration Services]"
ms.assetid: 8db31e78-e03b-44e6-a307-a1349f52b0c6
caps.latest.revision: 42
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Add an Annotation to a Package
  This procedure describes how to add an annotation to a package.  
  
### To add an annotation to a package  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project that contains the package to which you want to add an annotation.  
  
2.  In Solution Explorer, double-click the package to open it.  
  
3.  In [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer, right-click anywhere on the design surface of the **Control Flow**, **Data Flow**, or **Event Handler** tab, and then click **Add Annotation**. A text block appears on the design surface of the tab.  
  
4.  Add text.  
  
    > [!NOTE]  
    >  If you add no text, the text block is removed when you click outside the block.  
  
5.  To change the size or format of the text in the annotation, right-click the annotation and then click **Set Text Annotation Font**.  
  
6.  To add an additional line of text, press ENTER.  
  
     The annotation box automatically increases in size as you add additional lines of text.  
  
7.  To add an annotation to a group, right-click the annotation and then click **Group**.  
  
8.  To save the updated package, on the **File** menu, click **Save All**.  
  
## See Also  
 [Use Annotations in Packages](../integration-services/use-annotations-in-packages.md)  
  
  