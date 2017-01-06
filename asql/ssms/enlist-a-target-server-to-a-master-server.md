---
title: "Enlist a Target Server to a Master Server | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "enlisting target servers [SQL Server]"
  - "SQL Server Agent jobs, target servers"
  - "master servers [SQL Server], enlisting target servers"
  - "SQL Server Agent jobs, master servers"
  - "target servers [SQL Server], enlisting"
ms.assetid: 7633adb5-d140-4e58-a8f2-5b4b50c2f95b
caps.latest.revision: 5
ms.author: "sstein"
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
# Enlist a Target Server to a Master Server
This topic describes how to add target servers to a multiserver administration configuration. Run this procedure from the master server. in SQL Server 2016 by using SQL Server Management Studio, Transact-SQL, or SQL Server Management Objects (SMO).  
  
For information about how the Windows account used for the SQL Server Agent service affects a multiserver environment, see [Create a Multiserver Environment](../ssms/create-a-multiserver-environment.md).  
  
Full Secure Sockets Layer (SSL) encryption and certificate validation is enabled for connections between master servers and target servers by default. For more information, see [Set Encryption Options on Target Servers](../ssms/set-encryption-options-on-target-servers.md).  
  
**In This Topic**  
  
-   **To enlist a target server, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To enlist a target server  
  
1.  In **Object Explorer**, expand a server that is configured as a master server.  
  
2.  Right-click **SQL Server Agent**, point to **Multi Server Administration**, and then click **Add Target Servers**.  
  
3.  Complete the Target Server Wizard, which guides you through the process.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To enlist a target server  
  
1.  Use the **sp_msx_enlist** stored procedure.  For more information, see [sp_msx_enlist (Transact-SQL)](http://msdn.microsoft.com/en-us/ceb3b2bc-0cc4-48d8-9bdc-6a809556e35f)  
  
## See Also  
[Automated Administration Across an Enterprise](../ssms/automated-administration-across-an-enterprise.md)  
  
