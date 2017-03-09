---
title: "Union All Transformation Editor | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.unionalltransformation.f1"
helpviewer_keywords: 
  - "Union All Transformation Editor"
ms.assetid: 32fbc1c1-da83-4684-9479-31fc3e2df98c
caps.latest.revision: 26
ms.author: "douglasl"
manager: "jhubbard"
---
# Union All Transformation Editor
  Use the **Union All Transformation Editor** dialog box to merge several input rowsets into a single output rowset. By including the Union All transformation in a data flow, you can merge data from multiple data flows, create complex datasets by nesting Union All transformations, and re-merge rows after you correct errors in the data.  
  
 To learn more about the Union All transformation, see [Union All Transformation](../../../integration-services/data-flow/transformations/union-all-transformation.md).  
  
## Options  
 **Output Column Name**  
 Type an alias for each column. The default is the name of the input column from the first (reference) input; however, you can choose any unique, descriptive name.  
  
 **Union All Input 1**  
 Select from the list of available input columns in the first (reference) input. The metadata of mapped columns must match.  
  
 **Union All Input n**  
 Select from the list of available input columns in the second and additional inputs. The metadata of mapped columns must match.  
  
## See Also  
 [Integration Services Error and Message Reference](../../../integration-services/integration-services-error-and-message-reference.md)   
 [Merge Data by Using the Union All Transformation](../../../integration-services/data-flow/transformations/merge-data-by-using-the-union-all-transformation.md)   
 [Merge Transformation](../../../integration-services/data-flow/transformations/merge-transformation.md)   
 [Merge Join Transformation](../../../integration-services/data-flow/transformations/merge-join-transformation.md)  
  
  