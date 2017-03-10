---
title: "Deploy Projects to Integration Services Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6e9402f4-4d50-49ff-820d-65a77829c4a5
caps.latest.revision: 22
ms.author: "douglasl"
manager: "jhubbard"
---
# Deploy Projects to Integration Services Server
  In the current release of [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)], you can deploy your projects to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server. The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server enables you to manage packages, run packages, and configure runtime values for packages by using environments.  
  
 For more information about environments, see [Create and Map a Server Environment](../../integration-services/packages/create-and-map-a-server-environment.md).  
  
> [!NOTE]  
>  As in earlier versions of [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)], in the current release you can also deploy your packages to an instance of SQL Server and use [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service to run and manage the packages. You use the package deployment model. For more information, see [Legacy Package Deployment &#40;SSIS&#41;](../../integration-services/packages/legacy-package-deployment-ssis.md).  
  
 To deploy a project to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server, complete the following tasks:  
  
1.  Create an SSISDB catalog, if you haven’t already. For more information, see [Create the SSIS Catalog](../../integration-services/service/create-the-ssis-catalog.md).  
  
2.  Convert the project to the project deployment model by running the **Integration Services Project Conversion Wizard** . For more information, see the instructions below: [To convert a project to the project deployment model](#convert)  
  
    -   If you created the project in [!INCLUDE[ssISCurrent](../../analysis-services/data-mining/includes/ssiscurrent-md.md)], by default the project uses the project deployment model.  
  
    -   If you created the project in an earlier release of [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)], after you open the project file in [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)], convert the project to the project deployment model.  
  
        > [!NOTE]  
        >  If the project contains one or more datasources, the datasources are removed when the project conversion is completed. To create a connection to a data source that the packages in the project can share, add a connection manager at the project level. For more information, see [Add, Delete, or Share a Connection Manager in a Package](http://msdn.microsoft.com/en-US/library/ms140237(SQL.130).aspx).  
  
         Depending on whether you run the **Integration Services Project Conversion Wizard** from [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] or from [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], the wizard performs different conversion tasks.  
  
        -   If you run the wizard from [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)], the packages contained in the project are converted from [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] 2005, 2008, or 2008 R2 to the format that is used by the current version of [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]. The original project (.dtproj) and package (.dtsx) files are upgraded.  
  
        -   If you run the wizard from [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], the wizard generates a project deployment file (.ispac) from the packages and configurations contained in the project. The original package (.dtsx) files are not upgraded.  
  
             You can select an existing file or create a new file, in the **Selection Destination** page of the wizard.  
  
             To upgrade package files when a project is converted, run the **Integration Services Project Conversion Wizard** from [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)]. To upgrade package files separately from a project conversion, run the **Integration Services Project Conversion Wizard** from [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] and then run the **SSIS Package Upgrade Wizard**. If you upgrade the package files separately, ensure that you save the changes. Otherwise, when you convert the project to the project deployment model, any unsaved changes to the package are not converted.  
  
     For more information on package upgrade, see [Upgrade Integration Services Packages](../../integration-services/install/windows/upgrade-integration-services-packages.md) and [Upgrade Integration Services Packages Using the SSIS Package Upgrade Wizard](../../integration-services/install/windows/upgrade-integration-services-packages-using-the-ssis-package-upgrade-wizard.md).  
  
3.  Deploy the project to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server. For more information, see the instructions below: [To deploy a project to the Integration Services Server](#deploy).  
  
4.  (Optional) Create an environment for the deployed project. For more information, see [Create and Map a Server Environment](../../integration-services/packages/create-and-map-a-server-environment.md).  
  
##  <a name="convert"></a> To convert a project to the project deployment model  
  
1.  Open the project in [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)], and then in Solution Explorer, right-click the project and click **Convert to Project Deployment Model**.  
  
     -or-  
  
     From Object Explorer in [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], right-click the **Projects** node and select **Import Packages**.  
  
2.  Complete the wizard. For more information, see [Integration Services Project Conversion Wizard](../../integration-services/packages/integration-services-project-conversion-wizard.md).  
  
##  <a name="deploy"></a> To deploy a project to the Integration Services Server  
  
1.  Open the project in [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)], and then From the **Project** menu, select **Deploy** to launch the **Integration Services Deployment Wizard**.  
  
     -or-  
  
     In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], expand the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] > **SSISDB** node in Object Explorer, and locate the Projects folder for the project you want to deploy. Right-click the **Projects** folder, and then click **Deploy Project**.  
  
     -or-  
  
     From the command prompt, run **isdeploymentwizard.exe** from **%ProgramFiles%\Microsoft SQL Server\110\DTS\Binn**. On 64-bit computers, there is also a 32-bit version of the tool in **%ProgramFiles(x86)%\Microsoft SQL Server\100\DTS\Binn**.  
  
2.  On the **Select Source** page, click **Project deployment file** to select the deployment file for the project.  
  
     -OR-  
  
     Click **Integration Services catalog** to select a project that has already been deployed to the SSISDB catalog.  
  
3.  Complete the wizard. For more information, see [Integration Services Deployment Wizard](../../integration-services/packages/integration-services-deployment-wizard.md).  
  
  