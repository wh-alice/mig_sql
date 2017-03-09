---
title: "Data Mining Stored Procedures (Analysis Services - Data Mining) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "stored procedures [Analysis Services], data mining"
ms.assetid: a751856d-33bd-4788-9593-317b2826132d
caps.latest.revision: 26
ms.author: "owend"
manager: "erikre"
---
# Data Mining Stored Procedures (Analysis Services - Data Mining)
  Beginning in [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] supports stored procedures that can be written in any managed language. The managed languages that are supported include [!INCLUDE[vbprvb](../../analysis-services/data-mining/includes/vbprvb-md.md)] .NET, C#, and managed C++. In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], you can call the stored procedures directly by using the **CALL** statement, or as part of a Data Mining Extensions (DMX) query.  
  
 For more information about calling [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] stored procedures, see [Calling Stored Procedures](../../analysis-services/multidimensional-models-extending-olap-stored-procedures/calling-stored-procedures.md).  
  
 For general information about the programmability of [!INCLUDE[ssASCurrent](../../analysis-services/includes/ssascurrent-md.md)], see [Data Mining Programming](../../analysis-services/data-mining-programming.md).  
  
 For additional information about how to program data mining objects, see the article, "[SQL Server Data Mining Programmability](http://go.microsoft.com/fwlink/?LinkId=93735)", in the MSDN library.  
  
> [!NOTE]  
>  When you query mining models, especially when you test new data mining solutions, you might find it convenient to call the system stored procedures that are used internally by the data mining engine. You can view the names of these system stored procedures by using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] to create a trace on the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] server, and then creating, browsing, and querying the data mining models. However, [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] does not guarantee the compatibility of system stored procedures between versions, and you should never use calls to the system stored procedures in a production system. Instead, for compatibility, you should create your own queries by using DMX or XML/A.  
  
## In This Section  
  
-   [SystemGetCrossValidationResults &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/systemgetcrossvalidationresults-analysis-services-data-mining.md)  
  
-   [SystemGetClusterCrossValidationResults &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/systemgetclustercrossvalidationresults-analysis-services-data-mining.md)  
  
-   [SystemGetAccuracyResults &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/systemgetaccuracyresults-analysis-services-data-mining.md)  
  
-   [SystemGetClusterAccuracyResults &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/systemgetclusteraccuracyresults-analysis-services-data-mining.md)  
  
## Reference  
 [Script Administrative Tasks in Analysis Services](../../analysis-services/instances/script-administrative-tasks-in-analysis-services.md)  
  
## See Also  
 [Cross-Validation &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/cross-validation-analysis-services-data-mining.md)   
 [Cross-Validation Tab &#40;Mining Accuracy Chart View&#41;](../Topic/Cross-Validation%20Tab%20\(Mining%20Accuracy%20Chart%20View\).md)   
 [Calling a Stored Procedure](../../relational-databases/native-client-odbc-stored-procedures/calling-a-stored-procedure.md)  
  
  