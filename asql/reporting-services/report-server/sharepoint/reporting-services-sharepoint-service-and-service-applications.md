---
title: "Reporting Services SharePoint Service and Service Applications | Microsoft Docs"
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
ms.assetid: 501aa9ee-8c13-458c-bf6f-24e00c82681b
caps.latest.revision: 10
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services SharePoint Service and Service Applications
  [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint mode is architected on the SharePoint service architecture and utilizes a SharePoint service and one to many service applications. Creating a service application makes the service available and generates the service application database. You can create multiple Reporting Services service applications but one service application is sufficient for most deployment scenarios.  
  
 This topic covers the following information:  
  
-   [Creating a Reporting Services Service Application](#bkmk_createapp)  
  
-   [Modify the Associations of the Service Application with a proxy group](#bkmk_associations)  
  
-   [Edit Service Application Properties](#bkmk_editserviceapplication)  
  
-   [To create a Reporting Services Service Application using PowerShell](#bkmk_powershell_create_ssrs_serviceapp)  
  
-   [Related Tasks](#bkmk_related)  
  
##  <a name="bkmk_createapp"></a> Creating a Reporting Services Service Application  
 You can use SharePoint Central Administration or PowerShell scripts to create the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] services applications. For more information on using SharePoint Central Administration, see the “Create a Reporting Services Service Application” section in [Install Reporting Services SharePoint Mode for SharePoint 2010](http://msdn.microsoft.com/en-us/47efa72e-1735-4387-8485-f8994fb08c8c). See the PowerShell section later in this topic for a sample PowerShell script for creating service applications.  
  
##  <a name="bkmk_associations"></a> Modify the Associations of the Service Application with a proxy group  
 The New page for creating a services application contains the section **Web Application Association**. The section allows you to associate your service application as you create it. Use the following steps to change the association and assign a customer configuration to the service application. The same general process can also be used to add the proxy to the default group rather than changing the association of the service application to a custom group.  
  
1.  In SharePoint Central Administration, in the Application Management, click **Configure Service Application Associations**.  
  
2.  On the Service application Associations page, change the view to **Service Applications**.  
  
3.  Find and click the name of your new [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] Service application. You could also click the application proxy group name **default** to add the proxy to default group rather than completing the following steps.  
  
4.  Select **Custom** in the selection box **Edit the following group of connections**.  
  
5.  Check the box for your proxy and click **Ok**.  
  
##  <a name="bkmk_editserviceapplication"></a> Edit Service Application Properties  
 You can reopen the property page of the service application to modify the properties.  
  
1.  In SharePoint Central Administration, in the Application Management group, click **Manage service applications**.  
  
2.  Select the service application by clicking the type column to select the entire row. If you click the name of the application it, the Management options page for the service opens instead of opening the properties of the service application.  
  
3.  In the Service Applications ribbon, click **Properties**.  
  
##  <a name="bkmk_powershell_create_ssrs_serviceapp"></a> To create a Reporting Services Service Application using PowerShell  
 You can use PowerShell to create the Service application and proxy. The sample below assumes that you know what application pool you want to configure the service application to use.  
  
1.  Add the application pool object of your application pool name to a variable that is passed into the New action.  
  
    ```  
    $appPoolName = get-spserviceapplicationpool “<application pool name>”  
    ```  
  
2.  Create the service application with a name and application pool name you provide.  
  
    ```  
    New-SPRSServiceApplication –Name ‘MyServiceApplication’ –ApplicationPool $appPoolName –DatabaseName ‘MyServiceApplicationDatabase’ –DatabaseServer ‘<Server Name>’  
    ```  
  
3.  Get the new service application object, and pipe the object into the Pipe the new proxy cmdlet.  
  
    ```  
    Get-SPRSServiceApplication –name MyServiceApplication | New-SPRSServiceApplicationProxy “MyServiceApplicationProxy”  
    ```  
  
##  <a name="bkmk_related"></a> Related Tasks  
  
|Task|Link|  
|----------|----------|  
|Manage the settings of your Service Application.|[Manage a Reporting Services SharePoint Service Application](../../../reporting-services/report-server/sharepoint/manage-a-reporting-services-sharepoint-service-application.md)|  
|Backup and restore the service application and related components such as encryption keys and proxy.|[Backup and Restore Reporting Services SharePoint Service Applications](../../../reporting-services/report-server/sharepoint/backup-and-restore-reporting-services-sharepoint-service-applications.md)|  
  
  