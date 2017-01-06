---
title: "Running Test Cases (OracleToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: fc208cdb-7373-4f6b-8f6c-cdff9d3dcd02
caps.latest.revision: 6
ms.author: "v-pelars"
manager: "v-thobro"
---
# Running Test Cases (OracleToSQL)
When SSMA Tester runs a Test Case, it executes the objects selected for testing and creates a report about verification results. If the results are identical on both platforms, the test was successful. The correspondence of objects between Oracle and SQL Server is determined according to the schema-mapping settings for the current SSMA project.  
  
A necessary requirement for a successful test is that all Oracle objects are converted and loaded into the target database. Also, the table data should be migrated so that the contents of the tables on both platforms are synchronized.  
  
## Run Test Case  
To run the prepared Test Case:  
  
1.  Click the **Run** button.  
  
2.  In the **Connect to Oracle** dialog box, enter the connection information, and then click **Connect**.  
  
When the test is complete, the Test Case Report is created. Click the **Report** button to view the [Test Case Report](http://msdn.microsoft.com/en-us/8da14323-9dd6-4019-bf79-3e8b972a9bc0). The result of the test (Test Case Report) is automatically stored in the [Test Results Repository](http://msdn.microsoft.com/en-us/f941cce4-d3e3-4aeb-a88a-4f101a97a9f4) for later use.  
  
## Test Case Execution Steps  
  
### Prerequisites  
SSMA Tester checks if all prerequisites are met for the test execution before start of the test. If some conditions are not satisfied, an error message appears.  
  
### Initialization  
At this step, SSMA Tester creates auxiliary objects (tables, triggers, and views) in the Oracle server's SSMATESTER_ORACLE schema. They allow tracing changes made in the affected objects chosen for verification.  
  
Assume that the verified table is named USER_TABLE. For such a table, the following auxiliary objects are created in Oracle.  
  
||||  
|-|-|-|  
|Name|Type|Description|  
|USER_TABLE$Trg|trigger|Trigger auditing the changes in the verified table.|  
|USER_TABLE$AUD|table|Table where deleted and overwritten rows are saved.|  
|USER_TABLE$AUDID|table|Table where new and changed rows are saved.|  
|USER_TABLE|view|Simplified representation of the table modifications.|  
|USER_TABLE$NEW|view|Simplified representation of inserted and overwritten rows.|  
|USER_TABLE$NEW_ID|view|Identification of inserted and changed rows.|  
|USER_TABLE$OLD|view|Simplified representation of deleted and overwritten rows.|  
  
The following object is created in the schema of verified table at SQL Server.  
  
||||  
|-|-|-|  
|Name|Type|Description|  
|USER_TABLE$Trg|trigger|Trigger auditing the changes in the verified table.|  
  
And the following objects are created at SQL Serverin the ssmatesterdb database.  
  
||||  
|-|-|-|  
|Name|Type|Description|  
|USER_TABLE$Aud|table|Table where deleted and overwritten rows are saved.|  
|USER_TABLE$AudID|table|Table where new and changed rows are saved.|  
|USER_TABLE|view|Simplified representation of the table modifications.|  
|USER_TABLE$new|view|Simplified representation of inserted and overwritten rows.|  
|USER_TABLE$new_id|view|Identification of inserted and changed rows.|  
|USER_TABLE$old|view|Simplified representation of deleted and overwritten rows.|  
  
### Test Object Calls  
At this step, SSMA Tester invokes each object selected for the testing, compares the results, and shows the report.  
  
### Finalization  
During the finalization SSMA Tester cleans up the auxiliary objects created at the **Initialization** step.  
  
## Next Step  
[Viewing Test Case Reports &#40;OracleToSQL&#41;](../../ssma/oracle/viewing-test-case-reports--oracletosql-.md)  
  
## See Also  
[Selecting and Configuring Objects to Test &#40;OracleToSQL&#41;](../../ssma/oracle/selecting-and-configuring-objects-to-test--oracletosql-.md)  
[Selecting and Configuring Affected Objects &#40;OracleToSQL&#41;](../../ssma/oracle/selecting-and-configuring-affected-objects--oracletosql-.md)  
[Testing Migrated Database Objects &#40;OracleToSQL&#41;](../../ssma/oracle/testing-migrated-database-objects--oracletosql-.md)  
  
