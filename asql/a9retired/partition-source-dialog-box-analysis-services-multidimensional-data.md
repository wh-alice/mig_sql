---
title: "Partition Source Dialog Box (Analysis Services - Multidimensional Data) | Microsoft Docs"
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
  - "sql13.asvs.partitionsourcedialog.f1"
ms.assetid: c414dabe-9bad-49b7-9a3c-dfca87fef92b
caps.latest.revision: 13
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Partition Source Dialog Box (Analysis Services - Multidimensional Data)
  Use the **Partition Source** dialog box in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] to specify the source of fact table data for a partition. You can display the **Partition Source** dialog box by:  
  
-   Clicking the **...** button on a cell from the **Partitions** grid of a selected measure group in the **Measure Groups** pane on the **Partitions** tab in Cube Designer.  
  
-   Clicking the **...** button on the **Source** property value of a **Partition** object in the **Properties** window in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
## Options  
  
|Option|Definition|  
|------------|----------------|  
|**Binding type**|Select the binding type to use for the source of the specified partition. The following options are available:<br /><br /> **Table binding**:<br />                      Select to display the **Table Binding Detail** pane and indicate that the partition is bound to the contents of a table in a data source or data source view. For more information about the **Table Binding Detail** pane, see [Table Binding Detail &#40;Partition Source Dialog Box&#41; &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/67d05389-81ae-4a6b-947b-986d37ec72b1.md).<br /><br /> **Detail**:<br />                      Select to display the **Query Binding Detail** pane and indicate that the partition is bound to the contents of a query executed on a data source. For more information about the **Query Binding Detail** pane, see [Query Binding Detail &#40;Partition Source Dialog Box&#41; &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/697874d4-3f7a-4126-96f5-37cc8e2ee306.md).|  
|**Detail**|Displays either the **Table Binding Detail** dialog box or the **Query Binding Detail** dialog box, depending on the value of the **Binding type** option.|  
  
## See Also  
 [Partitions &#40;Cube Designer&#41; &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/partitions-cube-designer.md)   
 [Analysis Services Designers and Dialog Boxes &#40;Multidimensional Data&#41;](../a9retired/analysis-services-designers-and-dialog-boxes-multidimensional-data.md)  
  
  