---
title: "Guidelines and Limitations of DiffGrams in SQLXML | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "DiffGrams [SQLXML], about DiffGrams"
ms.assetid: cf8689c4-2a63-4d05-b202-21b5ff187d7f
caps.latest.revision: 7
ms.author: "douglasl"
manager: "jhubbard"
---
# Guidelines and Limitations of DiffGrams in SQLXML
  Remember the following when using DiffGrams with SQLXML 4.0:  
  
-   Binary large object (BLOB) types like **text/ntext** and images should not be used in the **\<diffgr:before>** block in when working with DiffGrams, because this will include them for use in concurrency control. This can cause problems with [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] because of the limitations on comparison for BLOB types. For example, the LIKE keyword is used in the WHERE clause for comparing between columns of the **text** data type; however, comparisons will fail in the case of BLOB types where the size of the data is greater than 8K.  
  
-   Special characters in **ntext** data can cause problems with SQLXML 4.0 because of the limitations on comparison for BLOB types. For example, the use of "[Serializable]" in the **\<diffgr:before>** block of a DiffGram when used in concurrency checking of a column of **ntext** type will fail with the following SQLOLEDB error description:  
  
    ```  
    Empty update, no updatable rows found   Transaction aborted  
    ```  
  
  