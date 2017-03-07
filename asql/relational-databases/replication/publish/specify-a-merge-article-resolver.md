---
title: "Specify a Merge Article Resolver | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "articles [SQL Server replication], conflict resolution"
  - "conflict resolution [SQL Server replication], merge replication"
  - "merge replication conflict resolution [SQL Server replication], merge article resolvers"
ms.assetid: a40083b3-4f7b-4a25-a5a3-6ef67bdff440
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# Specify a Merge Article Resolver
  This topic describes how to specify a merge article resolver in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Recommendations](#Recommendations)  
  
-   **To specify a merge article resolver, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Recommendations"></a> Recommendations  
  
-   Merge replication allows the following types of article resolvers:  
  
    -   The default resolver. The behavior of the default resolver depends on whether the subscription is a client subscription or a server subscription. For more information about specifying subscription type, see [Specify a Merge Subscription Type and Conflict Resolution Priority &#40;SQL Server Management Studio&#41;](../../../relational-databases/replication/2b828d83-2341-4924-b92a-4f81a22246c0.md).  
  
    -   A custom resolver you have written, which can be a business logic handler (written in managed code) or a custom COM-based resolver. For more information, see [Advanced Merge Replication Conflict Detection and Resolution](../Topic/Advanced%20Merge%20Replication%20Conflict%20Detection%20and%20Resolution.md). If you need to implement custom logic that is executed for each replicated row, not just for conflicting rows, see [Implement a Business Logic Handler for a Merge Article](../../../relational-databases/replication/implement-a-business-logic-handler-for-a-merge-article.md).  
  
    -   A standard COM-based resolver, which is included with [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   To use a resolver other than the default resolver, you must copy the resolver to the computer on which the Merge Agent runs and register it (if you are using a business logic handler, it must also be registered at the Publisher). The Merge Agent runs at:  
  
    -   The Distributor for a push subscription  
  
    -   The Subscriber for a pull subscription  
  
    -   The [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Internet Information Services (IIS) server for a pull subscription that uses Web synchronization  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
 After the resolver is registered, specify that an article should use the resolver on the **Resolver** tab of the **Article Properties - \<Article>** dialog box, which is available in the New Publication Wizard and the **Publication Properties - \<Publication>** dialog box. For more information about using the wizard and accessing the dialog box, see [Create a Publication](../../../relational-databases/replication/publish/create-a-publication.md) and [View and Modify Publication Properties](../../../relational-databases/replication/publish/view-and-modify-publication-properties.md).  
  
#### To specify a resolver  
  
1.  On the **Articles** page of the New Publication Wizard or the **Publication Properties - \<Publication>** dialog box, select a table.  
  
2.  Click **Article Properties**, and then click **Set Properties of Highlighted Table Article**.  
  
3.  On the **Article Properties - \<Article>** page, click the **Resolver** tab.  
  
4.  Select **Use a custom resolver (registered at the Distributor)**, and then in the list, click the resolver.  
  
5.  If the resolver requires input (such as a column name), specify it in the **Enter information needed by the resolver** text box.  
  
6.  [!INCLUDE[clickOK](../../../analysis-services/data-mining/includes/clickok-md.md)]  
  
7.  Repeat this process for each article that requires a resolver.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To register a custom conflict resolver  
  
1.  If you plan to register your own custom conflict resolver, create one of the following types:  
  
    -   Managed code-based resolver as a business logic handler. For more information, see [Implement a Business Logic Handler for a Merge Article](../../../relational-databases/replication/implement-a-business-logic-handler-for-a-merge-article.md).  
  
    -   Stored procedure-based resolver and COM-based resolver. For more information, see [Implement a Custom Conflict Resolver for a Merge Article](../../../relational-databases/replication/implement-a-custom-conflict-resolver-for-a-merge-article.md).  
  
2.  To determine if the desired resolver is already registered, execute [sp_enumcustomresolvers &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-enumcustomresolvers-transact-sql.md) at the Publisher on any database. This displays a description of the custom resolver as well as the class identifier (CLSID) for each COM-based resolver registered at the Distributor or information on the managed assembly for each business logic handler registered at the Distributor.  
  
3.  If the desired custom resolver is not already registered, execute [sp_registercustomresolver &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-registercustomresolver-transact-sql.md) at the Distributor. Specify a name for the resolver for **@article_resolver**; for a business logic handler, this is the friendly name of the assembly. For COM-based resolvers, specify the CLSID of the DLL for **@resolver_clsid**, and for a business logic handler, specify a value of **true** for **@is_dotnet_assembly**, the name of the assembly for **@dotnet_assembly_name**, and the fully-qualified name of the class that overrides <xref:Microsoft.SqlServer.Replication.BusinessLogicSupport.BusinessLogicModule> for **@dotnet_class_name**.  
  
    > [!NOTE]  
    >  If a business logic handler assembly is not deployed in the same directory as the Merge Agent executable, in the same directory as the application that synchronously starts the Merge Agent, or in the global assembly cache (GAC), you need to specify the full path with the assembly name for **@dotnet_assembly_name**.  
  
4.  If the resolver is a COM-based resolver:  
  
    -   Copy the custom resolver DLL to the Distributor for push subscriptions or to the Subscriber for pull subscriptions.  
  
        > [!NOTE]  
        >  [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] custom resolvers can be found in the [!INCLUDE[ssInstallPath](../../../database-engine/configure/windows/includes/ssinstallpath-md.md)]COM directory.  
  
    -   Use regsvr32.exe to register the custom resolver DLL with the operating system. For example, executing the following from the command prompt registers the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Additive Conflict Resolver:  
  
        ```  
        regsvr32 ssradd.dll  
        ```  
  
5.  If the resolver is a business logic handler, deploy the assembly in the same folder as the Merge Agent executable (replmerg.exe), in the same folder as an application that invokes the Merge Agent, or in the folder specified for the **@dotnet_assembly_name** parameter in step 3.  
  
    > [!NOTE]  
    >  The default installation location of the Merge Agent executable is [!INCLUDE[ssInstallPath](../../../database-engine/configure/windows/includes/ssinstallpath-md.md)]COM.  
  
#### To specify a custom resolver when defining a merge article  
  
1.  If you plan to use a custom conflict resolver, create and register the resolver using the above procedure.  
  
2.  At the Publisher, execute [sp_enumcustomresolvers &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-enumcustomresolvers-transact-sql.md) and note the name of the desired custom resolver in the **value** field of result set.  
  
3.  At the Publisher on the publication database, execute [sp_addmergearticle &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-addmergearticle-transact-sql.md). Specify the name of the resolver from step 2 for **@article_resolver** and any required input to the custom resolver using the **@resolver_info** parameter. For stored procedure-based custom resolvers, **@resolver_info** is the name of the stored procedure. For more information about required input for resolvers supplied by [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)], see [Microsoft COM-Based Resolvers](../Topic/Microsoft%20COM-Based%20Resolvers.md).  
  
#### To specify or change a custom resolver for an existing merge article  
  
1.  To determine if a custom resolver has been defined for an article, or to get the name of the resolver, execute [sp_helpmergearticle &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-helpmergearticle-transact-sql.md). If there is a custom resolver defined for the article, its name will be displayed in the **article_resolver** field. Any input supplied to the resolver will be displayed in the **resolver_info** field of the result set.  
  
2.  At the Publisher, execute [sp_enumcustomresolvers &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-enumcustomresolvers-transact-sql.md) and note the name of the desired custom resolver in the **value** field of the result set.  
  
3.  At the Publisher on the publication database, execute [sp_changemergearticle &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-changemergearticle-transact-sql.md). Specify a value of **article_resolver**, including the full path for business logic handlers, for **@property**, and the name of the desired custom resolver from step 2 for **@value**.  
  
4.  To change any required input for the custom resolver, execute [sp_changemergearticle &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-changemergearticle-transact-sql.md) again. Specify a value of **resolver_info** for **@property** and any required input to the custom resolver for **@value**. For stored procedure-based custom resolvers, **@resolver_info** is the name of the stored procedure. For more information about required input, see [Microsoft COM-Based Resolvers](../Topic/Microsoft%20COM-Based%20Resolvers.md).  
  
#### To unregister a custom conflict resolver  
  
1.  At the Publisher, execute [sp_enumcustomresolvers &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-enumcustomresolvers-transact-sql.md) and note the name of the custom resolver to remove in the **value** field of the result set.  
  
2.  Execute [sp_unregistercustomresolver &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-unregistercustomresolver-transact-sql.md) at the Distributor. Specify the full name of the custom resolver from step 1 for **@article_resolver**.  
  
###  <a name="TsqlExample"></a> Examples (Transact-SQL)  
 This example creates a new article and specifies that the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Averaging Conflict Resolver be used to calculate the average of the **UnitPrice** column when conflicts occur.  
  
 [!code-sql[HowTo#sp_addmerge_resolver](../../../relational-databases/replication/codesnippet/tsql/specify-a-merge-article-_1.sql)]  
  
 This example changes an article to specify using the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Additive Conflict Resolver to calculate the sum of the **UnitsOnOrder** column when conflicts occur.  
  
 [!code-sql[HowTo#sp_changemerge_resolver](../../../relational-databases/replication/codesnippet/tsql/specify-a-merge-article-_2.sql)]  
  
## See Also  
 [Advanced Merge Replication Conflict Detection and Resolution](../Topic/Advanced%20Merge%20Replication%20Conflict%20Detection%20and%20Resolution.md)   
 [Implement a Business Logic Handler for a Merge Article](../../../relational-databases/replication/implement-a-business-logic-handler-for-a-merge-article.md)  
  
  