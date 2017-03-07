---
title: "Specify the Size of an Indicator Using an Expression (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: ab0b86f1-4882-4258-a2b6-c612faecfa4b
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Specify the Size of an Indicator Using an Expression (Report Builder and SSRS)
  In addition to color, direction, and shape, you can use size to maximize the visual impact of indicators.  
  
 An indicator has a collection of indicator states named IndicatorStates. The IndicatorStates collection typically have multiple states. Each state is a member of the collection and is represented by an icon. Together the states constitute the IndicatorsStates collection.  
  
 To dynamically configure the sizes of icons, you set properties of members of the IndicatorsStates collection in the Properties pane of Report Builder. If the **Properties** pane is not visible, click the **View** tab and select **Properties**.  
  
> [!NOTE]  
>  In [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], you use the **Properties** window to set the member properties. If the **Properties** window is not open, press the F4 key.  
  
 The **Properties** pane provides access to the properties of the IndicatorStates collection of an indicator. You configure the icons to be different sizes by setting the ScaleFactor property of the IndicatorStates collection members using an expression. For more information, see [Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expressions-report-builder-and-ssrs.md).  
  
 The expression used in this procedure was also used to generate the report with different sizes of indicators, shown in [Indicators &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/indicators-report-builder-and-ssrs.md).  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
### To specify the indicator icon size using an expression  
  
1.  Click the indicator you want to change.  
  
2.  In the Properties pane, locate the IndicatorStates property.  
  
     If the Properties pane is organized by category, you will find IndicatorStates in the **States** category.  
  
3.  Click the ellipsis **(...)** button next to IndicatorStates. The **IndicatorState Collection Editor** dialog box opens.  
  
     Select all members of the collection.  
  
4.  In the **Multi-Select Properties** list, click the down arrow next to ScaleFactor and then click **Expression**.  
  
5.  In the **Expression** dialog box write the expression.  
  
     The following sample expression makes the icon a different size based on the value of the **SalesYTD** field.  
  
     `=IIF(Fields!SalesYTD.value = 0,0,Fields!SalesYTD.value/Max(Fields!SalesYTD.value,"Indicator"))`  
  
     For more information, see [Expression Examples &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md).  
  
6.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
7.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
## See Also  
 [Indicators &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/indicators-report-builder-and-ssrs.md)  
  
  