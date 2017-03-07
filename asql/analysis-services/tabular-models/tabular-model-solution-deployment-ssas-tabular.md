---
title: "Tabular Model Solution Deployment (SSAS Tabular) | Microsoft Docs"
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
ms.assetid: aff96558-e5e5-4b95-8ddf-ee0709c842fb
caps.latest.revision: 22
ms.author: "owend"
manager: "erikre"
---
# Tabular Model Solution Deployment (SSAS Tabular)
  After authoring a tabular model project, you must deploy it in order for users to browse the model by using a reporting client application. This topic describes the various properties and methods you can use when deploying tabular model solutions in your environment.  
  
 Sections in this topic:  
  
-   [Benefits](#bkmk_benefits)  
  
-   [Deploying a Tabular Model from SQL Server Data Tools (SSDT)](#bkmk_deploying_bism)  
  
-   [Deployment Properties](#bkmk_deploy_props)  
  
-   [Deployment Methods](#bkmk_meth)  
  
-   [Configuring the deployment server and connecting to a deployed model](#bkmk_connecting)  
  
-   [Related Tasks](#bkmk_rt)  
  
##  <a name="bkmk_benefits"></a> Benefits  
 Deploying a tabular model creates a model database in a test, staging, or production environment. Users can then connect to the deployed model through a .bism connection file in Sharepoint or by using a data connection directly from reporting client applications such as Microsoft Excel, [!INCLUDE[ssCrescent](../../a9notintoc/includes/sscrescent-md.md)], or a custom application. The model workspace database, created when you create a new tabular model project in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], and used to author the model will remain on the workspace server instance, allowing you to make changes to the model project and then re-deploying to the test, staging, or production environment when necessary.  
  
##  <a name="bkmk_deploying_bism"></a> Deploying a Tabular Model from SQL Server Data Tools (SSDT)  
 Deploying is a simple process; however, certain steps must be taken to ensure your model is deployed to the correct Analysis Services instance and with the correct configuration options.  
  
 Tabular models are defined with several deployment specific properties. When you deploy, a connection to the Analysis Services instance specified in the **Server** property is established. A new model database with the name specified in the **Database** property is then created on that instance, if one does not already exist. Metadata from the model project’s Model.bim file is used to configure objects in the model database on the deployment server. With the **Processing Option**, you can specify whether or not just the model metadata is deployed, creating the model database, or if **Default** or **Full** is specified, impersonation credentials used to connect to data sources are passed in-memory from the model workspace database to the deployed model database. Analysis Services then runs processing to populate data into the deployed model. Once the deployment process is complete, the model can then be connected to by client applications using a data connection or by using an .bism connection file in SharePoint.  
  
##  <a name="bkmk_deploy_props"></a> Deployment Properties  
 The project Deployment Options and Deployment Server properties specify how and where a model is deployed to a staging or production Analysis Services environment. While default property settings are defined for all model projects, depending on your particular deployment requirements, you can change these property settings for each project. For more information about setting default deployment properties, see [Configure Default Data Modeling and Deployment Properties &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/configure-default-data-modeling-and-deployment-properties-ssas-tabular.md).  
  
### Deployment Options Properties  
 Deployment Options properties include the following:  
  
|Property|Default Setting|Description|  
|--------------|---------------------|-----------------|  
|**Processing Option**|**Default**|This property specifies the type of processing required when changes to objects are deployed. This property has the following   options:<br /><br /> **Default** – This setting specifies Analysis Services will determine the type of processing required. Unprocessed objects will be processed, and if required, recalculating attribute relationships, attribute hierarchies, user hierarchies, and calculated columns. This setting generally results in a faster deployment time than using the Full processing option.<br /><br /> **Do Not Process** – This setting specifies only the metadata will be deployed. After deploying, it may be necessary to run a process operation on the deployed model to update and recalculate data.<br /><br /> **Full** – This setting specifies that both the metadata is deployed and a process full operation is performed. This assures that the deployed model has the most recent updates to both metadata and data.|  
|**Transactional Deployment**|**False**|This property specifies whether or not the deployment is transactional. By default, the deployment of all or changed objects is not transactional with the processing of those deployed objects. Deployment can succeed and persist even though processing fails. You can change this to incorporate deployment and processing in a single transaction.|  
|**Query Mode**|**In-Memory**|This property specifies the mode in which the source from which query results are returned is running in In-Memory (cached) mode or in DirectQuery mode. This property has the following options:<br /><br /> **DirectQuery** – This setting specifies all queries to the model should use the relational data source only.<br /><br /> **DirectQuery with In-Memory** - This setting specifies, by default, queries should be answered by using the relational source, unless otherwise specified in the connection string from the client.<br /><br /> **In-Memory** - This setting specifies  queries should be answered by using the cache only.<br /><br /> **In-Memory with DirectQuery** - This setting specifies, by default. queries should be answered by using the cache, unless otherwise specified in the connection string from the client.<br /><br /> <br /><br /> For more information, see [DirectQuery Mode &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/directquery-mode-ssas-tabular.md).|  
  
### Deployment Server properties  
 Deployment Server properties include the following:  
  
|Property|Default Setting|Description|  
|--------------|---------------------|-----------------|  
|**Server**<br /><br /> Set when the project is created.|**localhost**|This property, set when the project is created, specifies the Analysis Services instance by name to which the model will be deployed. By default, the model will be deployed to the default instance of Analysis Services on the local computer. However, you can change this setting to specify a named instance on the local computer or any instance on any remote computer on which you have permission to create Analysis Services objects.|  
|**Edition**|The same edition as the instance in which the Workspace Server is located.|This property specifies the edition of the Analysis Services server to which the model will be deployed. The server edition defines various features that can be incorporated into the project. By default, the edition will be of the local Analysis Services server. If you specify a different Analysis Services server, for example, a production Analysis Services server, be sure to specify the edition of that Analysis Services server.|  
|**Database**|**\<projectname>**|This property specifies the name of the Analysis Services database in which model objects will be instantiated upon deployment. This name will also be specified in a reporting client data connection or an .bism data connection file.<br /><br /> You can change this name at any time when you are authoring the model. If you change the name after you have deployed the model, changes that you have made after deployment will not affect the model that you previously deployed. For example, if you open a solution named **TestDB** and deploy your solution with the default model Database name Model, and then modify the solution and renamed the model Database **Sales**, the instance of Analysis Services the solutions were deployed to will display separate databases, one named Model and one named Sales.|  
|**Cube Name**|**Model**|This property specifies the cube name as shown in client tools (such as Excel) and AMO (Analysis Management Objects).|  
  
### DirectQuery Options Properties  
 Deployment Options properties include the following:  
  
|Property|Default Setting|Description|  
|--------------|---------------------|-----------------|  
|**Impersonation Settings**|**Default**|This property specifies the impersonation settings used when a model running in DirectQuery mode connects to data sources. Impersonation credentials are not used when querying the in-memory cache. This property setting has the following options:<br /><br /> **Default** – This setting specifies Analysis Services will use the option specified on the Impersonation Information page when the data source connection was created by using the Table Import Wizard.<br /><br /> **ImpersonateCurrentUser** – This setting specifies the the user account of the user currently logged on will be used when connecting to all data sources.|  
  
##  <a name="bkmk_meth"></a> Deployment Methods  
 There are several methods you can use to deploy a tabular model project. Most of the deployment methods that can be used for other Analysis Services projects, such as multidimensional, can also be used to deploy tabular model projects.  
  
|Method|Description|Link|  
|------------|-----------------|----------|  
|**Deploy command in SQL Server Data Tools**|The Deploy command provides a simple and intuitive method to deploy a tabular model project from the [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)] authoring environment.<br /><br /> **\*\* Caution \*\*** This method should not be used to deploy to production servers. Using this method can overwrite certain properties in an existing model.|[Deploy From SQL Server Data Tools &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/deploy-from-sql-server-data-tools-ssas-tabular.md)|  
|**Analysis Management Objects (AMO) Automation**|AMO provides a programmatic interface to the complete command set for [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)], including commands that can be used for solution deployment. As an approach for solution deployment, AMO automation is the most flexible, but it also requires a programming effort.  A key advantage to using AMO is that you can use SQL Server Agent with your AMO application to run deployment on a preset schedule.|[Developing with Analysis Management Objects &#40;AMO&#41;](../../analysis-services/multidimensional-models/analysis-management-objects/developing-with-analysis-management-objects-amo.md)|  
|**XMLA**|Use [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] to generate an XMLA script of the metadata of an existing [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database, and then run that script on another server to recreate the initial database. XMLA scripts are easily formed in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] by defining the deployment process, then codifying it and saving it in an XMLA script. Once you have the XMLA script in a saved file, you can easily run the script according to a schedule, or embed the script in an application that connects directly to an instance of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)].<br /><br /> You can also run XMLA Scripts on a preset basis using SQL Server Agent, but you do not have the same flexibility with XMLA Scripts as with AMO. AMO provides a larger breadth of functionality by hosting the complete spectrum of administrative commands.|[Deploy Model Solutions Using XMLA](../../analysis-services/multidimensional-models/deploy-model-solutions-using-xmla.md)|  
|**Deployment Wizard**|Use the Deployment Wizard to use the XMLA output files generated by an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project to deploy the project's metadata to a destination server. With the Deployment Wizard, you can deploy directly from the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] file, as created by the output directory by project build.<br /><br /> The primary advantage of using the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Deployment Wizard is convenience. Just as you can save an XMLA script for use later in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], you can save Deployment Wizard scripts. The Deployment Wizard can be run both interactively and at the command prompt via the Deployment Utility.|[Deploy Model Solutions Using the Deployment Wizard](../../analysis-services/multidimensional-models/deploy-model-solutions-using-the-deployment-wizard.md)|  
|**Deployment Utility**|The Deployment utility lets you start the Analysis Services deployment engine from a command prompt.|[Deploy Model Solutions with the Deployment Utility](../../analysis-services/multidimensional-models/deploy-model-solutions-with-the-deployment-utility.md)|  
|**Synchronize Database Wizard**|Use the Synchronize Database Wizard to synchronize the metadata and data between any two [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] databases.<br /><br /> The Synchronize Wizard can be used to copy both data and metadata from a source server to a destination server. If the destination server does not have a copy of the database that you want to deploy, a new database is copied to the destination server. If the destination server already has a copy of the same database, the database on the destination server is updated to use the metadata and data of the source database.|[Synchronize Analysis Services Databases](../../analysis-services/multidimensional-models/synchronize-analysis-services-databases.md)|  
|**Backup and Restore**|Backup offers the simplest approach to transferring [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] databases. From the **Backup** dialog box, you can set the options configuration, and then you can run the backup from the dialog box itself. Or, you can create a script that can be saved and run as frequently as required.<br /><br /> Backup and restore is not used as frequently as the other deployment methods, but is a way to quickly complete a deployment with minimal infrastructure requirements.|[Backup and Restore of Analysis Services Databases](../../analysis-services/multidimensional-models/backup-and-restore-of-analysis-services-databases.md)|  
  
##  <a name="bkmk_connecting"></a> Configuring the deployment server and connecting to a deployed model  
 After a model has been deployed, there are additional considerations for securing model data access, backups, and processing operations that can be configured on the Analysis Services server by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. While these properties and configuration settings are outside the scope of this topic, they are, nonetheless, very important in assuring your deployed model data is secure, kept up to date, and provide a valuable data analysis resource for users in your organization.  
  
 After a model has been deployed, and optional server settings configured, the model can be connected to by reporting client applications and used to browse and analyze the model metadata. Connecting to a deployed model database from client applications is outside the scope of this topic. To learn more about connecting to a model database from client applications, see [Tabular Model Data Access](../../analysis-services/tabular-models/tabular-model-data-access.md).  
  
##  <a name="bkmk_rt"></a> Related Tasks  
  
|Task|Description|  
|----------|-----------------|  
|[Deploy From SQL Server Data Tools &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/deploy-from-sql-server-data-tools-ssas-tabular.md)|Describes how to configure deployment properties and deploy a tabular model project by using the Deploy command in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)].|  
|[Deploy Model Solutions Using the Deployment Wizard](../../analysis-services/multidimensional-models/deploy-model-solutions-using-the-deployment-wizard.md)|Topics in this section describe how to use the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Deployment Wizard to deploy both tabular and multidimensional model solutions.|  
|[Deploy Model Solutions with the Deployment Utility](../../analysis-services/multidimensional-models/deploy-model-solutions-with-the-deployment-utility.md)|Describes how to use the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] Deployment Utility to deploy tabular and multidimensional model solutions.|  
|[Deploy Model Solutions Using XMLA](../../analysis-services/multidimensional-models/deploy-model-solutions-using-xmla.md)|Describes how to use XMLA to deploy [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] tabular and multidimensional solutions.|  
|[Synchronize Analysis Services Databases](../../analysis-services/multidimensional-models/synchronize-analysis-services-databases.md)|Describes how to use the Synchronize Database Wizard to synchronize the metadata and data between any two [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] tabular or multidimensional databases.|  
  
## See Also  
 [Connect to a Tabular Model Database &#40;SSAS&#41;](../../analysis-services/tabular-models/connect-to-a-tabular-model-database-ssas.md)  
  
  