---
title: "Step 2: Running the Package Installation Wizard | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: f91fbb89-4626-4c47-b96d-56052dc45861
caps.latest.revision: 20
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 3-2 - Running the Package Installation Wizard
In this task, you will run the Package Installation Wizard to deploy the packages from the Deployment Tutorial project to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Only packages can be installed in the sysssispackages table in the msdb [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database, the supporting files that the deployment bundle includes will be deployed to the file system.  
  
The Package Installation Wizard will guide you through the steps to install and configure the packages. You will install the packages to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on the destination computer (the computer to which you copied the deployment bundle. You will also create a folder, C:\DeploymentTutorialInstall, in which the wizard will install the non-package files.  
  
In an earlier lesson, you modified the packages in the tutorial to use configurations. Using the Package Installation Wizard, you will edit these configurations to enable packages to run successfully in the installed-to environment.  
  
### To install the packages  
  
1.  On the destination computer, locate the deployment bundle.  
  
    If you used the default value—bin\Deployment—as the location of the deployment utility, the deployment bundle is the Deployment folder in the Deployment Tutorial project.  
  
2.  In the Deployment folder, double-click the manifest file, Deployment Tutorial.SSISDeploymentManifest.  
  
3.  On the Welcome page of the Package Installation Wizard, click **Next**.  
  
4.  On the Deploy SSIS Packages page, select the **SQL Server deployment** option, select the **Validate packages after installation** check box, and then click **Next**.  
  
5.  On the Specify Target SQL Server page, specify **(local**), in the **Server name** box.  
  
6.  If the instance of SQL Server supports Windows Authentication, select **Use Windows Authentication**; otherwise, select **Use SQL Server Authentication** and provide a user name and a password.  
  
7.  Verify that the **Rely on server storage for encryption** check box is cleared.  
  
8.  Click **Next.**  
  
9. On the Select Installation Folder page, click **Browse.**  
  
10. In the **Browse For Folder** dialog box, expand **My Computer** and then click **Local Disk (C:)**.  
  
11. Click **Make New Folder** and replace the default name of the new folder, **New Folder**, with **DeploymentTutorialInstall**.  
  
    > [!IMPORTANT]  
    > This name is referenced in the value of the environment variables that configurations use. The name of the folder and the reference must match or the package cannot run.  
  
12. Click **OK**.  
  
13. On the Select Installation Folder page, verify that the Folder box contains **C:\DeploymentTutorialInstall** and then click **Next**.  
  
14. On the Confirm Installation page, click **Next**.  
  
    The wizard installs the packages. After installation is completed, the Configure Packages page opens.  
  
15. On the Configure Packages page, verify that the **Configuration file** box lists datatransferconfig.dtsconfig and loadxmldataconfig.dtsconfig.  
  
16. In the **Configuration file** list, click **datatransferconfig.dtsconfig**, expand Property in the **Path** column of the **Configurations** box, and update the **Value** column with the following values:  
  
    |Property|Value|Updated Value|  
    |------------|---------|-----------------|  
    |\Package.Connections[Deployment Tutorial Log].Properties[ConnectionString]|C:\Program Files\Microsoft SQL Server\100\Samples\Integration Services\Tutorial\Deploying Packages\Completed Packages\Deployment Tutorial Log|C:\DeploymentTutorialInstall\Deployment Tutorial Log|  
    |\Package.Connections[NewCustomers].Properties[ConnectionString]|C:\Program Files\Microsoft SQL Server\100\Samples\Integration Services\Tutorial\Deploying Packages\Sample Data\NewCustomers.txt|C:\DeploymentTutorialInstall\NewCustomers.txt|  
  
17. In the **Configuration file** list, click loadxmldataconfig.dtsconfig, expand Property in the **Path** column of the **Configurations** box, and update the **Value** column with the following values:  
  
    |Property|Value|Updated Value|  
    |------------|---------|-----------------|  
    |\Package.LoadXMLData.Properties[[XML Source].[XMLData]]|C:\Program Files\Microsoft SQL Server\100\Samples\Integration Services\Tutorial\Deploying Packages\Sample Data\orders.xml|C:\DeploymentTutorialInstall\orders.xml|  
    |\Package.LoadXMLData.Properties[[XML Source].[XMLSchemaDefinition]]|C:\Program Files\Microsoft SQL Server\100\Samples\Integration Services\Tutorial\Deploying Packages\Sample Data\orders.xsd|C:\DeploymentTutorialInstall\orders.xsd|  
  
18. On the Package Validation page, view the validation results of each package installed and then click **Next**.  
  
    Because the values of the environment variables on the destination computer differ from the values of the environment variables on the development computer, several warnings appear on the Package Validation page. You should expect four warnings:  
  
    -   The configuration file: "C:\DeploymentTutorial\DataTransferConfig.dtsConfig" is not valid. Check the configuration file name.  
  
    -   Failed to load at least one of the configuration entries in the package. Check configuration entries and previous warnings to see description of which configuration failed.  
  
    -   The configuration file: "C:\DeploymentTutorial\LoadXMLDataConfig.dtsConfig is not valid. Check the configuration file name.  
  
    -   Failed to load at least one of the configuration entries in the package. Check configuration entries and previous warnings to see description of which configuration failed.  
  
    These warnings do not affect package installation.  
  
    If you did not select the **Validate packages after installation** option on the Deploy SSIS Packages page, the Package Validation pages does not open and the wizard does not display post-installation information about validation.  
  
19. On the Finish the Package Installation Wizard page, read the installation summary and then click **Finish**.  
  
    > [!NOTE]  
    > A temporary log file is created to use in the package validation. This file is not used when the package runs.  
  
## Next Task in Lesson  
[Step 3: Testing the Deployed Packages](../Topic/Step%203:%20Testing%20the%20Deployed%20Packages.md)  
  
## See Also  
[Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/integration-services-service-ssis-service.md)  
[Manage the Integration Services Service](../../integration-services/service/manage-the-integration-services-service.md)  
  
  
  
