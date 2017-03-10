---
title: "Configure Power Pivot and Deploy Solutions (SharePoint 2013) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "power-view"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6401fd92-f43b-450e-8298-12db644c25bc
caps.latest.revision: 14
ms.author: "owend"
manager: "erikre"
---
# Configure Power Pivot and Deploy Solutions (SharePoint 2013)
  This topics describes the deployment and configuration of middle-tier enhancements to the [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] features in [!INCLUDE[SPS2013](../../../../analysis-services/instances/install/windows/includes/sps2013-md.md)] including [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Gallery, Schedule data refresh, Management Dashboard, and data providers. Run **[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration** tool to complete the following:  
  
-   Deploy SharePoint solution files.  
  
-   Create a [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] service application.  
  
-   Configure an Excel Services Application to use an [!INCLUDE[ssASnoversion](../../../../analysis-services/includes/ssasnoversion-md.md)] server in SharePoint mode. For information on backend services and installing a [!INCLUDE[ssASnoversion](../../../../analysis-services/includes/ssasnoversion-md.md)] server in SharePoint mode, see [Install Analysis Services in Power Pivot Mode](../../../../analysis-services/instances/install/windows/install-analysis-services-in-power-pivot-mode.md).  
  
 For information on installing the [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration tool, see [Install or Uninstall the Power Pivot for SharePoint Add-in &#40;SharePoint 2013&#41;](../../../../analysis-services/instances/install/windows/install-or-uninstall-the-power-pivot-for-sharepoint-add-in-sharepoint-2013.md)  
  
 This topic contains the following sections:  
  
 [Run Power Pivot for SharePoint 2013 configuration](#bkmk_run_configuration_tool)  
  
 [Verify Power Pivot Configuration](#bkmk_verify_powerpivot)  
  
 [Troubleshoot Issues](#bkmk_troubleshoot_issues)  
  
||  
|-|  
|**[!INCLUDE[applies](../../../../analysis-services/includes/applies-md.md)]**  SharePoint 2013|  
  
##  <a name="bkmk_run_configuration_tool"></a> Run Power Pivot for SharePoint 2013 configuration  
 **Note:** The [!INCLUDE[ssCurrent](../../../../advanced-analytics/r-services/includes/sscurrent-md.md)] setup wizard installs two different configuration tools for [!INCLUDE[ssGeminiLong](../../../../analysis-services/instances/install/windows/includes/ssgeminilong-md.md)]. They each support a different version of SharePoint.  
  
|Name|Description|  
|----------|-----------------|  
|[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration|SharePoint 2013|  
|[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Configuration Tool|SharePoint 2010 with SharePoint 2010 Service Pack 1 (SP1)|  
  
 **Note:** To complete the following steps, you must be a farm administrator. If you see an error message similar to the following:  
  
-   “The user is not a farm administrator. Please address the validation failures and try again.”  
  
 Either login as the account that installed SharePoint or configure the setup account as the primary administrator of the SharePoint Central Administration Site.  
  
1.  On the **Start** menu, click **All Programs**, and then click [!INCLUDE[ssCurrentUI](../../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], click **Configuration Tools**, and then click **[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] For SharePoint 2013 Configuration**. Toold is listed only when [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] for SharePoint is installed on the local server.  
  
2.  Click **Configure or Repair [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] for SharePoint** and then click **OK**.  
  
3.  The tool runs validation to verify the current state of [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] and what steps are required to complete configuration. Expand the window to full size. You should see a button bar at the bottom of the window that includes **Validate**, **Run**, and **Exit** commands.  
  
4.  On the **Parameters** tab:  
  
    1.  **Default Account UserName**: Enter a domain user account for the default account. This account will be used to provision services, including the [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] service application pool. Do not specify a built-in account such as Network Service or Local System. The tool blocks configurations that specify built-in accounts.  
  
    2.  **Database Server**: You can use SQL Server Database engine that is supported for the SharePoint farm.  
  
    3.  **Passphrase**: Enter a passphrase. If you are creating a new SharePoint farm, the passphrase is used whenever you add a server or application to the SharePoint farm. If the farm already exists, enter the passphrase that allows you to add a server application to the farm.  
  
    4.  **[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Server for Excel Services**: Type the name of an [!INCLUDE[ssASnoversion](../../../../analysis-services/includes/ssasnoversion-md.md)] SharePoint mode server. In a single-server deployment, it is the same as the database server. `[ServerName]\powerpivot`  
  
    5.  Click **Create Site Collection** in the left window. Note **Site URL** so you can reference it in later steps. If the SharePoint server is not already configured, then the configuration wizard defaults the web application, and site collection URLs to the root of `http://[ServerName]`. To modify the defaults review the following pages in the left window: **Create Default Web application** and **Deploy Web Application Solution**  
  
5.  Optionally, review the remaining input values used to complete each action. Click each action in the left window to see and review the details of the action. For more information about each one, see the section “Input values used to configure the server in [Configure or Repair Power Pivot for SharePoint 2010 (Power Pivot Configuration Tool)](http://msdn.microsoft.com/en-us/d61f49c5-efaa-4455-98f2-8c293fa50046) in this topic.  
  
6.  Optionally, remove any actions that you do not want to process at this time. For example, if you want to configure Secure Store Service later, click **Configure Secure Store Service**, and then clear the checkbox **Include this action in the task list**.  
  
7.  Click **Validate** to check whether the tool has sufficient information to process the actions in the list. If you see validation errors, click the warnings in the left pane to see details of the validation error. Correct any validation errors and then click **Validate** again.  
  
8.  Click **Run** to process all of the actions in the task list. Note that **Run** becomes available after you validate the actions. If **Run** is not enabled, click **Validate** first.  
  
 For more information, see [Configure or Repair Power Pivot for SharePoint 2010 (Power Pivot Configuration Tool)](http://msdn.microsoft.com/en-us/d61f49c5-efaa-4455-98f2-8c293fa50046)  
  
##  <a name="bkmk_verify_powerpivot"></a> Verify Power Pivot Configuration  
 **Services:**  
  
1.  In Central Administration, in System Settings, click **Manage services on server**.  
  
2.  Verify that **SQL Server Analysis Services** and **SQL Server [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] System Service** are started.  
  
 **Farm Feature:**  
  
1.  In Central Administration, in System Settings, click **Manage farm features**.  
  
2.  Verify that **[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Integration Feature** is **Active**.  
  
 **Site Collection Feature:**  
  
1.  Browse to your site URL that was created by the Configuration tool.  
  
     Click **Settings**![SharePoint Settings](../../../../analysis-services/media/as-sharepoint2013-settings-gear.gif "SharePoint Settings"), and then click **Site Settings**.  
  
     Click **Site Collection Features**.  
  
2.  Verify that **[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Feature Integration for Site Collections** is **Active**.  
  
 **[!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Service Application:**  
  
1.  In Central Administration, in the **Application Management**, click **Manage service applications**.  
  
2.  Verify the service application status is **started**. The default name is **Default [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Service Application**.  
  
     Click the name of the services application to open the [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Management Dashboard for the service application opens. On first use, the dashboard takes several minutes to load.  
  
 For more information, see [Verify a Power Pivot for SharePoint Installation](../../../../analysis-services/instances/install/windows/verify-a-power-pivot-for-sharepoint-installation.md).  
  
##  <a name="bkmk_troubleshoot_issues"></a> Troubleshoot Issues  
 To assist in troubleshooting issues, it is a good idea to verify the diagnostic logging is enabled.  
  
1.  In SharePoint Central Administration, click **Monitoring** and then click **Configure usage and health data collection**.  
  
2.  Verify **Enable usage data collection** is selected.  
  
3.  Verify the following events are selected:  
  
    -   Definition of usage fields for Education telemetry  
  
    -   [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Connects  
  
    -   [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Load Data Usage  
  
    -   [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Query Usage  
  
    -   [!INCLUDE[ssGemini](../../../../analysis-services/includes/ssgemini-md.md)] Unload Data Usage  
  
4.  Verify **Enable health data collection** is selected.  
  
5.  Click **OK**.  
  
 For more information on trouble shooting data refresh, see [Troubleshooting Power Pivot Data Refresh](http://social.technet.microsoft.com/wiki/contents/articles/3870.troubleshooting-powerpivot-data-refresh.aspx) (http://social.technet.microsoft.com/wiki/contents/articles/3870.troubleshooting-powerpivot-data-refresh.aspx).  
  
 For more information on the configuration tool, see [Power Pivot Configuration Tools](../../../../analysis-services/power-pivot-sharepoint/power-pivot-configuration-tools.md).  
  
  