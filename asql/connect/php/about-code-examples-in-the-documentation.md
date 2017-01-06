---
title: "About Code Examples in the Documentation | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3f035c37-0f2e-47d4-94e0-a10774402e82
caps.latest.revision: 31
ms.author: "annemill"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# About Code Examples in the Documentation
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

There are several points to note when you execute the code examples in the Microsoft Drivers for PHP for SQL Server documentation:  
  
-   Nearly all the examples assume that SQL Server 2005 or later (SQL Server 2008 or later if using version 3.1) and the AdventureWorks database are installed on the local computer.  
  
    For information about how to download free editions and trial versions of SQL Server, see [SQL Server](http://go.microsoft.com/fwlink/?LinkID=120193).  
  
    For information about how to download the AdventureWorks database, see [Microsoft SQL Server Samples and Community Projects](http://go.microsoft.com/fwlink/?LinkID=67739).  
  
    For information about how to install the AdventureWorks database, see [Walkthrough: Installing the AdventureWorks Database](http://go.microsoft.com/fwlink/?LinkID=65819).  
  
-   Nearly all the code examples in this documentation are intended to be run from the command line, which enables automated testing of all the code examples. For information about how to run PHP from the command line, see [Using PHP from the command line](http://php.net/manual/en/features.commandline.php).  
  
-   Although examples are written to be run from the command line, each example can be run by invoking it from a browser without making any changes to the script. To achieve nice output formatting, replace each "\n" with "\<\/br>" in each example before invoking it from a browser.  
  
-   For the purpose of keeping each example narrowly focused, correct error handling is not done in all examples. It is recommended that any call to a **sqlsrv** function or PDO method be checked for errors and handled according to the needs of the application.  
  
    An easy way to obtain error information when an error is encountered is to exit the script with the following line of code:  
  
    ```  
    die( print_r( sqlsrv_errors(), true));  
    ```  
  
    Or, if you are using PDO,  
  
    ```  
    print_r ($stmt->errorInfo());  
    die();  
    ```  
  
    For more information about handling errors and warnings, see [Handling Errors and Warnings](../../connect/php/handling-errors-and-warnings.md).  
  
## See Also  
[Overview of the PHP SQL Driver](../../connect/php/overview-of-the-php-sql-driver.md)
  
