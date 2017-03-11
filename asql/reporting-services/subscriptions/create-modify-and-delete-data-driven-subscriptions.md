---
title: "Create, Modify, and Delete Data-Driven Subscriptions | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "query-based subscriptions [Reporting Services]"
  - "queries [Reporting Services], data-driven subscriptions"
  - "subscriptions [Reporting Services], data-driven"
  - "data-driven subscriptions"
ms.assetid: 0ba2093e-9393-4eb6-af06-9da10988cfaf
caps.latest.revision: 51
ms.author: "asaxton"
manager: "erikre"
---
# Create, Modify, and Delete Data-Driven Subscriptions
  A data-driven subscription is a query-based subscription that gets the data values used for processing the subscription at run time. When the subscription is triggered, a query is processed to get up-to-date information about recipients, report delivery options, rendering formats, and parameter settings. The query results are combined with the subscription definition to create a dynamic subscription that uses data you already maintain in an employee database, a customer database, or any other database that contains information that can be used as subscriber data.  
  
 To create a new data-driven subscription or modify an existing subscription, use the Create Data-Driven Subscription pages in Report Manager. These pages walk you through each step of creating or modifying a subscription. To access a subscription after it is created, use the My Subscriptions page and the Subscriptions list of a report. To learn how to create a data-driven subscription, see [Create a Data-Driven Subscription &#40;SSRS Tutorial&#41;](../../reporting-services/tutorials/create-a-data-driven-subscription-ssrs-tutorial.md).  
  
 In this topic:  
  
-   [Managing and Deleting a Data-Driven Subscription](#bkmk_manage_and_delete)  
  
-   [Creating and Modifying a Data-Driven Subscription](#bkmk_create_and_modify)  
  
-   [Defining a Query That Retrieves Subscription Information](#bkmk_define_query)  
  
-   [Running the Subscription](#bkmk_run_subscription)  
  
##  <a name="bkmk_manage_and_delete"></a> Managing and Deleting a Data-Driven Subscription  
 A data-driven subscription that is in progress cannot be stopped or deleted through the Manage Jobs page of Report Manager. For this reason, it is advantageous to use a shared schedule to trigger data-driven subscription. That way, if you want to temporarily prevent a subscription from processing, you can pause the schedule that triggers the subscription. For more information, see [old_Create and Manage Subscriptions for Native Mode Report Servers](http://msdn.microsoft.com/en-us/7f46cbdb-5102-4941-bca2-5e0ff9012c6b).  
  
 To delete a data-driven subscription, select it from the My Subscriptions page or the Subscriptions page of a report and then click **Delete**.  
  
 For instructions on how to cancel a data-driven subscription, see [Manage a Running Process](../../reporting-services/subscriptions/manage-a-running-process.md).  
  
##  <a name="bkmk_create_and_modify"></a> Creating and Modifying a Data-Driven Subscription  
 To create a data-driven subscription, select a report that uses stored credentials or no credentials. When you create the data-driven subscription, consider using a naming convention for the description field so you can easily differentiate standard subscriptions from data-driven subscriptions.  
  
#### To create a data-driven subscription (Native Mode)  
  
1.  In Report Manager navigate to the folder containing the report, hover over the report, open the options menu and Click the **Manage.**  
  
2.  Click the **Subscriptions** tab.  
  
3.  Click the **New Data-Driven Subscription** button.  
  
#### To create a data-driven subscription (SharePoint Mode)  
  
1.  In the SharePoint document library, hover over the report, open the options menu and Click **Manage Subscriptions**.  
  
2.  Click **Add Data-Driven Subscription**.  
  
#### To modify an existing data-driven subscription (Native Mode)  
  
1.  In Report Manager navigate to the folder containing the report, hover over the report, open the options menu and Click the **Manage**.  
  
2.  Click the **Subscriptions** tab. Alternatively click the **My Subscriptions** link on at the tope of report manager  
  
3.  Select the subscription you want to modify. The following icon indicates a data-driven subscription: ![Data-driven subscription icon](../../reporting-services/subscriptions/media/hlp-16subscriptiondd.gif "Data-driven subscription icon")  
  
#### To modify an existing data-driven subscription (SharePoint Mode)  
  
1.  In the SharePoint document library, hover over the report, open the options menu and Click **Manage Subscriptions**.  
  
2.  Select the subscription you want to modify.  
  
> [!NOTE]  
>  You can modify any value that is already specified. All values are presented as they were first created, except for the password that is used to access the subscriber data store. You must retype the password every time you modify values on the second page or any subsequent page.  
  
 Before you can create a data-driven subscription, ensure that you satisfy the following requirements:  
  
-   **Report requirements**. The report must use stored credentials or no credentials to retrieve data at run time. You cannot subscribe to a report that uses impersonated or delegated credentials to connect to an external data source; the credentials of the user who creates or owns the subscription will not be available when the subscription is processed. The stored credentials can be a Windows account or a database user account. For more information, see [Specify Credential and Connection Information for Report Data Sources](../../reporting-services/report-data/specify-credential-and-connection-information-for-report-data-sources.md).  
  
     You cannot subscribe to a Report Builder report that uses a model as a data source and the model contains model item security settings. Only reports that use model item security are included in this restriction.  
  
     You cannot create a data-driven subscription on a report that contains the `User!UserID` expression.  
  
-   **Data requirements**. You must have an accessible external data source that contains subscriber data.  
  
-   **User requirements**. The author of the subscription must have permission to "Manage reports" and "Manage all subscriptions." For more information about item-level task permissions, see [Tasks and Permissions](../../reporting-services/security/tasks-and-permissions.md). The author must also have the necessary credentials to access the external data source that contains subscriber data.  
  
##  <a name="bkmk_define_query"></a> Defining a Query That Retrieves Subscription Information  
 A data-driven subscription must specify a query or command that retrieves subscriber data. The query should produce one row for each subscriber. If you are using the e-mail delivery extension, the query should return a valid e-mail alias for each subscriber. The number of deliveries that are made is based on the number of rows returned by the query. If the row set consists of 10,000 rows, the subscription delivers 10,000 reports.  
  
 If executing the query is time-consuming, you can increase the time-out value to accommodate additional processing.  
  
 For this step, the query must be validated before you continue. Validation does not process the query, but it does return a list of all columns that are in the row set so that you can reference the columns in subsequent selections. If the query fails to validate, you cannot continue. A query fails to validate if the query syntax is incorrect or if the connection to the data source is not valid. Use the **Back** button to make corrections to the data source.  
  
##  <a name="bkmk_run_subscription"></a> Running the Subscription  
 You must specify conditions for processing the subscription. You can specify a schedule, or you can trigger the subscription to coincide with updates to a report execution snapshot. Processing for data-driven subscriptions is the same as processing for standard subscriptions.  
  
## See Also  
 [Create and Manage Subscriptions for Native Mode Report Servers](../../reporting-services/subscriptions/create-and-manage-subscriptions-for-native-mode-report-servers.md)   
 [Subscriptions and Delivery &#40;Reporting Services&#41;](../../reporting-services/subscriptions/subscriptions-and-delivery-reporting-services.md)   
 [Report Manager  &#40;SSRS Native Mode&#41;](http://msdn.microsoft.com/library/80949f9d-58f5-48e3-9342-9e9bf4e57896)   
 [old_Create and Manage Subscriptions for Native Mode Report Servers](http://msdn.microsoft.com/en-us/7f46cbdb-5102-4941-bca2-5e0ff9012c6b)   
 [Subscriptions Page &#40;Report Manager&#41;](http://msdn.microsoft.com/library/cf3a6bd0-e0b2-4875-a532-63ef34cfa860)   
 [My Subscriptions Page &#40;Report Manager&#41;](http://msdn.microsoft.com/library/491a85a3-f323-4155-a0a8-de2779899995)  
  
  