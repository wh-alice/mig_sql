---
title: "Specify Instances in the SQL Server PowerShell Provider | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9373de68-fd43-45f2-b9a6-149c96610aeb
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
---
# Specify Instances in the SQL Server PowerShell Provider
  The paths specified for the SQL Server PowerShell provider must identify the instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] and the computer it is running on. The syntax for specifying the computer and the instance must comply with both the rules for SQL Server identifiers and Windows PowerShell paths.  
  
1.  **Before you begin:**  [Limitations and Restrictions](#LimitationsRestrictions)  
  
2.  **To specify an instance:**  [Examples](#Examples)  
  
## Before You Begin  
 The first node following the SQLSERVER:\SQL in a SQL Server provider path is the name of the computer that is running the instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)]; for example:  
  
```  
SQLSERVER:\SQL\MyComputer  
```  
  
 If you are running Windows PowerShell on the same computer as the instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)], you can use either localhost or (local) instead of the name of the computer. Scripts that use localhost or (local) can be run on any computer without having to be changed to reflect the different computer names.  
  
 You can run multiple instances of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] executable program on the same computer. The node following the computer name in a SQL Server provider path identifies the instance; for example:  
  
```  
SQLSERVER:\SQL\MyComputer\MyInstance  
```  
  
 Each computer can have one default instance of the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)]. You do not specify a name for the default instance when you install it. If you specify only a computer name in a connection string, you are connected to the default instance on that computer. All other instances on the computer must be named instances. You specify the instance name during setup, and connection strings must specify both the computer name and the instance name.  
  
###  <a name="LimitationsRestrictions"></a> Limitations and Restrictions  
 You cannot use a period (.) to specify the local computer in PowerShell scripts. The period is not supported because the period is interpreted as a command by PowerShell.  
  
 The parenthesis characters in (local) are normally treated as commands by Windows PowerShell. You must either encode them or escape them for use in a path, or enclose the path in double-quotation marks. For more information, see Encode and Decode SQL Server Identifiers.  
  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provider requires that you always specify an instance name. For default instances, you must specify an instance name of DEFAULT.  
  
##  <a name="Examples"></a> Examples; Computer and Instance Names  
 This example uses localhost and DEFAULT to specify the default instance on the local computer:  
  
```  
Set-Location SQLSERVER:\SQL\localhost\DEFAULT   
```  
  
 The parenthesis characters in (local) are normally treated as commands by Windows PowerShell. You must either:  
  
-   Enclose the path string in quotes:  
  
    ```  
    Set-Location "SQLSERVER:\SQL\(local)\DEFAULT"  
    ```  
  
-   Escape the parenthesis using the back tick character (`):  
  
    ```  
    Set-Location SQLSERVER:\SQL\`(local`)\DEFAULT  
    ```  
  
-   Encode the parenthesis using their hexadecimal representation:  
  
    ```  
    Set-Location SQLSERVER:\SQL\%28local%29\DEFAULT  
    ```  
  
## See Also  
 [SQL Server Identifiers in PowerShell](../../relational-databases/scripting/sql-server-identifiers-in-powershell.md)   
 [SQL Server PowerShell Provider](../../relational-databases/scripting/sql-server-powershell-provider.md)   
 [SQL Server PowerShell](../../relational-databases/scripting/sql-server-powershell.md)  
  
  