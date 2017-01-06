---
title: "Using Test Repositories (OracleToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Test Cases Repository"
  - "Test Results Repository"
ms.assetid: f941cce4-d3e3-4aeb-a88a-4f101a97a9f4
caps.latest.revision: 8
ms.author: "v-pelars"
manager: "v-thobro"
---
# Using Test Repositories (OracleToSQL)
The SSMA Test Repository stores SSMA Tester test cases and test results for later use. The Repository data are saved in the SQL Server tables **TestCaseRepository** and **RunTestCaseResultRepository** in the schema **ssma_oracle_utilities** of **ssmatesterdb** database.  
  
The following buttons are available on the Repository of Test Cases dialog box:  
  
-   Click the **Refresh** button to refresh the Test Cases or Test Results list.  
  
-   Click the **Close** button to close Repository of Test Cases dialog box.  
  
## Test Cases Repository  
You can view the Test Cases Repository by clicking **Test Cases…** from the **Tester** menu. SSMA then displays the **Repository of Test Cases** dialog window with a list of saved test cases on the **Test Cases** page.  
  
The grid shows the following information about each test case:  
  
-   Name: The test case name.  
  
-   Created: The test case creation date.  
  
-   Modified: The test case last modification date.  
  
-   Description: The test case descriptions.  
  
The following buttons are available on Test Cases page:  
  
-   Click the **Add** button to run the Test Case Wizard and create a new test.  
  
-   Click the **Remove** button to delete the selected test from the repository.When a Test Case is deleted, all related Test Results are also deleted.  
  
-   Click the **Edit** button to run the Test Case Wizard and change the selected test.  
  
-   Click the **Run** button to open the [Running Test Cases (OracleToSQL)](http://msdn.microsoft.com/en-us/fc208cdb-7373-4f6b-8f6c-cdff9d3dcd02) dialog and execute the selected test.  
  
## Test Results Repository  
You can view the Test Results Repository on the **Test Results** page of the **Repository of Test Cases** window. Open it by clicking **Test Results…** from the **Tester** menu.  
  
You can use two filters on **Test Results** page:  
  
-   The Test Case Name filter: Allows choosing test results by test case name. This filter's **All Test Cases** value allows displaying test results for all test cases.  
  
-   The Test Case Execution Date filter: Filters test results by the date of saving.This filter's **All Period** value allows displaying test results for any date of saving.  
  
The following information about test results is displayed in the grid.  
  
-   Name: Test case name.  
  
-   Saved: Test case date of saving.  
  
-   Results: A short summary of test execution (this cell's tool tip displays a full summary of test execution).  
  
The following buttons are available on Test Result page:  
  
-   Click the **View** button to open [Viewing Test Case Reports &#40;OracleToSQL&#41;](../../ssma/oracle/viewing-test-case-reports--oracletosql-.md) of current Test Case Result.  
  
-   Click the **Delete** button to delete the selected Test Result  
  
## See Also  
[Running Test Cases &#40;OracleToSQL&#41;](../../ssma/oracle/running-test-cases--oracletosql-.md)  
[Testing Migrated Database Objects &#40;OracleToSQL&#41;](../../ssma/oracle/testing-migrated-database-objects--oracletosql-.md)  
  
