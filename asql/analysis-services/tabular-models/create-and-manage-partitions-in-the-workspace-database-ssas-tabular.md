---
title: "Create and Manage Partitions in the Workspace Database (SSAS Tabular) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.asvs.bidtoolset.partitionmgr.f1"
ms.assetid: 0b3027d6-652b-4eb3-a197-58b25df65218
caps.latest.revision: 15
ms.author: "owend"
manager: "erikre"
---
# Create and Manage Partitions in the Workspace Database (SSAS Tabular)
  Partitions divide a table into logical parts. Each partition can then be processed (Refreshed) independently or in parallel with other partitions. Partitions can improve scalability and manageability of large databases. By default, each table has one partition that includes all columns. Tasks in this topic describe how to create and manage partitions in the model workspace database by using the **Partition Manager** dialog box in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)]  
  
 After a model has been deployed to another Analysis Services instance, database administrators can create and manage partitions in the (deployed) model by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. For more information, see [Create and Manage Tabular Model Partitions &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/create-and-manage-tabular-model-partitions-ssas-tabular.md).  
  
 This topic includes the following tasks:  
  
-   [To create a new partition](#bkmk_create_new)  
  
-   [To copy a partition](#bkmk_copy)  
  
-   [To delete a partition](#bkmk_delete)  
  
> [!NOTE]  
>  You cannot merge partitions in the model workspace database by using the Partition Manager dialog box. Partitions can be merged in a deployed model only by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
## Tasks  
 To create and manage partitions, you will use the **Partitions Manager** dialog box. To view the **Partitions Manager** dialog box, in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)], click the **Table** menu, and then click **Partitions**.  
  
###  <a name="bkmk_create_new"></a> To create a new partition  
  
1.  In the model designer, select the table for which you want to define a partition.  
  
2.  Click on the **Table** menu, and then click **Partitions**.  
  
3.  In **Partition Manager**, in the **Table** listbox, verify or select the table you want to partition, and then click **New**.  
  
4.  In **Partition Name**, type a name for the partition. By default, the name of the default partition will be incrementally numbered for each new partition.  
  
5.  You can select the rows and columns to be included in the partition by using Table Preview mode or by using a SQL query created using Query Editor mode.  
  
     To use Table Preview mode (default), click the **Table Preview** button near the upper-right corner of the preview window. Select the columns you want to include in the partition by selecting the checkbox next to the column name. To filter rows, right click a cell value, and click **Filter by Selected Cell Value**.  
  
     To use a SQL statement, click the **Query Editor** button near the upper-right corner of the preview window, then type or paste a SQL query statement into the query window. To validate your statement, click **Validate**. To use the Query Designer, click **Design**.  
  
###  <a name="bkmk_copy"></a> To copy a partition  
  
1.  In **Partition Manager**, in the **Table** listbox, verify or select the table that contains the partition you want to copy.  
  
2.  In the **Partitions** list, select the partition you want to copy and then click **Copy**.  
  
3.  In **Partition Name**, type a new name for the partition.  
  
###  <a name="bkmk_delete"></a> To delete a partition  
  
1.  In **Partition Manager**, in the **Table** listbox, verify or select the table that contains the partition you want to delete.  
  
2.  In the **Partitions** list, select the partition you want to delete and then click **Delete**.  
  
## See Also  
 [Partitions &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/partitions-ssas-tabular.md)   
 [Process Partitions in the Workspace Databse &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/process-partitions-in-the-workspace-databse-ssas-tabular.md)  
  
  