---
title: "Bulk Insert Task Editor (Options Page) | Microsoft Docs"
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
  - "sql13.dts.designer.bulkinserttask.options.f1"
helpviewer_keywords: 
  - "Bulk Insert Task Editor"
ms.assetid: b3702811-3eb8-4b28-9190-5ae7a1a7bb6f
caps.latest.revision: 31
ms.author: "douglasl"
manager: "jhubbard"
---
# Bulk Insert Task Editor (Options Page)
  Use the **Options** page of the **Bulk Insert Task Editor** dialog box to set properties for the bulk insert operation. The Bulk Insert task copies large amounts of data into a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table or view.  
  
 To learn about working with bulk inserts, see [Bulk Insert Task](../../integration-services/control-flow/bulk-insert-task.md) and [BULK INSERT &#40;Transact-SQL&#41;](../../t-sql/statements/bulk-insert-transact-sql.md).  
  
## Options  
 **CodePage**  
 Specify the code page of the data in the data file.  
  
 **DataFileType**  
 Specify the data-type value to use in the load operation.  
  
 **BatchSize**  
 Specify the number of rows in a batch. The default is the entire data file. If you set **BatchSize** to zero, the data is loaded in a single batch.  
  
 **LastRow**  
 Specify the last row to copy.  
  
 **FirstRow**  
 Specify the first row from which to start copying.  
  
 **Options**  
 |Term|Definition|  
|----------|----------------|  
|**Check constraints**|Select to check the table and column constraints.|  
|**Keep nulls**|Select to retain null values during the bulk insert operation, instead of inserting any default values for empty columns.|  
|**Enable identity insert**|Select to insert existing values into an identity column.|  
|**Table lock**|Select to lock the table during the bulk insert.|  
|**Fire triggers**|Select to fire any insert, update, or delete triggers on the table.|  
  
 **SortedData**  
 Specify the ORDER BY clause in the bulk insert statement. The column name that you supply must be a valid column in the destination table. The default is **false**. This means that the data is not sorted by an ORDER BY clause.  
  
 **MaxErrors**  
 Specify the maximum number of errors that can occur before the bulk insert operation is canceled. A value of 0 indicates that an infinite number of errors are allowed.  
  
> [!NOTE]  
>  Each row that cannot be imported by the bulk load operation is counted as one error.  
  
## See Also  
 [Integration Services Error and Message Reference](../../integration-services/integration-services-error-and-message-reference.md)   
 [Bulk Insert Task Editor &#40;General Page&#41;](../../integration-services/control-flow/bulk-insert-task-editor-general-page.md)   
 [Bulk Insert Task Editor &#40;Connection Page&#41;](../../integration-services/control-flow/bulk-insert-task-editor-connection-page.md)   
 [Expressions Page](../../integration-services/expressions/expressions-page.md)   
 [Control Flow](../../integration-services/control-flow/control-flow.md)  
  
  