---
title: "Allow a Text Box to Grow or Shrink (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: dbc01e78-5993-47e5-af04-34f9e3bbcee1
caps.latest.revision: 8
ms.author: "maggies"
manager: "erikre"
---
# Allow a Text Box to Grow or Shrink (Report Builder and SSRS)
  In a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] paginated report,  text boxes aren't just the stand-alone boxes on the report design surface. Every cell in a table or matrix (a tablix data region) also contains a text box, which can be formatted in the same way as stand-alone text boxes.By default , text boxes are a fixed size. You can set options that let a text box expand or shrink based on its contents. These options correspond to the **CanGrow** or **CanShrink** properties in the Properties pane.  
  
## To Allow a Text Box to Grow or Shrink  
  
1.  Right-click the text box and click **Text Box Properties**.  
  
2.  Click the **General** tab.  
  
    -   To allow the text box to expand vertically based on its contents, select **Allow height to increase**.  
  
    -   To allow the text box to shrink based on its contents, select **Allow height to decrease**.  
  
## See Also  
 [Text Boxes &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/text-boxes-report-builder-and-ssrs.md)  
  
  