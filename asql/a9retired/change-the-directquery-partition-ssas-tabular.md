---
title: "Change the DirectQuery Partition (SSAS Tabular) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f9df1e66-dd23-41b4-95eb-af110d10eda4
caps.latest.revision: 10
ms.author: "heidist"
manager: "erikre"
robots: noindex,nofollow
---
# Change the DirectQuery Partition (SSAS Tabular)
  Because only one partition in a table can be designated as the DirectQuery partition, by default, Analysis Services uses the first partition that was created in the table. During model project authoring, you can change the DirectQuery partition by using the Partition Manager dialog box in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)]. For deployed models, you can change the DirectQuery partition by using [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
### Change the DirectQuery partition for a tabular model project  
  
1.  In [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)], in the model designer, click on the table (tab) that contains the partitioned table.  
  
2.  Click on the **Table** menu, and then click **Partitions**.  
  
3.  In **Partition Manager**, the partition that is the current Direct Query partition in indicated by the prefix **(DirectQuery)** on the partition name.  
  
     Select a different partition from the **Partitions** list, and then click **Set as DirectQuery**. The **Set as DirectQuery** button is not enabled when the current DirectQuery partition is selected, and is not visible if the model has not been enabled for Direct Query mode.  
  
4.  If necessary, change the processing options, and then click **OK**.  
  
### Change the DirectQuery partition for a deployed tabular model  
  
1.  In [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], open the model database in Object Explorer.  
  
2.  Expand the **Tables** node, then right-click the partitioned table, and then select **Partitions**.  
  
     The partition that is designated for use with DirectQuery mode has the prefix (DirectQuery) on the partition name.  
  
3.  To change to a different partition, click the **Direct Query** toolbar icon to open the **Set DirectQuery Partition** dialog box. The DirectQuery toolbar icon is not available on models that have not been enabled for Direct Query.  
  
4.  Choose a different partition from the **Partition Name** dropdown list, and then change processing options on the partition if necessary.  
  
## See Also  
 [Partitions &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/partitions-ssas-tabular.md)  
  
  