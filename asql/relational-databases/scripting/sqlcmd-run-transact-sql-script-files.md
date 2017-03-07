---
title: "Run Transact-SQL Script Files Using sqlcmd | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-15"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "transact sql scripts"
ms.assetid: 90067eb8-ca3e-44e8-bb1a-bf7d1a359423
caps.latest.revision: 42
ms.author: "jhubbard"
manager: "jhubbard"
---
# sqlcmd - Run Transact-SQL Script Files
 Use **sqlcmd** to run a Transact-SQL script file. A Transact-SQL script file is a text file that can contain a combination of Transact-SQL statements, **sqlcmd** commands, and scripting variables.  

## Create a script file  
 To create a simple Transact-SQL script file by using Notepad, follow these steps:  
  
1.  Click **Start**, point to **All Programs**, point to **Accessories**, and then click **Notepad**.  
  
2.  Copy and paste the following Transact-SQL code into Notepad:  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    SELECT p.FirstName + ' ' + p.LastName AS 'Employee Name',  
    a.AddressLine1, a.AddressLine2 , a.City, a.PostalCode   
    FROM Person.Person AS p   
       INNER JOIN HumanResources.Employee AS e   
            ON p.BusinessEntityID = e.BusinessEntityID  
        INNER JOIN Person.BusinessEntityAddress bea   
            ON bea.BusinessEntityID = e.BusinessEntityID  
        INNER JOIN Person.Address AS a   
            ON a.AddressID = bea.AddressID;  
    GO  
    ```  
  
3.  Save the file as **myScript.sql** in the C drive.  
  
## Run the script file  
  
1.  Open a command prompt window.  
  
2.  In the Command Prompt window, type: **sqlcmd -S myServer\instanceName -i C:\myScript.sql**  
  
3.  Press ENTER.  
  
 A list of [!INCLUDE[ssSampleDBCoShort](../../analysis-services/data-mining/includes/sssampledbcoshort-md.md)] employee names and addresses is written to the command prompt window.  

## Save the output to a text file
  
1.  Open a command prompt window.  
  
2.  In the Command Prompt window, type: **sqlcmd -S myServer\instanceName -i C:\myScript.sql -o C:\EmpAdds.txt**  
  
3.  Press ENTER.  
  
 No output is returned in the Command Prompt window. Instead, the output is sent to the EmpAdds.txt file. You can verify this output by opening the EmpAdds.txt file.  
  
## See Also  
 [Start the sqlcmd Utility](../Topic/Start%20the%20sqlcmd%20Utility.md)   
 [sqlcmd Utility](../../tools/sqlcmd-utility.md)  
  
  