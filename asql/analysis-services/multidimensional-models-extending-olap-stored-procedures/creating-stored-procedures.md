---
title: "Creating Stored Procedures | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "registering assemblies"
  - "database assemblies [Analysis Services]"
  - "server assemblies [Analysis Services]"
  - "stored procedures [Analysis Services], creating"
  - "assemblies [Analysis Services]"
ms.assetid: a12ff02f-6d0b-4488-9846-3609fc0d0554
caps.latest.revision: 33
ms.author: "owend"
manager: "erikre"
---
# Creating Stored Procedures
  All stored procedures must be associated with a common language runtime (CLR) or Component Object Model (COM) class in order to be used. The class must be installed on the server — usually in the form of a [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] ActiveX® dynamic link library (DLL) — and registered as an assembly on the server or in an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database.  
  
 Stored procedures are registered on a server or on a database. Server stored procedures can be called from any query context. Database stored procedures can only be accessed if the database context is the database under which the stored procedure is defined. If functions in one assembly call functions in a different assembly, you must register both assemblies in the same context (server or database). For a server or a deployed [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database on a server, you can use [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] to register an assembly. For an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project, you can use [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Designer to register an assembly in the project.  
  
> [!IMPORTANT]  
>  COM assemblies might pose a security risk. Due to this risk and other considerations, COM assemblies were deprecated in [!INCLUDE[ssASversion10](../../a9notintoc/includes/ssasversion10-md.md)]. COM assemblies might not be supported in future releases.  
  
## Registering a Server Assembly  
 In Object Explorer in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], server assemblies are listed in the Assemblies folder under an instance of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)]. Server assemblies can contain both .NET (CLR) assemblies and COM libraries.  
  
### To create a server assembly  
  
1.  Expand the instance of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] in Object Explorer, right-click the **Assemblies** folder, and then click **New Assembly**. This displays the **Register Server Assembly** dialog box.  
  
2.  For **Type** specify the type of assembly:  
  
    -   For a managed code (CLR) DLL, specify .NET Assembly.  
  
    -   For a native code (COM) DLL, specify COM DLL.  
  
3.  For **File name**, specify the DLL containing the stored procedures.  
  
4.  For **Assembly name**, specify a name for the assembly.  
  
5.  If this is a debug build of the library that you are going to use to debug stored procedures, select the **Include debug information** check box. For more information about debugging stored procedures, see [Debugging Stored Procedures](../../analysis-services/multidimensional-models-extending-olap-stored-procedures/debugging-stored-procedures.md).  
  
6.  You can click **OK** to register the assembly immediately, or on the dialog box toolbar, you can click a command on the **Script** menu to script the registration action to a query window, a file, or the Clipboard.  
  
 After you register a server assembly, you can configure it by right-clicking the assembly in Object Explorer and then clicking **Properties**.  
  
## Registering a Database Assembly on the Server  
 In Object Explorer in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], database assemblies are listed in the Assemblies folder under an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database. Database assemblies can contain both .NET (CLR) assemblies and COM libraries.  
  
### To create a database assembly on a server  
  
1.  Expand the instance the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database in Object Explorer, right-click the **Assemblies** folder, and then click **New Assembly**. This displays the **Register Database Assembly** dialog box.  
  
2.  For **Type** specify the type of assembly:  
  
    -   For a managed code (CLR) DLL, specify .NET Assembly.  
  
    -   For a native code (COM) DLL), specify COM DLL.  
  
3.  For **File name**, specify the DLL containing the stored procedures.  
  
4.  For **Assembly name**, specify a name for the assembly.  
  
5.  If this is a debug build of the library that you are going to use to debug stored procedures, select the **Include debug information** check box. For more information about debugging stored procedures, see [Debugging Stored Procedures](../../analysis-services/multidimensional-models-extending-olap-stored-procedures/debugging-stored-procedures.md).  
  
6.  You can click **OK** to register the assembly immediately, or on the dialog box toolbar, you can click a command on the **Script** menu to script the registration action to a query window, a file, or the Clipboard.  
  
 After you register a database assembly, you can configure it by right-clicking the assembly in Object Explorer and then clicking **Properties**.  
  
## Registering a Database Assembly in a Project  
 In Solution Explorer in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], database assemblies are listed in the Assemblies folder under an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project. Database assemblies can contain both .NET (CLR) assemblies and COM libraries.  
  
### To create a database assembly in an Analysis Service project  
  
1.  Expand the instance the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database in Object Explorer, right-click the **Assemblies** folder, and then click **New Assembly Reference**. This displays the **Add Reference** dialog box. The **.NET** tab of the **Add Reference** dialog box lists existing .NET (CLR) assemblies, while the **Projects** tab lists projects.  
  
2.  You can click an existing component or project and then click **Add** to add it to the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project. To add a reference to a COM DLL, click the **Browse** tab to find the file. The **Selected projects and components** list shows the name, type, version, and location for each component that you are adding to the project.  
  
3.  When you are finished selecting components to add, click **OK** to add them to the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project.  
  
## Script Format For an Assembly  
 Registering a .NET assembly is fairly simple. A .NET assembly is added to a database in binary format using the following format:  
  
```  
<Create>  
   <ObjectDefinition>  
      <Assembly>  
         <Files>  
            <File>  
               <Name>filename</Name>  
               <Type>filetype</Type>  
               <Data>  
                  <Block>binarydatablock</Block>  
                  <Block>binarydatablock</Block>  
                  ...  
               </Data>  
            </File>  
         </Files>  
         <PermissionSet>PermissionSet</PermissionSet>  
      </Assembly>  
   <ObjectDefinition>  
</Create>  
```  
  
## See Also  
 [Multidimensional Model Assemblies Management](../../analysis-services/multidimensional-models/multidimensional-model-assemblies-management.md)   
 [Defining Stored Procedures](../../analysis-services/multidimensional-models-extending-olap-stored-procedures/defining-stored-procedures.md)  
  
  