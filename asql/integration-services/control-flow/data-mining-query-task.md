---
title: "Data Mining Query Task | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.dataminingquerytask.f1"
helpviewer_keywords: 
  - "prediction queries [Integration Services]"
  - "Data Mining Query task [Integration Services]"
ms.assetid: f489348c-2008-4f66-8c2c-c07c3029439a
caps.latest.revision: 45
ms.author: "douglasl"
manager: "jhubbard"
---
# Data Mining Query Task
  The Data Mining Query task runs prediction queries based on data mining models built in [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. The prediction query creates a prediction for new data by using mining models. For example, a prediction query can predict how many sailboats are likely to sell during the summer months or generate a list of prospective customers who are likely to buy a sailboat.  
  
 [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] provides tasks that perform other business intelligence operations, such as running Data Definition Language (DDL) statements and processing analytic objects.  
  
 For more information about other business intelligence tasks, click one of the following topics:  
  
-   [Analysis Services Execute DDL Task](../../integration-services/control-flow/analysis-services-execute-ddl-task.md)  
  
-   [Analysis Services Processing Task](../../integration-services/control-flow/analysis-services-processing-task.md)  
  
## Prediction Queries  
 The query is a Data Mining Extensions (DMX) statement. The DMX language is an extension of the SQL language that provides support for working with mining models. For more information about how to use the DMX language, see [Data Mining Extensions &#40;DMX&#41; Reference](../../dmx/data-mining-extensions-dmx-reference.md).  
  
 The task can query multiple mining models that are built on the same mining structure. A mining model is built using one of the data mining algorithms that [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] provides. The mining structure that the Data Mining Query task references can include multiple mining models, built using different algorithms. For more information, see [Mining Structures &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/mining-structures-analysis-services-data-mining.md) and [Data Mining Algorithms &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/data-mining-algorithms-analysis-services-data-mining.md).  
  
 The prediction query that the Data Mining Query task runs returns a result that is a single row or a data set. A query that returns a single row is called a singleton query: for example, the query that predicts how many sailboats will be sold during the summer months returns a number. For more information about prediction queries that return a single row, see [Data Mining Query Tools](../../analysis-services/data-mining/data-mining-query-tools.md).  
  
 The query results are saved to tables. If a table with the name that the Data Mining Query task specifies already exists, the task can create a new table, using the same name with a number appended, or it can overwrite the table content.  
  
 If the results include nesting, the result is flattened before it is saved. Flattening a result changes a nested result set to a table. For example, flattening a nested result with a **Customer** column and a nested **Product** column adds rows to the **Customer** column to make a table that includes product data for each customer. For example, a customer with three different products becomes a table with three rows, repeating the customer in each row and including a different product in each row. If the FLATTENED keyword is omitted, the table contains only the **Customer** column and only one row per customer. For more information, see [SELECT &#40;DMX&#41;](../../dmx/select-dmx.md).  
  
## Configuration of the Data Mining Query Task  
 The Data Mining Query task requires two connections. The first connection is an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection manager that connects either to an instance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] or to an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project that contains the mining structure and the mining model. The second connection is an OLE DB connection manager that connects to the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database that contains the table to which the task writes. For more information, see [Analysis Services Connection Manager](../../integration-services/connection-manager/analysis-services-connection-manager.md) and [OLE DB Connection Manager](../../integration-services/connection-manager/ole-db-connection-manager.md).  
  
 You can set properties through [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, click one of the following topics:  
  
-   [Data Mining Query Task Editor &#40;Mining Model Tab&#41;](../../integration-services/control-flow/data-mining-query-task-editor-mining-model-tab.md)  
  
-   [Data Mining Query Task Editor &#40;Query Tab&#41;](../../integration-services/control-flow/data-mining-query-task-editor-query-tab.md)  
  
-   [Data Mining Query Task Editor &#40;Output Tab&#41;](../../integration-services/control-flow/data-mining-query-task-editor-output-tab.md)  
  
> [!NOTE]  
>  The Data Mining Query Editor has no Expressions page. Instead, use the **Properties** window to access the tools for creating and managing property expressions for properties of the Data Mining Query task.  
  
 For more information about how to set these properties in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, click the following topic:  
  
-   [Set the Properties of a Task or Container](http://msdn.microsoft.com/library/52d47ca4-fb8c-493d-8b2b-48bb269f859b)  
  
## Programmatic Configuration of Data Mining Query Task  
 For more information about programmatically setting these properties, click one of the following topics:  
  
-   <xref:Microsoft.SqlServer.Dts.Tasks.DMQueryTask.DMQueryTask>  
  
  