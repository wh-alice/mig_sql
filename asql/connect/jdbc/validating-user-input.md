---
title: "Validating User Input | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8aa867b0-e6f0-49eb-93d3-817ae2ed8f77
caps.latest.revision: 11
ms.author: "genemi"
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
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# Validating User Input
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  When you construct an application that accesses data, you should assume all user input to be malicious until proven otherwise. Failure to do this can leave your application vulnerable to attack. One type of attack that can occur is called SQL injection, where malicious code is added to strings that are later passed to an instance of SQL Server to be parsed and run. To avoid this type of attack, you should use stored procedures with parameters where possible, and always validate user input.  
  
 Validating user input in client code is important so that you do not waste round trips to the server. It is equally important to validate parameters to stored procedures on the server to catch input that is not valid and that bypasses client-side validation.  
  
 For more information about SQL injection and how to avoid it, see "SQL Injection" in SQL Server Books Online. For more information about validating stored procedure parameters, see "Stored Procedures (Database Engine)" and subordinate topics in SQL Server Books Online.  
  
## See Also  
 [Securing JDBC Driver Applications](../../connect/jdbc/securing-jdbc-driver-applications.md)  
  
  