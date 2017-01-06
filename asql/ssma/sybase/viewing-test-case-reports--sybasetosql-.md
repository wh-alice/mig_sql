---
title: "Viewing Test Case Reports (SybaseToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
helpviewer_keywords: 
  - "Tester Component,Test Case Reports"
ms.assetid: cb75d281-43ef-4f4a-b754-2c4ee3b62ae7
caps.latest.revision: 5
ms.author: "lonnyb"
manager: "lonnyb"
---
# Viewing Test Case Reports (SybaseToSQL)
The Test Case Report shows the test verification results and general test information. In case of a test failure, information about any mismatched data in verified objects is also displayed.  
  
## Report Structure  
The top of the report shows these statistics:  
  
-   The total number of tested objects and the number of objects for which the test was successful.  
  
-   The total number of verified tables and foreign keys, and the number of tables and foreign keys successfully matched.  
  
-   The Start time, End time of the test case and the total time taken for execution.  
  
The rest of the report shows information in four categories:  
  
**Prerequisites Errors**  
Shows any errors that occurred at the **Prerequisites** step. Normally, it is skipped.  
  
**Initialization**  
Shows the status of execution as **Success** or **Failure**.  
  
**Test objects result**  
A comparison of results (success or failure) and the mismatches that SSMA Tester detected in case of failure.  
  
**Finalization**  
Shows the status of execution as **Success** or **Failure**.  
  
## See Also  
[Running Test Cases &#40;SybaseToSQL&#41;](../../ssma/sybase/running-test-cases--sybasetosql-.md)  
[Testing Migrated Database Objects &#40;SybaseToSQL&#41;](../../ssma/sybase/testing-migrated-database-objects--sybasetosql-.md)  
  
