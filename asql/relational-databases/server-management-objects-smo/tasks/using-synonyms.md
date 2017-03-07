---
title: "Using Synonyms | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "synonyms [SMO]"
ms.assetid: db0a9022-9549-43e5-b6b3-deb236f05fb8
caps.latest.revision: 49
ms.author: "jhubbard"
manager: "jhubbard"
---
# Using Synonyms
  A synonym is an alternative name for a schema-scoped object. In SMO, synonyms are represented by the <xref:Microsoft.SqlServer.Management.Smo.Synonym> object. The <xref:Microsoft.SqlServer.Management.Smo.Synonym> object is a child of the <xref:Microsoft.SqlServer.Management.Smo.Database> object. This means that synonyms are valid only within the scope of the database in which they are defined. However, the synonym can refer to objects on another database, or on a remote instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 The object that is given an alternative name is known as the base object. The name property of the <xref:Microsoft.SqlServer.Management.Smo.Synonym> object is the alternative name given to the base object.  
  
## Example  
 For the following code example, you will have to select the programming environment, programming template and the programming language to create your application. For more information, see [Create a Visual Basic SMO Project in Visual Studio .NET](../Topic/Create%20a%20Visual%20Basic%20SMO%20Project%20in%20Visual%20Studio%20.NET.md) and [Create a Visual C&#35; SMO Project in Visual Studio .NET](../Topic/Create%20a%20Visual%20C%23%20SMO%20Project%20in%20Visual%20Studio%20.NET.md).  
  
## Creating a Synonym in Visual Basic  
 The code example shows how to create a synonym or an alternate name for a schema scoped object. Client applications can use a single reference for the base object via a synonym instead of using a multiple part name to reference the base object.  
  
```VBNET
'Connect to the local, default instance of SQL Server.
Dim srv As Server
srv = New Server()
'Reference the AdventureWorks2012 2008R2 database.
Dim db As Database
db = srv.Databases("AdventureWorks2012")
'Define a Synonym object variable by supplying the parent database, name, and schema arguments in the constructor.
'The name is also a synonym of the name of the base object.
Dim syn As Synonym
syn = New Synonym(db, "Shop", "Sales")
'Specify the base object, which is the object on which the synonym is based.
syn.BaseDatabase = "AdventureWorks2012"
syn.BaseSchema = "Sales"
syn.BaseObject = "Store"
syn.BaseServer = srv.Name
'Create the synonym on the instance of SQL Server.
syn.Create()
```
  
## Creating a Synonym in Visual C#  
 The code example shows how to create a synonym or an alternate name for a schema scoped object. Client applications can use a single reference for the base object via a synonym instead of using a multiple part name to reference the base object.  
  
```c#  
{  
            //Connect to the local, default instance of SQL Server.   
            Server srv = new Server();  
  
            //Reference the AdventureWorks2012 database.   
            Database db = srv.Databases["AdventureWorks2012"];  
  
            //Define a Synonym object variable by supplying the   
            //parent database, name, and schema arguments in the constructor.   
            //The name is also a synonym of the name of the base object.   
            Synonym syn = new Synonym(db, "Shop", "Sales");  
  
            //Specify the base object, which is the object on which   
            //the synonym is based.   
            syn.BaseDatabase = "AdventureWorks2012";  
            syn.BaseSchema = "Sales";  
            syn.BaseObject = "Store";  
            syn.BaseServer = srv.Name;  
  
            //Create the synonym on the instance of SQL Server.   
            syn.Create();  
        }  
```  
  
## Creating a Synonym in PowerShell  
 The code example shows how to create a synonym or an alternate name for a schema scoped object. Client applications can use a single reference for the base object via a synonym instead of using a multiple part name to reference the base object.  
  
```powershell  
#Get a server object which corresponds to the default instance  
$srv = New-Object -TypeName Microsoft.SqlServer.Management.SMO.Server  
  
#And the database object corresponding to Adventureworks  
$db = $srv.Databases["AdventureWorks2012"]  
  
$syn = New-Object -TypeName Microsoft.SqlServer.Management.SMO.Synonym `  
-argumentlist $db, "Shop", "Sales"  
  
#Specify the base object, which is the object on which the synonym is based.  
$syn.BaseDatabase = "AdventureWorks2012"  
$syn.BaseSchema = "Sales"  
$syn.BaseObject = "Store"  
$syn.BaseServer = $srv.Name  
  
#Create the synonym on the instance of SQL Server.  
$syn.Create()  
```  
  
## See Also  
 [CREATE SYNONYM &#40;Transact-SQL&#41;](../../../t-sql/statements/create-synonym-transact-sql.md)  
  
  