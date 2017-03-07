---
title: "Power Pivot Configuration Tools | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f934c51d-01fe-4e67-971d-cd87d7d7ee51
caps.latest.revision: 26
ms.author: "owend"
manager: "erikre"
---
# Power Pivot Configuration Tools
  Configure, repair, or remove a [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] [!INCLUDE[ssGeminiShort](../../analysis-services/includes/ssgeminishort-md.md)] with the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tools.  
  
 The [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] Setup Wizard does not install [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] configuration tools for SharePoint. The configuration tools will be available for download in a future release of [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
 This topic describes the general use of the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] tools and the differences between them.  
  
 **[!INCLUDE[applies](../../analysis-services/includes/applies-md.md)]**  SharePoint 2013  
  
 **In this Topic:**  
  
-   [Requirements for Using the Configuration Tools](#bkmk_requirements)  
  
-   [Two Versions of the Configuration Tool](#bkmk_twoversions)  
  
-   [Overview of Using a Power Pivot Configuration Tool](#bkmk_overview)  
  
-   [Start One of the Power Pivot Configuration Tools](#bmkm_start_tool)  
  
##  <a name="bkmk_requirements"></a> Requirements for Using the Configuration Tools  
  
-   You must be a farm administrator.  
  
-   You must be a server administrator on the Analysis Services instance (SharePoint 2010 only).  
  
-   You must be db_owner on the farm’s configuration database.  
  
-   There are no TCP/IP port requirements for using the configuration tools and therefore you should not have to configure your firewall to accommodate the configuration tools. The configuration tool expects the web applications and shared services are available as part of the SharePoint platform. You may need to configure your firewall for the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] server. For more information, see [Configure the Windows Firewall to Allow Analysis Services Access](../../analysis-services/instances/configure-the-windows-firewall-to-allow-analysis-services-access.md).  
  
##  <a name="bkmk_twoversions"></a> Two Versions of the Configuration Tool  
 The [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] Setup Wizard installs the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tool for SharePoint 2010 as well as a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tool for SharePoint 2013.  
  
 The tools can only be used with a [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] or [!INCLUDE[ssSQL11SP1](../../analysis-services/instances/install/windows/includes/sssql11sp1-md.md)] instance of [!INCLUDE[ssGeminiShort](../../analysis-services/includes/ssgeminishort-md.md)]. Do not use them with [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] installations.  
  
|Name|Supported version of SharePoint|Detailed Configuration|  
|----------|-------------------------------------|----------------------------|  
|[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration|SharePoint 2013|[Configure or Repair Power Pivot for SharePoint 2013 &#40;Power Pivot Configuration Tool&#41;](../Topic/Configure%20or%20Repair%20Power%20Pivot%20for%20SharePoint%202013%20\(Power%20Pivot%20Configuration%20Tool\).md)|  
|[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tool|SharePoint 2010 with SharePoint 2010|[Configure or Repair Power Pivot for SharePoint 2010 (Power Pivot Configuration Tool)](http://msdn.microsoft.com/en-us/d61f49c5-efaa-4455-98f2-8c293fa50046)|  
  
###  <a name="bkmk_sum_differences_betweentools"></a> How the Two Configuration Tools are Different  
 The two versions of the Configuration tool are similar but there are differences in the configuration steps the two tools run. The differences are due to changes between SharePoint 2010 and SharePoint 2013 as well as the architecture differences between the SQL Server 2012 SP1 version of [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint and the previous versions of [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint.  
  
 The following table describes new and changed features in the **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration** tool. The table also describes features in the **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tool** that are not in the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration tool. The rows in the table are in the same order as the tabs in the configuration tools.  
  
|[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration|[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tool|  
|--------------------------------------------------------------|-----------------------------------------------|  
|The main page has a new option for **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Server for Excel Services**. The option supports the new architecture with [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] running outside of the SharePoint farm. You configure Excel Services to use one or more [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] servers that are running in SharePoint mode.<br /><br /> ![PowerPivot Server in the new configuration tool](../../analysis-services/power-pivot-sharepoint/media/as-powerpivot-configtool-differences-new-mainpage.gif "PowerPivot Server in the new configuration tool")||  
||The 2010 tool includes the page **Register SQL Server Analysis Services ([!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)]) on Local Server** to configure a local instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. This page is not part of the 2013 tool because there is no local instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)].<br /><br /> ![AS service account in the old configuration tool](../../analysis-services/power-pivot-sharepoint/media/as-powerpivot-configtool-differences-old-register-as-localserver.gif "AS service account in the old configuration tool")|  
||The page **Create [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Service Application** has an extra option of **Upgrade Workbooks to enable data refresh**. This option is not available in the 2013 tool.<br /><br /> ![upgrade workbooks in old configuration tool](../../analysis-services/power-pivot-sharepoint/media/as-powerpivot-configtool-differences-old-uprgadeworkbooks.gif "upgrade workbooks in old configuration tool")|  
|The 2013 tool has a new page **Configure [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Servers**. This page supports the new architecture of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] running outside the SharePoint farm. By default, the server name that was typed on the main page in the text box **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Server for Excel Services**, is also be listed on the **Configure [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Servers**.<br /><br /> ![Register PowerPivot servers new configuration tool](../../analysis-services/power-pivot-sharepoint/media/as-powerpivot-configtool-differences-new-powerpivot-servers.gif "Register PowerPivot servers new configuration tool")||  
|The 2013 tool has a new page **Register [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] addin as Excel Services Usage Tracker**. SharePoint 2010 Excel Services does not track usage data for [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)].||  
||The 2010 tool includes the page **Add MSOLAP.5 as a trusted Provider** to register MSOLAP so that Excel Services in SharePoint 2010 can load [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] models. This page is not part of the 2013 tool. SharePoint 2013 Excel Services does not use the MSOLAP provider to load models.|  
  
##  <a name="bkmk_overview"></a> Overview of Using a Power Pivot Configuration Tool  
 When you start one of the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tools, the tool evaluates the existing installation to determine which operations are applicable. On a new installation, only the configuration task is available. After the server is configured, the remove task appears. If you started with a [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] instance, upgrade will also be enabled in the list of available tasks.  
  
 If you are not familiar with Central Administration or Windows PowerShell, you can run the configuration tool as an alternative to complete a [!INCLUDE[ssGeminiShort](../../analysis-services/includes/ssgeminishort-md.md)] installation.  
  
 Additionally, the tool can detect whether the farm is configured or required features are missing. If the SharePoint program files are installed but the farm is not configured, the tool provides actions for configuring both the farm and the [!INCLUDE[ssGeminiShort](../../analysis-services/includes/ssgeminishort-md.md)] installation.  
  
 You can review the **Script** tab to learn and understand how to configure [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] and SharePoint using Windows PowerShell. For more information, see the following:  
  
-   [Power Pivot Configuration using Windows PowerShell](../../analysis-services/power-pivot-sharepoint/power-pivot-configuration-using-windows-powershell.md)  
  
-   [PowerShell Reference for Power Pivot for SharePoint](../../analysis-services/powershell/powershell-reference-for-power-pivot-for-sharepoint.md)  
  
> [!NOTE]  
>  The tool does not configure Reporting Services. If you are adding Reporting Services to your SharePoint environment, you need to install and configure Reporting Services separately. For more information, see the following:  
>   
>  -   [Install The First Report Server in SharePoint Mode](../../reporting-services/install/windows/install-the-first-report-server-in-sharepoint-mode.md).  
> -   [Install Reporting Services SharePoint Mode for SharePoint 2010](http://msdn.microsoft.com/en-us/47efa72e-1735-4387-8485-f8994fb08c8c).  
  
##  <a name="bmkm_start_tool"></a> Start One of the Power Pivot Configuration Tools  
  
1.  On the **Start** screen, type **powerpivot**  
  
     On the **Start** screen, type **powerpivot** or on the **Start** menu, click **All Programs**, click [!INCLUDE[ssCurrentUI](../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], click **Configuration Tools**, and then click one of the following:  
  
    -   **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration Tool**.  
  
    -   **OR**  
  
    -   **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint 2013 Configuration**.  
  
     ![two powerpivot configuratoin tools](../../analysis-services/instances/install/windows/media/as-powerpivot-configtools-bothicons.gif "two powerpivot configuratoin tools")  
  
     **Note:** The tools are available only when [!INCLUDE[ssGeminiShort](../../analysis-services/includes/ssgeminishort-md.md)] is installed on the local server.  
  
2.  At startup, the configuration tools check the status of your installation and provide tasks that are valid for your installation.  
  
3.  Depending on the current state of your installation, one or more of the following tasks can be performed:  
  
    1.  Click **Configure or Repair [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint** to complete post-installation tasks, or to repair an installation.  
  
    2.  Click **Remove Features, Services, Applications and Solutions** to remove features and solutions from the farm.  
  
    3.  Click **Upgrade Features, Services, Applications and Solutions** to upgrade features and solutions that were installed using a previous version of [!INCLUDE[ssGeminiShort](../../analysis-services/includes/ssgeminishort-md.md)].  
  
     For example, the image shows the startup page of the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Configuration for SharePoint 2013 tool.  
  
     ![PowerPivot for SharePoint 2013 Configuration Tool](../../analysis-services/power-pivot-sharepoint/media/ssas-powerpivot-configtool-4-sharepoint2013-choosemode.gif "PowerPivot for SharePoint 2013 Configuration Tool")  
  
 Each task is composed of individual actions that address some aspect of server configuration. For example, the configuration task includes actions for deploying solutions, creating a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] service application, activating features, and configuring data refresh. The list of actions will vary based on the current state of your installation. If an action is not needed, the tool excludes it from the task list.  
  
 When you click Run , the tool processes all actions in batch mode. Although each action appears as a separate item in the task list, all actions that are included in the task process together. Only actions that pass a validation check are processed. You might need to add or change some of the input values to pass the validation check.  
  
## Related Content  
 [Upgrade Power Pivot for SharePoint](../../database-engine/install/windows/upgrade-power-pivot-for-sharepoint.md) Describes the workflow that upgrades an existing installation that is already in a farm.  
  
 [Uninstall Power Pivot for SharePoint](../../sql-server/install/uninstall-power-pivot-for-sharepoint.md) Describes the workflow that removes [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint services, solutions, and application pages from a farm.  
  
 [Power Pivot Configuration using Windows PowerShell](../../analysis-services/power-pivot-sharepoint/power-pivot-configuration-using-windows-powershell.md)  
  
 [Power Pivot Server Administration and Configuration in Central Administration](../../analysis-services/power-pivot-sharepoint/power-pivot-server-administration-and-configuration-in-central-administration.md)  
  
  