---
title: "DirectQuery for Tabular 1100 or 1103 models (SSAS Tabular) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 2aaf5cb8-294b-4031-94b3-fe605d7fc4c7
caps.latest.revision: 23
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# DirectQuery for Tabular 1100 or 1103 models (SSAS Tabular)
  This topic provides a walkthrough of the design and deployment process for DirectQuery models created at the  **SQL Server 2014 (1103) or SQL Server 2012  (1100)** compatibility levels.  
  
 At these compatibility levels, you can configure DirectQuery to use relational data only (DirectQuery only), or you can configure the model to switch between using cached data only or relational data only (hybrid mode). This topic explains the implementation process for both modes, and describes possible differences in query results depending on the mode and the security configuration.  
  
 [Design and Deployment Steps](#bkmk_DQProcedure)  
  
 [Set or change the preferred connection method](#bkmk_setconnectionmethod)  
  
 [Set or change impersonation settings](#bkmk_impersonation)  
  
 [Comparing DirectQuery Options](#bkmk_Configurations)  
  
 [Validation and Design Restrictions](#bkmk_Validation)  
  
##  <a name="bkmk_DQProcedure"></a> Design and Deployment Steps  
 This section provides instructions for DirectQuery model development.  
  
 **Step 1. Create the solution**  
  
 Regardless of which mode you will use, you must review the information that describes limitations on the data that can be used in DirectQuery models. For example, all the data used in your model and reports must come from a single SQL Server database. For more information, see [DirectQuery Mode &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/directquery-mode-ssas-tabular.md).  
  
 Also, review the limitations on measures and calculated columns, and determine whether the formulas you intend to use are compatible with DirectQuery mode. You might need to remove or modify the following elements:  
  
-   Calculated columns are not supported.  
  
-   Copy-pasted data cannot be used. If you import a [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] model to jumpstart your solution, be sure to delete linked tables before importing the solution, as this data cannot be deleted and will block DirectQuery validation.  
  
 **Step 2. Enable DirectQuery mode in the model designer**  
  
 By default, DirectQuery is disabled. Right-click the **Model.bim** node in Solution Explorer and set the property, **DirectQuery Mode**, to **On**.  
  
 You can turn on DirectQuery at any time; however, to ensure that you do not create columns or formulas that are incompatible with DirectQuery mode, we recommend that you enable DirectQuery mode right from the beginning.  
  
 Initially, even DirectQuery models are always created in memory. The default query mode for the workspace database is also set to **DirectQuery with In-Memory**. This hybrid working mode lets you use the cache of imported data for improved performance during the model design process, while validating the model against DirectQuery requirements.  
  
 **Step 3. Resolve validation errors**  
  
 If you get validation errors when you turn DirectQuery on, or when you add new data or formulas, open the Visual Studio **Error List**, and then take the required actions.  
  
-   Change any required property settings for DirectQuery mode, as described in the error messages.  
  
-   Remove calculated columns. If you require a calculated column for a particular measure, you can always create the column by using the [Relational Query Designer &#40;SSAS&#41;](../a9retired/relational-query-designer-ssas.md) provided in the Table Import wizard.  
  
-   Modify or remove formulas that are incompatible with DirectQuery mode. If you require a particular function for a calculation, consider ways that you could provide an equivalent by using Transact-SQL.  
  
-   Add data as needed.  If your model previously used copy-paste data or data from providers other than SQL Server, you can create new views and derived columns within the existing connection, or use distributed queries.  All data used in a DirectQuery model must be accessible via a single SQL Server data source.  
  
 **Step 4. Set the preferred method for answering queries on the model**  
  
|||  
|-|-|  
|**DirectQuery only**|Set the property to **DirectQuery**.|  
|**Hybrid mode**|Set the property to **In-Memory With DirectQuery** or **DirectQuery With In-Memory**.<br /><br /> You can change this value later to use a different preference.<br /><br /> Note that clients can override the preferred method in the connection string.|  
  
 **Step 5. Specify the DirectQuery partition**  
  
|||  
|-|-|  
|**DirectQuery only**|Optional. A DirectQuery only model has no need for a partition.<br /><br /> However, if you created partitions in the model during the design phase, remember that only one partition can be used as the data source. By default the first partition you created will be used as the DirectQuery partition.<br /><br /> To ensure that all the data required by the model is available from the DirectQuery partition, choose a DirectQuery partition and edit the SQL statement to get the entire data set.|  
|**Hybrid mode**|If any table in your model has multiple partitions, you must choose a single partition as the *DirectQuery partition*. If you do not assign a partition, by default, the first partition that was created will be used as the DirectQuery partition.<br /><br /> Set processing options on all partitions except the DirectQuery. Typically the DirectQuery partition is never processed, because the data is passed through from the relational source.<br /><br /> For more information, see [Define partitions in DirectQuery models &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/define-partitions-in-directquery-models-ssas-tabular.md).|  
  
 **Step 6. Configure impersonation**  
  
 Impersonation is supported only for DirectQuery models. The impersonation option, **Impersonation Settings**, defines the credentials that are used when viewing data from the specified SQL Server data source.  
  
|||  
|-|-|  
|**DirectQuery only**|For the  **Impersonation Settings** property, specify the account that will be used to connect to the SQL Server data source.<br /><br /> If you use the value, **ImpersonateCurrentUser**, the instance of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] that hosts the model will pass the credentials of the current user of the model to the SQL Server database.|  
|**Hybrid mode**|For the **Impersonation Settings** property, specify the account that will be used to access the data in the SQL Server data source.<br /><br /> This setting does not affect the credentials that are used to process the cache used by the model.|  
  
 **Step 7. Set the QueryMode Property**  
  
 Open the **Project** menu of Visual Studio, and select **Properties** to set the **QueryMode** property. This property specifies the default query method for a DirectQuery model, You set this property in the model designer when you deploy the model, but you can override it later.  
  
 Set the **QueryMode** property to one of the values described in the following table:  
  
|||  
|-|-|  
|**DirectQuery only**|**DirectQueryOnly**<br /><br /> This setting specifies all queries to the model should use the relational data source only. Because you have specified Direct Query only, the metadata of the model is deployed to the server, but the model is not processed.<br /><br /> Note that the cache that was used by the workspace database is not automatically deleted. If you want to ensure that users are not able to see the cached data, you might wish to clear the design-time cache. For more information, see [Clear the Analysis Services Caches](../analysis-services/instances/clear-the-analysis-services-caches.md).|  
|**Hybrid mode**|**DirectQuery with In-Memory**<br /><br /> This setting specifies, by default, queries should be answered by using the relational source, unless otherwise specified in the connection string from the client.<br /><br /> **In-Memory with DirectQuery**<br /><br /> This setting specifies, by default. queries should be answered by using the cache, unless otherwise specified in the connection string from the client.<br /><br /> Both of these values allow you to use either the cache or the relational data source as necessary. The order defines which data source is used by default when answering queries against the model.<br /><br /> In a hybrid mode, the cache must be processed at the same time that the model metadata is deployed to the server.<br /><br /> You can change this setting after deployment.|  
  
 **Step 8. Deploy the model**  
  
 On the Project menu, click **Deploy**. See [Deploy From SQL Server Data Tools &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/deploy-from-sql-server-data-tools-ssas-tabular.md) for more information.  
  
 **Step 9. Verify deployed model**  
  
 In [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], open the instance of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] where you deployed the model. Right-click the name of the database and select **Properties**.  
  
-   The property, **DirectQueryMode**, was set when you defined the deployment properties.  
  
-   The property, **Data Source Impersonation Info**, was set when you defined the user impersonation options. For more information, see [Set Impersonation Options &#40;SSAS - Multidimensional&#41;](../analysis-services/multidimensional-models/set-impersonation-options-ssas-multidimensional.md).  
  
-   You can change these properties any time after the model has been deployed.  
  
 [Back to Top](#bkmk_DQProcedure)  
  
##  <a name="bkmk_setconnectionmethod"></a> Set or change the preferred connection method  
 After you  deploy the model, you can set some additional properties to enable access to your model using one of the DirectQuery modes:  
  
-   Indicate whether queries against the model should use cached data or the relational data source. You can use a hybrid mode or DirectQuery only.  
  
-   Indicate which partition to use as the DirectQuery data source.  
  
-   Set impersonation options for users who will be accessing the SQL Server data source.  
  
 You can set the preferred connection method for a DirectQuery model in the designer or in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] after the model has been deployed.  
  
#### To set the preferred connection method for a DirectQuery model  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the solution file for the DirectQuery model.  
  
2.  In Visual Studio, from the **Project** menu, select **Properties**.  
  
3.  In the **Properties** pane, change the property, **DirectQueryMode**, to one of the values that support DirectQuery usage:  
  
    -   **InMemory with DirectQuery**: If you use this option, the model is deployed but you must process the cache before you can run queries against the model.  
  
    -   **DirectQuery with InMemory**: If you use this option, the cache will be available for use by clients if it has already been processed. If you deploy the model with this setting and do not process the cache, some clients must get an error on trying to connect to the model.  
  
    -   **DirectQuery only**: If you use this option, the metadata is deployed but the model has no data in it. Clients that attempt to connect using In-Memory mode will get an error, indicating that the model does not exist or has not been processed.  
  
4.  If there are errors, in Visual Studio, open the **Error List** and resolve any problems that would prevent the model from being deployed in DirectQuery mode.  
  
#### To verify or change the preferred connection method for a DirectQuery model  
  
1.  In [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], connect to the instance where you deployed the DirectQuery model.  
  
2.  Right-click the model database, and select **Properties**.  
  
3.  In the **Properties** pane, change the property, **DirectQueryMode**, to one of these values:  
  
    -   **DirectQuery Only**  
  
    -   **InMemory with DirectQuery**  
  
    -   **DirectQuery with InMemory**  
  
 Note that these properties are the same as the properties that you set on the project before deployment in Visual Studio. You can change the preferred connection mode for DirectQuery mode at any time, provided that you have configured the model to support DirectQuery usage.  
  
##  <a name="bkmk_impersonation"></a> Set or change impersonation settings  
 If the model uses cached data, the cache is secured using the [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] security model (roles). The cache might contain data that the model designer is privileged to see but the user is not. Model and report designers should either clear the cache, or secure this data by controlling access via roles.  
  
 A model that answers queries from the cache cannot impersonate the current user when connecting to the data source. If you want to impersonate the current user when connecting to the data source, you must use DirectQuery mode.  
  
 The impersonation settings property specifies the credentials used when you are connecting to a model using DirectQuery, either for a DirectQuery only model or for a hybrid model answering queries using DirectQuery. The property has the following values:  
  
 **Default**  
 Uses the credentials specified in the import wizard to connect to the data source. This can be a specific Windows user or the service account.  
  
 **ImpersonateCurrentUser**  
 Uses the credentials of the current user to connect to the data source.  
  
##  <a name="bkmk_Configurations"></a> Comparing DirectQuery Options  
 **DirectQuery Only**  
 This option is preferred when you want to guarantee a single source of data, or when your data is too large to fit in memory. If you are working with a very large relational data source, during design time you can create the model by using some subset of the data. When you deploy the model in DirectQuery only mode, you can edit the data source definition to include all the required data.  
  
 This option is also preferred if you want to use the security provided by the relational data source to control user access to data. With cached tabular models, you can also use [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] roles to control data access, but the data stored in the cache must also be secured. You should always use this option if your security context requires that data should never be cached.  
  
 The following table describes the possible deployment outcomes for DirectQuery only mode:  
  
|||  
|-|-|  
|**DirectQuery with no cache**|No data is loaded into the cache. The model can never be processed.<br /><br /> The model can only be queried by using clients that support DAX queries. Query results are always returned from the original data source.<br /><br /> **DirectQueryMode** = **On**<br /><br /> **QueryMode** = **DirectQuery**|  
|**DirectQuery with queries against cache only**|Deployment fails. This configuration is not supported.<br /><br /> **DirectQueryMode** = **On**<br /><br /> **QueryMode** = **In-Memory**|  
  
 **Hybrid mode**  
 Deploying your model in a hybrid mode has many advantages: you can get up-to-date data from the SQL Server data source if needed, but preserving the cache gives you the ability to work with data in memory for faster performance while designing reports or testing the model.  
  
 A DirectQuery hybrid mode is also useful if your model is very large. Rather than have users get stale data or have the model be unavailable while the cache is processed, you can switch the model to DirectQuery mode while processing is in progress. Users might experience slightly slower performance but they would be able to get data directly from the relational store, ensuring that results were up-to-date.  
  
 The following table compares the deployment outcome in each of the combinations of DirectQuery options.  
  
|||  
|-|-|  
|**Hybrid mode with cache preferred**|The model can be processed and data can be loaded into the cache. Queries use the cache by default. If a client wants to use the DirectQuery source, a parameter must be inserted in the connection string.<br /><br /> **DirectQueryMode** = **On**<br /><br /> **QueryMode** = **In-Memory with DirectQuery**|  
|**Hybrid mode with DirectQuery preferred**|The model is processed and data can be loaded into the cache. However, queries use DirectQuery by default. If a client wants to use the cached data, a parameter must be inserted in the connection string. If the tables in the model are partitioned, the principal partition of the cache is also set to **In-Memory with DirectQuery**.<br /><br /> **DirectQueryMode** = **On**<br /><br /> **QueryMode** = **DirectQuery with In-Memory**|  
  
##  <a name="bkmk_Validation"></a> Validation and Design Restrictions  
 When you author a model for use in DirectQuery mode, you must initially load some portion of the data into the cache. If the data you will eventually use is too large to fit into memory, you can use the **Preview & Filter** option in the Table Import wizard to select a subset of data, or write a SQL script to get the data that you want.  
  
> [!WARNING]  
>  Because DirectQuery mode at this compatibility level does not support the use of calculated columns, if there are columns that you wish to combine or perform other operations on, you should plan ahead and create the column definition as part of your data import query or script.  
  
 To view and resolve validation errors, open the **Error List** in [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)]. Critical errors that prevent use of DirectQuery mode are displayed on the **Errors** tab. You must fix these errors before changing to DirectQuery mode. The validation errors that are more difficult to resolve typically are related to formulas that are not supported in DirectQuery mode.  
  
 The following list describes other considerations to keep in mind when authoring a model for DirectQuery access:  
  
-   When in *DirectQuery only* mode, the results in a report can vary depending on the security context of the user who is viewing the results. You should test models with different credentials to ensure that users get the expected results.  
  
-   If you configure a model to operate in hybrid mode, which allows the use of either the cache or data from SQL Server, you should be aware of the possibility that clients connecting to each source might see different results, depending on the mode specified in the connection string. If you need to ensure that your report users see only data from SQL Server, you must clear the cache or change the model to DirectQueryOnly.  
  
## See Also  
 [DirectQuery Mode &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/directquery-mode-ssas-tabular.md)   
 [Tabular Model Data Access](../analysis-services/tabular-models/tabular-model-data-access.md)  
  
  