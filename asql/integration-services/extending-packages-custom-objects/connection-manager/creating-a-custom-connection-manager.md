---
title: "Creating a Custom Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "custom connection managers [Integration Services], creating"
ms.assetid: e83f8e02-ace4-42e0-b979-2f6be1460985
caps.latest.revision: 25
ms.author: "douglasl"
manager: "jhubbard"
---
# Creating a Custom Connection Manager
  The steps that you must follow to create a custom connection manager are similar to the steps for creating any other custom object for [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)]:  
  
-   Create a new class that inherits from the base class. For a connection manager, the base class is <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManagerBase>.  
  
-   Apply the attribute that identifies the type of object to the class. For a connection manager, the attribute is <xref:Microsoft.SqlServer.Dts.Runtime.DtsConnectionAttribute>.  
  
-   Override the implementation of the methods and properties of the base class. For a connection manager, these include the <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManagerBase.ConnectionString%2A> property and the <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManagerBase.AcquireConnection%2A> and <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManagerBase.ReleaseConnection%2A> methods.  
  
-   Optionally, develop a custom user interface. For a connection manager, this requires a class that implements the <xref:Microsoft.SqlServer.Dts.Runtime.Design.IDtsConnectionManagerUI> interface.  
  
> [!NOTE]  
>  Most of the tasks, sources, and destinations that have been built into [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] work only with specific types of built-in connection managers. Therefore, these samples cannot be tested with the built-in tasks and components.  
  
## Getting Started with a Custom Connection Manager  
  
### Creating Projects and Classes  
 Because all managed connection managers derive from the <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManagerBase> base class, the first step when you create a custom connection manager is to create a class library project in your preferred managed programming language and create a class that inherits from the base class. In this derived class, you will override the methods and properties of the base class to implement your custom functionality.  
  
 In the same solution, create a second class library project for the custom user interface. A separate assembly for the user interface is recommended for ease of deployment because it lets you update and redeploy the connection manager or its user interface independently.  
  
 Configure both projects to sign the assemblies that will be generated at build time by using a strong name key file.  
  
### Applying the DtsConnection Attribute  
 Apply the <xref:Microsoft.SqlServer.Dts.Runtime.DtsConnectionAttribute> attribute to the class that you have created to identify it as a connection manager. This attribute provides design-time information such as the name, description, and connection type of the connection manager. The <xref:Microsoft.SqlServer.Dts.Runtime.DtsConnectionAttribute.ConnectionType%2A> and **Description** properties correspond to the **Type** and **Description** columns displayed in the **Add SSIS Connection Manager** dialog box, which is displayed when configuring connections for a package in [!INCLUDE[ssBIDevStudioFull](../../../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
 Use the <xref:Microsoft.SqlServer.Dts.Runtime.DtsConnectionAttribute.UITypeName%2A> property to link the connection manager to its custom user interface. To obtain the public key token that is required for this property, you an use **sn.exe -t** to display the public key token from the key pair (.snk) file that you intend to use to sign the user interface assembly.  
  
```vb#  
<DtsConnection(ConnectionType:="SQLVB", _  
  DisplayName:="SqlConnectionManager (VB)", _  
  Description:="Connection manager for Sql Server", _  
  UITypeName:="SqlConnMgrUIVB.SqlConnMgrUIVB,SqlConnMgrUIVB,Version=1.0.0.0,Culture=neutral,PublicKeyToken=<insert public key token here>")> _  
Public Class SqlConnMgrVB  
  Inherits ConnectionManagerBase  
  . . .  
End Class  
```  
  
```c#  
[DtsConnection(ConnectionType = "SQLCS",  
  DisplayName = "SqlConnectionManager (CS)",  
  Description = "Connection manager for Sql Server",  
  UITypeName = "SqlConnMgrUICS.SqlConnMgrUICS,SqlConnMgrUICS,Version=1.0.0.0,Culture=neutral,PublicKeyToken=<insert public key token here>")]  
public class SqlConnMgrCS :  
ConnectionManagerBase  
{  
  . . .  
}  
```  
  
## Building, Deploying, and Debugging a Custom Connection Manager  
 The steps for building, deploying, and debugging a custom connection manager in [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] are similar to the steps for other types of custom objects. For more information, see [Building, Deploying, and Debugging Custom Objects](../../../integration-services/extending-packages-custom-objects/building-deploying-and-debugging-custom-objects.md).  
  
||  
|-|  
|![Integration Services icon (small)](../../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Coding a Custom Connection Manager](../../../integration-services/extending-packages-custom-objects/connection-manager/coding-a-custom-connection-manager.md)   
 [Developing a User Interface for a Custom Connection Manager](../../../integration-services/extending-packages-custom-objects/connection-manager/developing-a-user-interface-for-a-custom-connection-manager.md)  
  
  