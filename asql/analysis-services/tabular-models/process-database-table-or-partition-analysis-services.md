---
title: "Process Database, Table, or Partition (Analysis Services) | Microsoft Docs"
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
  - "sql13.ASVS.SSMS.PARTITIONS.PROCESSINGOPTIONS.IMBI.F1"
ms.assetid: 307d69c3-cabb-4dfa-b90c-9852492c1213
caps.latest.revision: 8
ms.author: "owend"
manager: "erikre"
---
# Process Database, Table, or Partition (Analysis Services)
  The tasks in this topic describe how to process a tabular model database, table, or partitions manually by using the **Process \<object>** dialog box in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
 For more information about tabular model processing, see [Process Data &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/process-data-ssas-tabular.md).  
  
##  <a name="bkmk_process_tasks"></a> Tasks  
  
###  <a name="bkmk_process_db"></a> To process a database  
  
1.  In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], right-click on the database you want to process, and then click **Process Database**.  
  
2.  In the **Process Database** dialog box, in the **Mode** listbox, select one of the following process modes:  
  
    |Mode|Description|  
    |----------|-----------------|  
    |**Process Default**|Detects the process state of database objects, and performs processing necessary to deliver unprocessed or partially processed objects to a fully processed state. Data for empty tables and partitions is loaded; hierarchies, calculated columns, and relationships are built or rebuilt (recalculated).|  
    |**Process Full**|Processes a database and all the objects that it contains. When Process Full is run for an object that has already been processed, [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] drops all data in the object, and then processes the object. This kind of processing is required when a structural change has been made to an object. This option requires the most resources.|  
    |**Process Clear**|Removes all data from database objects.|  
    |**Process Recalc**|Updates and recalculates hierarchies, relationships, and calculated columns.|  
  
3.  In the **Process** checkbox column, select the partitions you want to process with the selected mode, and then click **Ok**.  
  
###  <a name="bkmk_process_table"></a> To process a table  
  
1.  In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], in the tabular model database which contains the table you want to process, expand the **Tables** node, then right-click on the table you want to process, and then click **Process Table**.  
  
2.  In the **Process Table** dialog box, in the **Mode** listbox, select one of the following process modes:  
  
    |Mode|Description|  
    |----------|-----------------|  
    |**Process Default**|Detects the process state of a table object, and performs processing necessary to deliver unprocessed or partially processed objects to a fully processed state. Data for empty tables and partitions is loaded; hierarchies, calculated columns, and relationships are built or rebuilt (recalculated).|  
    |**Process Full**|Processes a table object and all the objects that it contains. When Process Full is run for an object that has already been processed, [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] drops all data in the object, and then processes the object. This kind of processing is required when a structural change has been made to an object. This option requires the most resources.|  
    |**Process Data**|Load data into a table without rebuilding hierarchies or relationships or recalculating calculated columns and measures.|  
    |**Process Clear**|Removes all data from a table and any table partitions.|  
    |**Process Defrag**|Defragments the auxiliary table indexes.|  
  
3.  In the table checkbox column, verify the table and optionally select any additional tables you want to process, and then click **Ok**.  
  
###  <a name="bkmk_process_partition"></a> To process one or more partitions  
  
1.  In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], right-click on the table that has the partitions you want to process, and then click **Partitions**.  
  
2.  In the **Partitions** dialog box, in **Partitions**, click the Process button.  
  
3.  In the **Process Partition** dialog box, in the **Mode** listbox, select one of the following process modes:  
  
    |Mode|Description|  
    |----------|-----------------|  
    |**Process Default**|Detects the process state of a partition object, and performs processing necessary to deliver unprocessed or partially processed partition objects to a fully processed state. Data for empty tables and partitions is loaded; hierarchies, calculated columns, and relationships are built or rebuilt (recalculated).|  
    |**Process Full**|Processes a partition object and all the objects that it contains. When Process Full is run for an object that has already been processed, [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] drops all data in the object, and then processes the object. This kind of processing is required when a structural change has been made to an object.|  
    |**Process Data**|Load data into a partition or a table without rebuilding hierarchies or relationships or recalculating calculated columns and measures.|  
    |**Process Clear**|Removes all data from a partition.|  
    |**Process Add**|Incrementally update partition with new data.|  
  
4.  In the **Process** checkbox column, select the partitions you want to process with the selected mode, and then click **Ok**.  
  
## See Also  
 [Tabular Model Partitions &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/tabular-model-partitions-ssas-tabular.md)   
 [Create and Manage Tabular Model Partitions &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/create-and-manage-tabular-model-partitions-ssas-tabular.md)  
  
  