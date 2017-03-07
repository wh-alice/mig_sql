---
title: "Build Analysis Services Projects (SSDT) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "projects [Analysis Services], building"
  - "Business Intelligence Development Studio, project building [Analysis Services]"
ms.assetid: caac03cb-b2b4-4652-8913-3dd39c4b0127
caps.latest.revision: 34
ms.author: "owend"
manager: "erikre"
---
# Build Analysis Services Projects (SSDT)
  In [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], you build an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project much like you build any programming project in Visual Studio. When you build the project, a set of XML files are created in the output directory. These XML files use Analysis Services Scripting Language (ASSL), which is the XML dialect the client applications including [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] and [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] use to communicate with an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] instance to create or modify [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] objects. These XML files are used to deploy [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] object definitions in an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project to a specified [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] instance.  
  
## Building a Project  
 When you build an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project, [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] will build a complete set of XML files in the output folder containing all of the necessary ASSL commands needed to build all of the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database objects in the project. If the project was previously built and incremental deployment specified for the active configuration, [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] will also build an XML file containing the ASSL commands to perform an incremental update to the deployed objects. This XML file is written to the ..\obj\\<active configuration\> folder for the project. Incremental builds can save time when deploying and processing a very large project or database.  
  
> [!NOTE]  
>  You can use the Rebuild All command to ignore the incremental deployment setting.  
  
 Building an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project validates the object definitions in the project. The validation includes any referenced assemblies. Build errors appear in the Task List window, along with the Analysis Management Objects (AMO) error text. You can click an error to open the designer that is required to fix the error.  
  
 Successful validation does not guarantee that objects can be created on the destination server during deployment or processed successfully after deployment. The following issues can prevent successful deployment or processing after deployment:  
  
-   Security checks for the server are not performed, so locks can prevent deployment.  
  
-   Physical locations are not validated on the server.  
  
-   Details of data source views are not checked against the actual data source on the destination server.  
  
 If validation is successful, [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] generates the XML files. After the build, the output folder will contain the files described in the following table.  
  
|Files (in bin folder)|Description|  
|-----------------------------|-----------------|  
|*Projectname*.asdatabase|Contains the ASSL elements that define metadata for the objects in the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project in a deployment script file. This file is used by the deployment engine to deploy the objects to an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database.|  
|*Projectname*.configsettings|Contains configuration settings using during deployment that you can modify directly or in the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Deployment Wizard (for example, the connection string for the data sources).|  
|*Projectname*.deploymenttargets|Contains the destination settings used during deployment that you can modify directly or in the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Deployment Wizard (for example, the server and database names)|  
|*Projectname*.deploymentoptions|Contain various option settings used during deployment that you can modify directly or in the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Deployment Wizard (for example, storage locations)|  
|*Assemblyname*/*dllname.*dll|Separate folders for each referenced assembly; each folder contains the DLL for the assembly, any referenced assembly, and any associated .pdb files for output debug information.|  
  
|Files (in obj folder)|Description|  
|-----------------------------|-----------------|  
|\<Configuration Name>\LastBuilt.xml|Contains the time stamp and hash code that identifies the last time the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project was built.|  
  
 These XML files do not contain \<Create> and \<Alter> tags, which are constructed during deployment.  
  
 Referenced assemblies (excluding standard system and [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] assemblies) are also copied to the output directory. When references are to other projects in a solution, those projects are built first, using the appropriate project configuration and build dependencies established by the project references, and then are copied to the project output folder.  
  
## See Also  
 [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md)   
 [Deploy Analysis Services Projects &#40;SSDT&#41;](../../analysis-services/multidimensional-models/deploy-analysis-services-projects-ssdt.md)  
  
  