---
title: "Tutorial: How to Locate and Start Reporting Services Tools (SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Reporting Services, tutorials"
  - "Reporting Services, tools"
  - "Reporting Services Configuration tool"
  - "Business Intelligence Development Studio, locating and starting tool"
  - "Model Designer [Reporting Services], locating and starting tool"
  - "Report Designer [Reporting Services], tutorials"
  - "tools [Reporting Services]"
  - "tutorials [Reporting Services]"
  - "Report Builder"
ms.assetid: 51ad69d8-fe92-4662-a7cd-d235692f0c03
caps.latest.revision: 63
ms.author: "maggies"
manager: "erikre"
---
# Tutorial: How to Locate and Start Reporting Services Tools (SSRS)
  This tutorial introduces the tools used to configure a report server, manage report server content and operations, and create and publish paginated and mobile [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] reports. If you are already familiar with the tools, you can move on to other tutorials to learn skills for using [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)]. For other tutorials, see [Reporting Services Tutorials &#40;SSRS&#41;](../../reporting-services/tutorials/reporting-services-tutorials-ssrs.md).  
  
  
##  <a name="bkmk_configuration_manager"></a> Reporting Services Configuration Manager (Native Mode)  
 Use the Native mode configuration manager to complete the following:  
  
-   Specify the service account.  
-   Create or upgrade the report server database.  
-   Modify the connection properties.  
-   Specify URLs.  
-   Manage encryption keys.  
-   Configure unattended report processing and e-mail report delivery.  
  
 **Installation:** [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager is installed when you install [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Native mode. For more information, see [Install Reporting Services Native Mode Report Server](assetid:///8f25e6dc-b753-400e-9e9a-50f4f35bf6c4).  
  
### To start the Reporting Services Configuration Manager  
  
1.  On the Windows start screen, type **reporting** and in the **Apps** search results, click **Reporting Services Configuration Manager**.  
  
     ![reporting services configuration manager on start](../../reporting-services/tools/media/bi-ssrs-configmanager-win8-startscreen.gif "reporting services configuration manager on start")  
  
     **Or**  
  
     Click **Start**, then click **Programs**, then click [!INCLUDE[ssCurrentUI](../../a9notintoc/includes/sscurrentui-md.md)], then click **Configuration Tools**, and then click **Reporting Services Configuration Manager**.  
  
     The **Report Server Installation Instance Selection** dialog box appears so that you can select the report server instance you want to configure.  
  
2.  In **Server Name**, specify the name of the computer on which the report server instance is installed. The name of the local computer is specified by default, but you can also type the name of a remote [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instance.  
  
     If you specify a remote computer, click **Find** to establish a connection. The report server must be configured for remote administration in advance. For more information, see [Configure a Report Server for Remote Administration](../../reporting-services/report-server/configure-a-report-server-for-remote-administration.md).  
  
3.  In **Instance Name**, choose the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] instance that you want to configure. Only [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)], [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)], and [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] report server instances appear in the list. You cannot configure earlier versions of [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)].  
  
4.  Click **Connect**.  
  
5.  To verify that you launched the tool, compare your results to the following image:  
  
     ![Reporting Services Configuration tool](../../reporting-services/tools/media/rs-ui-reportserverconfigkatmai.png "Reporting Services Configuration tool")  
  
 **Next Steps:** [Configure and Administer a Report Server &#40;SSRS Native Mode&#41;](../../reporting-services/report-server/configure-and-administer-a-report-server-ssrs-native-mode.md) and [Reporting Services Configuration Manager &#40;Native Mode&#41;](../../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md).  
  
##  Web Portal (Native Mode)  
 Use [Web portal (SSRS Native Mode)](../../reporting-services/web-portal-ssrs-native-mode.md) to set permissions, manage subscriptions and schedules, and work with reports. You can also use the Web Portal to view reports.  
  
 **Installation:** The Web Portal Is installed when you install [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Native mode: [Install Reporting Services Native Mode Report Server](assetid:///8f25e6dc-b753-400e-9e9a-50f4f35bf6c4)  
  
 Before you can open the Web Portal, you must have sufficient permissions (initially, only members of the local Administrators group have permissions that provide access to the Web Portal features). The Web Portal provides different pages and options depending on the role assignments of the current user. Users who have no permissions will get an empty page. Users with permissions to view reports will get links that they can click to open the reports. To learn more about permissions, see [Roles and Permissions &#40;Reporting Services&#41;](../../reporting-services/security/roles-and-permissions-reporting-services.md).  
  
### To start The Web Portal  
  
1.  Open your browser. For information on supported browsers and browser versions, see [Browser Support for Reporting Services and Power View](../../reporting-services/browser-support-for-reporting-services-and-power-view.md).  
  
2.  In the address bar of the Web browser, type the Web Portal URL. By default, the URL is **http://\<serverName>/reports**. You can use the Reporting Services Configuration tool to confirm the server name and URL. For more information about URLs used in [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)], see [Configure Report Server URLs  &#40;SSRS Configuration Manager&#41;](../../reporting-services/install/windows/configure-report-server-urls-ssrs-configuration-manager.md).  
  
3.  The Web Portal opens in the browser window. The startup page is the Home folder. Depending on permissions, you might see additional folders, hyperlinks to reports, and resource files within the startup page. You might also see additional buttons and commands on the toolbar.  
  
4.  If you run the Web Portal on the local report server, see [Configure a Native Mode Report Server for Local Administration &#40;SSRS&#41;](../../reporting-services/report-server/configure-a-native-mode-report-server-for-local-administration-ssrs.md).  
   
##  <a name="bkmk_managements_studio"></a> Management Studio  
 Report server administrators can use [!INCLUDE[ssManStudio](../../a9notintoc/includes/ssmanstudio-md.md)] to manage a report server alongside other [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] component servers. For more information, see [Use SQL Server Management Studio](../Topic/Use%20SQL%20Server%20Management%20Studio.md).  
  
### To Start SQL Server Management Studio  
  
1.  From the Windows Start Screen type **sql server** and in the **Apps** search results, click **SQL Server Management Studio**.  
  
     ![managment studio from windows start screen](../../reporting-services/tools/media/bi-ssms-win8-startscreen.gif "managment studio from windows start screen")  
  
     **Or**  
  
     Click **Start**, then click **All Programs**, then click [!INCLUDE[ssCurrentUI](../../a9notintoc/includes/sscurrentui-md.md)], and then click **SQL Server Management Studio**. The **Connect to Server** dialog box appears.  
  
2.  If the **Connect to Server** dialog box does not appear, in **Object Explorer**, click **Connect** and then select **Reporting Services**.  
  
3.  In the **Server type** list, select **Reporting Services**. If [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] is not on the list, it is not installed.  
  
4.  In the **Server name** list, select a report server instance. Local instances appear in the list. You can also type the name of a remote [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instance.  
  
5.  Click **Connect**. You can expand the root node to set server properties, modify role definitions, or turn off report server features.  
  
##  <a name="bkmk_ssdt"></a> SQL Server Data Tools with Report Designer and Report Wizard  
 You have a choice of two different tools for creating [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] paginated reports:    Report Designer and [Report Builder](#bkmk_report_builder).  
  
 Report Designer is available in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] - Visual Studio. The Report Designer design surface includes tabbed windows, wizards, and menus used to access report authoring features. The report designer tool becomes available when you choose a Report Server Project or a Report Server Wizard template  in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)]. To learn more, see [Reporting Services in SQL Server Data Tools &#40;SSDT&#41;](../../reporting-services/tools/reporting-services-in-sql-server-data-tools-ssdt.md). 
 
Download [SQL Server Data Tools](http://go.microsoft.com/fwlink/?LinkID=616714).  
  
### To start Report Designer  
  
1.  Open **SQL Server Data Tools**.  
  
2.  On the **File** menu, point to **New**, and then click **Project**.  
  
3.  In the **Project Types** list, click **Business Intelligence Projects**.  
  
4.  In the **Templates** list, click **Report Server Project**. The following diagram shows how the project templates appear in the dialog box:  
  
     ![New Project template dialog box](../../reporting-services/tools/media/rs-ui-newrsproject.gif "New Project template dialog box")  
  
5.  Type a name and location for the project, or click **Browse** and select a location.  
  
6.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)] [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] opens with the [!INCLUDE[vsprvs](../../a9retired/includes/vsprvs-md.md)] start page. Solution Explorer provides categories for creating reports and data sources. You can use these categories to create new reports and data sources. Tabbed windows appear when you create a report definition. The tabbed windows are Data, Layout, and Preview..  
  
 To get started on your first report, see [Create a Basic Table Report &#40;SSRS Tutorial&#41;](../../reporting-services/tutorials/create-a-basic-table-report-ssrs-tutorial.md). To learn more about query designers you can use within Report Designer, see [Query Design Tools &#40;SSRS&#41;](../../reporting-services/report-data/query-design-tools-ssrs.md).  
  
##  <a name="bkmk_report_builder"></a> [!INCLUDE[ssRBnoversion](../../a9notintoc/includes/ssrbnoversion-md.md)]  
 [Report Builder in SQL Server 2016](../../reporting-services/report-builder/report-builder-in-sql-server-2016.md) is a stand-alone application you can use to create paginated reports outside [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. You can customize and update all existing reports, regardless of whether they were created in Report Designer or in previous versions of [!INCLUDE[ssRBnoversion](../../a9notintoc/includes/ssrbnoversion-md.md)]. You can install it from the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] web portal or from the Microsoft Download Center.  
  
 [Download Report Builder](http://go.microsoft.com/fwlink/?LinkID=219138) from the Microsoft Download Center.  
  
### To start [!INCLUDE[ssRBnoversion](../../a9notintoc/includes/ssrbnoversion-md.md)]  
  
1.  In the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] web portal, on the  **New** menu, select **Paginated Report**.  
  
     ![PBI_SSMRP_NewMenu](../../reporting-services/mobile-reports/media/pbi-ssmrp-newmenu.png "PBI_SSMRP_NewMenu")  
  
2.  If [!INCLUDE[ssRBnoversion](../../a9notintoc/includes/ssrbnoversion-md.md)] isn't installed on this computer yet, select **Get [!INCLUDE[ssRBnoversion](../../a9notintoc/includes/ssrbnoversion-md.md)]**.  
  
     Or  
  
     [Download Report Builder](http://go.microsoft.com/fwlink/?LinkID=219138) from the Microsoft Download Center.  
  
3.  [!INCLUDE[ssRBnoversion](../../a9notintoc/includes/ssrbnoversion-md.md)] opens and you can create or open a paginated report.  
  
##  <a name="bkmk_mobile_report_pub"></a> [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/includes/ss-mobilereptpub-long-md.md)]  
 Use [SQL Server Mobile Report Publisher](../../a9retired/sql-server-mobile-report-publisher.md) to create mobile reports you can view in the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] web portal and in mobile devices such as iPads and iPhones.   You can install it from the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] web portal or  from the Microsoft Download Center.  
  
 [Download SQL Server Mobile Report Publisher](http://go.microsoft.com/fwlink/?LinkID=733527) from the Microsoft Download Center.  
  
### To start [!INCLUDE[SS_MobileReptPub_Short](../../a9notintoc/includes/ss-mobilereptpub-short-md.md)]  
  
1.  In the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] web portal, on the  **New** menu, select **Mobile Report**.  
  
     ![PBI_SSMRP_NewMenu](../../reporting-services/mobile-reports/media/pbi-ssmrp-newmenu.png "PBI_SSMRP_NewMenu")  
  
2.  If [!INCLUDE[SS_MobileReptPub_Short](../../a9notintoc/includes/ss-mobilereptpub-short-md.md)] isn't installed on this computer yet, select **Get [!INCLUDE[SS_MobileReptPub_Short](../../a9notintoc/includes/ss-mobilereptpub-short-md.md)]**.  
  
     Or  
  
     [Download SQL Server Mobile Report Publisher](http://go.microsoft.com/fwlink/?LinkID=733527) from the Microsoft Download Center.  
  
3.  [!INCLUDE[SS_MobileReptPub_Short](../../a9notintoc/includes/ss-mobilereptpub-short-md.md)] opens and you can create or open a mobile report.  
  
## See Also  
*  [Download SQL Server Mobile Report Publisher](http://go.microsoft.com/fwlink/?LinkID=733527)   
*  [Download Report Builder](http://go.microsoft.com/fwlink/?LinkID=219138)  
*  [Download SQL Server Data Tools](http://go.microsoft.com/fwlink/?LinkID=616714) 
*  [Install Reporting Services SharePoint Mode](../../reporting-services/install/windows/install-reporting-services-sharepoint-mode.md)   
*  [Reporting Services Report Server](../../reporting-services/report-server/sharepoint/reporting-services-report-server.md)   
*  [Query Design Tools &#40;SSRS&#41;](../../reporting-services/report-data/query-design-tools-ssrs.md)   
*  [Reporting Services Tutorials &#40;SSRS&#41;](../../reporting-services/tutorials/reporting-services-tutorials-ssrs.md)  
  
  