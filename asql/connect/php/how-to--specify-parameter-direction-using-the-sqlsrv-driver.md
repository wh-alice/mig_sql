---
title: "How to: Specify Parameter Direction Using the SQLSRV Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "stored procedure support"
ms.assetid: 1209eeca-df75-4283-96dc-714f39956b95
caps.latest.revision: 16
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
# How to: Specify Parameter Direction Using the SQLSRV Driver
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

This topic describes how to use the SQLSRV driver to specify parameter direction when you call a stored procedure. Note that the parameter direction is specified when you construct a parameter array (step 3) that is passed to [sqlsrv_query](../../connect/php/sqlsrv_query.md) or [sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md).  
  
### To specify parameter direction  
  
1.  Define a Transact-SQL query that calls a stored procedure. Use question marks (?) instead of the parameters to be passed to the stored procedure. For example, this string calls a stored procedure (UpdateVacationHours) that accepts two parameters:  
  
    ```  
    $tsql = "{call UpdateVacationHours(?, ?)}";  
    ```  
  
    > [!NOTE]  
    > Calling stored procedures using canonical syntax is the recommended practice. For more information about canonical syntax, see [Calling a Stored Procedure](http://go.microsoft.com/fwlink/?linkid=119517).  
  
2.  Initialize or update PHP variables that correspond to the placeholders in the Transact-SQL query. For example, the following code initializes the two parameters for the UpdateVacationHours stored procedure:  
  
    ```  
    $employeeId = 101;  
    $usedVacationHours = 8;  
    ```  
  
    > [!NOTE]  
    > Variables that are initialized or updated to **null**, **DateTime**, or stream types cannot be used as output parameters.  
  
3.  Use your PHP variables from step 2 to create or update an array of parameter values that correspond, in order, to the parameter placeholders in the Transact-SQL string. Specify the direction for each parameter in the array. The direction of each parameter is determined in one of two ways: by default (for input parameters) or by using **SQLSRV_PARAM_\*** constants (for output and bidirectional parameters). For example, the following code specifies the *$employeeId* parameter as an input parameter and the *$usedVacationHours* parameter as a bidirectional parameter:  
  
    ```  
    $params = array(  
                     array($employeeId, SQLSRV_PARAM_IN),  
                     array($usedVacationHours, SQLSRV_PARAM_INOUT)  
                    );  
    ```  
  
    To understand the syntax for specifying parameter direction in general, suppose that *$var1*, *$var2*, and *$var3* correspond to input, output, and bidirectional parameters, respectively. You can specify the parameter direction in either of the following ways:  
  
    -   Implicitly specificy the input parameter, explicitly specify the output parameter, and explicitly specify a bidirectional parameter:  
  
        ```  
        array(   
               array($var1),  
               array($var2, SQLSRV_PARAM_OUT),  
               array($var3, SQLSRV_PARAM_INOUT)  
               );  
        ```  
  
    -   Explicitly specificy the input parameter, explicitly specificy the output parameter, and explicitly specificy a bidirectional parameter:  
  
        ```  
        array(   
               array($var1, SQLSRV_PARAM_IN),  
               array($var2, SQLSRV_PARAM_OUT),  
               array($var3, SQLSRV_PARAM_INOUT)  
               );  
        ```  
  
4.  Execute the query with [sqlsrv_query](../../connect/php/sqlsrv_query.md) or with [sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md) and [sqlsrv_execute](../../connect/php/sqlsrv_execute.md). For example, the following code uses the connection *$conn* to execute the query *$tsql* with parameter values specified in *$params*:  
  
    ```  
    sqlsrv_query($conn, $tsql, $params);  
    ```  
  
## See Also  
[How to: Retrieve Output Parameters Using the SQLSRV Driver](../../connect/php/how-to--retrieve-output-parameters-using-the-sqlsrv-driver.md)  
[How to: Retrieve Input and Output Parameters Using the SQLSRV Driver](../../connect/php/how-to--retrieve-input-and-output-parameters-using-the-sqlsrv-driver.md)  
  
