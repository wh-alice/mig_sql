---
title: "Using Linked Servers in SMO | Microsoft Docs"
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
  - "linked servers [SQL Server], SMO"
ms.assetid: 0ea8837b-2596-4df1-b065-3bb717c9f22c
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# Using Linked Servers in SMO
  A linked server represents an OLE DB data source on a remote server. Remote OLE DB data sources are linked to the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] by using the <xref:Microsoft.SqlServer.Management.Smo.LinkedServer> object.  
  
 Remote database servers can be linked to the current instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] by using an OLE DB Provider. In SMO, linked servers are represented by the <xref:Microsoft.SqlServer.Management.Smo.LinkedServer> object. The <xref:Microsoft.SqlServer.Management.Smo.LinkedServer.LinkedServerLogins%2A> property references a collection of <xref:Microsoft.SqlServer.Management.Smo.LinkedServerLogin> objects. These store the logon credentials that are required to establish a connection with the linked server.  
  
## OLE-DB Providers  
 In SMO, installed OLE-DB providers are represented by a collection of <xref:Microsoft.SqlServer.Management.Smo.OleDbProviderSettings> objects.  
  
## Example  
 For the following code example, you will have to select the programming environment, programming template and the programming language to create your application. For more information, see [Create a Visual Basic SMO Project in Visual Studio .NET](../../../relational-databases/server-management-objects-smo/how-to-create-a-visual-basic-smo-project-in-visual-studio-.net.md) and [Create a Visual C&#35; SMO Project in Visual Studio .NET](../../../relational-databases/server-management-objects-smo/how-to-create-a-visual-csharp-smo-project-in-visual-studio-.net.md).  
  
## Creating a link to an OLE-DB Provider Server in Visual Basic  
 The code example shows how to create a link to a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] OLE DB, heterogeneous data source by using the <xref:Microsoft.SqlServer.Management.Smo.LinkedServer> object. By specifying [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] as the product name, data is accessed on the linked server by using the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Client OLE DB Provider, which is the official OLE DB provider for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
```VBNET
'Connect to the local, default instance of SQL Server.
Dim srv As Server
srv = New Server
'Create a linked server.
Dim lsrv As LinkedServer
lsrv = New LinkedServer(srv, "OLEDBSRV")
'When the product name is SQL Server the remaining properties are not required to be set.
lsrv.ProductName = "SQL Server"
lsrv.Create()
```
  
## Creating a link to an OLE-DB Provider Server in Visual C#  
 The code example shows how to create a link to a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] OLE DB, heterogeneous data source by using the <xref:Microsoft.SqlServer.Management.Smo.LinkedServer> object. By specifying [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] as the product name, data is accessed on the linked server by using the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Client OLE DB Provider, which is the official OLE DB provider for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
```c#  
//Connect to the local, default instance of SQL Server.   
{   
   Server srv = new Server();   
   //Create a linked server.   
   LinkedServer lsrv = default(LinkedServer);   
   lsrv = new LinkedServer(srv, "OLEDBSRV");   
   //When the product name is SQL Server the remaining properties are   
   //not required to be set.   
   lsrv.ProductName = "SQL Server";   
   lsrv.Create();   
}   
```  
  
## Creating a link to an OLE-DB Provider Server in PowerShell  
 The code example shows how to create a link to a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] OLE DB, heterogeneous data source by using the <xref:Microsoft.SqlServer.Management.Smo.LinkedServer> object. By specifying [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] as the product name, data is accessed on the linked server by using the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Client OLE DB Provider, which is the official OLE DB provider for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
```powershell  
#Get a server object which corresponds to the default instance  
$svr = New-Object -TypeName Microsoft.SqlServer.Management.SMO.Server  
  
#Create a linked server object which corresponds to an OLEDB type of SQL server product  
$lsvr = New-Object -TypeName Microsoft.SqlServer.Management.SMO.LinkedServer -argumentlist $svr,"OLEDBSRV"  
  
#When the product name is SQL Server the remaining properties are not required to be set.   
$lsvr.ProductName = "SQL Server"  
  
#Create the Database Object  
$lsvr.Create()   
```  
  
  