---
title: "Change the Discretization of a Column in a Mining Model | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "discretization [Analysis Services]"
  - "mining structures [Analysis Services], how-to topics"
  - "discretized columns [data mining]"
  - "bucketing problems [Analysis Services]"
ms.assetid: 3c49862b-595d-4fa4-b890-e2e1bde1d74f
caps.latest.revision: 14
ms.author: "owend"
manager: "jhubbard"
---
# Change the Discretization of a Column in a Mining Model
  [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] automatically discretizes values—that is to say, it bins data in numeric column—in certain scenarios. For example, if your data contains continuous numeric data and you create a decision tree model, each column of continuous data will be automatically binned, depending on the distribution of the data. If you want to control how the data is discretized, you must change the properties on the mining structure column that control how the data is used in the model.  
  
 For general information about how to set the properties in a mining model, see [Mining Model Columns](../../analysis-services/data-mining/mining-model-columns.md).  
  
### To display the properties for a mining model column  
  
1.  In the **Mining Models** tab in Data Mining Designer, right-click the column header that contains the name of the mining model, or the row in the grid that contains the name of the mining algorithm, and then select **Properties**.  
  
     The **Properties** window displays the properties that are associated with the mining model as a whole.  
  
2.  In the **Structure** column near the left side of the screen, click the column that contains the continuous numeric data you want to discretize.  
  
     The **Properties** window changes to display just the properties associated with that column.  
  
### To change the discretization method  
  
1.  In the **Mining Properties** window, click the text box next to **Content**, and select **Discretized** from the dropdown list.  
  
     The <xref:Microsoft.AnalysisServices.ScalarMiningStructureColumn.DiscretizationBucketCount%2A> and <xref:Microsoft.AnalysisServices.ScalarMiningStructureColumn.DiscretizationMethod%2A> properties are now enabled.  
  
2.  In the **Properties** window, click the text box next to <xref:Microsoft.AnalysisServices.ScalarMiningStructureColumn.DiscretizationMethod%2A> and select one of the following values: **Automatic**, **EqualAreas**, or **Cluster**.  
  
    > [!NOTE]  
    >  If the column usage is set to **Ignore**, the **Properties** window for the column is blank.  
  
     The new value will take effect when you select a different element in the designer.  
  
3.  In the **Properties** window, click the text box next to <xref:Microsoft.AnalysisServices.ScalarMiningStructureColumn.DiscretizationBucketCount%2A> and type a numeric value.  
  
    > [!NOTE]  
    >  If you change these properties, the structure must be reprocessed, along with any models that you want to use the new setting.  
  
## See Also  
 [Mining Model Tasks and How-tos](../../analysis-services/data-mining/mining-model-tasks-and-how-tos.md)  
  
  