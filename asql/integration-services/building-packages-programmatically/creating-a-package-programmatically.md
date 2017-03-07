---
title: "Creating a Package Programmatically | Microsoft Docs"
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
dev_langs: 
  - "VB"
  - "CSharp"
helpviewer_keywords: 
  - "SSIS packages, creating"
  - "Integration Services packages, creating"
  - "packages [Integration Services], creating"
  - "SQL Server Integration Services packages, creating"
ms.assetid: e44bcc70-32d3-43e8-a84b-29aef819d5d3
caps.latest.revision: 51
ms.author: "douglasl"
manager: "jhubbard"
---
# Creating a Package Programmatically
  The <xref:Microsoft.SqlServer.Dts.Runtime.Package> object is the top-level container for all other objects in an [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] project solution. As the top-level container, the package is the first object created, and subsequent objects are added to it, and then executed within the context of the package. The package itself does not move or transform data. The package relies on the tasks it contains to perform the work. Tasks perform most of the work performed by a package, and define the functionality of a package. A package is created and executed with just three lines of code, but various tasks and <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager> objects are added to give additional functionality to your package. This section discusses how to programmatically create a package. It does not provide information about how to create the tasks or the <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager>. These are covered in later sections.  
  
## Example  
 To write code using the Visual Studio IDE, a reference to Microsoft.SqlServer.ManagedDTS.DLL is required in order to create a `using` statement (`Imports` in Visual Basic .NET) to the Microsoft.SqlServer.Dts.Runtime. The following code sample demonstrates creating an empty package.  
  
```c#  
using System;  
using Microsoft.SqlServer.Dts.Runtime;  
  
namespace Microsoft.SqlServer.Dts.Samples  
{  
  class Program  
  {  
    static void Main(string[] args)  
    {  
      Package package;  
      package = new Package();  
    }  
  }  
}  
```  
  
```vb#  
Imports Microsoft.SqlServer.Dts.Runtime  
  
Module Module1  
  
  Sub Main()  
  
    Dim package As Package  
    package = New Package  
  
  End Sub  
  
End Module  
```  
  
 To compile and run the sample, press F5 in Visual Studio. To build the code using the C# compiler, **csc.exe**, at the command prompt to compile, use the following command and file references, replacing the *\<filename>* with the name of the .cs or .vb file, and giving it an *\<outputfilename>* of your choice.  
  
 **csc /target:library /out: \<outputfilename>.dll \<filename>.cs /r:Microsoft.SqlServer.Managed DTS.dll" /r:System.dll**  
  
 To build the code using the Visual Basic .NET compiler, **vbc.exe**, at the command prompt to compile, use the following command and file references.  
  
 **vbc /target:library /out: \<outputfilename>.dll \<filename>.vb /r:Microsoft.SqlServer.Managed DTS.dll" /r:System.dll**  
  
 You can also create a package by loading an existing package that was saved on disk, in the file system, or to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The difference is that the <xref:Microsoft.SqlServer.Dts.Runtime.Application> object is first created, and then the package object is filled by one of the Application's overloaded methods: **LoadPackage** for flat files, **LoadFromSQLServer** for packages saved to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], or <xref:Microsoft.SqlServer.Dts.Runtime.Application.LoadFromDtsServer%2A> for packages saved to the file system. The following example loads an existing package from disk, and then views several properties on the package.  
  
```c#  
using System;  
using Microsoft.SqlServer.Dts.Runtime;  
  
namespace Microsoft.SqlServer.Dts.Samples  
{  
  class ApplicationTests  
  {  
    static void Main(string[] args)  
    {  
      // The variable pkg points to the location of the  
      // ExecuteProcess package sample that was installed with  
      // the SSIS samples.  
      string pkg = @"C:\Program Files\Microsoft SQL Server\100\Samples\Integration Services" +  
        @"\Package Samples\ExecuteProcess Sample\ExecuteProcess\UsingExecuteProcess.dtsx";  
  
      Application app = new Application();  
      Package p = app.LoadPackage(pkg, null);  
  
      // Now that the package is loaded, we can query on  
      // its properties.  
      int n = p.Configurations.Count;  
      DtsProperty p2 = p.Properties["VersionGUID"];  
      DTSProtectionLevel pl = p.ProtectionLevel;  
  
      Console.WriteLine("Number of configurations = " + n.ToString());  
      Console.WriteLine("VersionGUID = " + (string)p2.GetValue(p));  
      Console.WriteLine("ProtectionLevel = " + pl.ToString());  
      Console.Read();  
    }  
  }  
}  
```  
  
```vb#  
Imports Microsoft.SqlServer.Dts.Runtime  
  
Module ApplicationTests  
  
  Sub Main()  
  
    ' The variable pkg points to the location of the  
    ' ExecuteProcess package sample that was installed with  
    ' the SSIS samples.  
    Dim pkg As String = _  
      "C:\Program Files\Microsoft SQL Server\100\Samples\Integration Services" & _  
      "\Package Samples\ExecuteProcess Sample\ExecuteProcess\UsingExecuteProcess.dtsx"  
  
    Dim app As Application = New Application()  
    Dim p As Package = app.LoadPackage(pkg, Nothing)  
  
    ' Now that the package is loaded, we can query on  
    ' its properties.  
    Dim n As Integer = p.Configurations.Count  
    Dim p2 As DtsProperty = p.Properties("VersionGUID")  
    Dim pl As DTSProtectionLevel = p.ProtectionLevel  
  
    Console.WriteLine("Number of configurations = " & n.ToString())  
    Console.WriteLine("VersionGUID = " & CType(p2.GetValue(p), String))  
    Console.WriteLine("ProtectionLevel = " & pl.ToString())  
    Console.Read()  
  
  End Sub  
  
End Module  
```  
  
 **Sample Output:**  
  
 `Number of configurations = 2`  
  
 `VersionGUID = {09016682-89B8-4406-AAC9-AF1E527FF50F}`  
  
 `ProtectionLevel = DontSaveSensitive`  
  
## External Resources  
  
-   Blog entry, [API Sample - OleDB source and OleDB destination](http://go.microsoft.com/fwlink/?LinkId=220824), on blogs.msdn.com.  
  
-   Blog entry, [EzAPI – Updated for SQL Server 2012](http://go.microsoft.com/fwlink/?LinkId=243223), on blogs.msdn.com.  
  
||  
|-|  
|![Integration Services icon (small)](../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Adding Tasks Programmatically](../../integration-services/building-packages-programmatically/adding-tasks-programmatically.md)  
  
  