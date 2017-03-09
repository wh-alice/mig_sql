---
title: "About URL Reservations and Registration  (SSRS Configuration Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-18"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "URL reservations"
  - "URL registration"
  - "Report Server service, URL reservations"
ms.assetid: c2c460c3-e749-4efd-aa02-0f8a98ddbc76
caps.latest.revision: 15
ms.author: "asaxton"
manager: "erikre"
---
# About URL Reservations and Registration  (SSRS Configuration Manager)
  URLs for Reporting Services applications are defined as URL reservations in HTTP.SYS. A URL reservation defines the syntax of a URL endpoint to a Web application. URL reservations are defined for both the Report Server Web service and Report Manager when you configure the applications on the report server. URL reservations are created for you automatically when configure URLs through Setup or the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool:  
  
-   Setup will create URL reservations using default values. If Setup installs the default configuration, it will reserve two URLs; one of the Report Server Web service and another for Report Manager. You can use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool to add more URLs or modify the default URLs that Setup creates.  
  
-   The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool will create a URL reservation based on the URL you specify in the **Web Service URL** or **Web Portal URL** pages in the tool.  
  
 Both Setup and the tool will also assign permissions on the URL to the Report Server service, check for duplicate instances, and add the URL reservation to HTTP.SYS. Never create or modify a Reporting Services URL reservation directly using HttpCfg.exe or other tool. If you skip a step or set an invalid value, you will encounter problems that might be difficult to diagnose or fix.  
  
> [!NOTE]  
>  HTTP.SYS is an operating system component that listens for network requests and routes them to a request queue. In this release of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], HTTP.SYS establishes and maintains the request queue for the Report Server Web service and Report Manager. Internet Information Services (IIS) is no longer used to host or access [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] applications. For more information about HTTP.SYS functionality, see [HTTP Server API](http://go.microsoft.com/fwlink/?LinkId=92652) on MSDN.  
  
##  <a name="ReportingServicesURLs"></a> URLs in Reporting Services  
 In a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installation, you can access the following tools, applications, and items through URLs:  
  
-   Report Server Web service  
  
-   Web portal  
  
-   Reports that have been published to a report server  
  
 Other published URL-addressable items, such as shared data sources, should not be accessed through URLs as stand-alone items. The report server does not display those items in a meaningful format when viewed in a browser window.  
  
> [!NOTE]  
>  This topic does not describe URL access to specific reports that are stored on the report server. For more information about URL access to these items, see [Access Report Server Items Using URL Access](../../../reporting-services/access-report-server-items-using-url-access.md) in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.  
  
##  <a name="URLreservation"></a> URL Reservation and Registration  
 A URL reservation defines the URLs that can be used to access a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] application. [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] will reserve one or more URLs for the Report Server Web service and the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] in HTTP.SYS, and then register them when the service starts. By appending parameters to the URL, you can open reports through the Web service. Reservations and registration is provided by HTTP.SYS. For more information, see [Namespace Reservations, Registration, and Routing](http://go.microsoft.com/fwlink/?LinkId=92653) on MSDN.  
  
 *URL reservation* is a process by which a URL endpoint to a Web application is created and stored in HTTP.SYS. HTTP.SYS is the common repository of all URL reservations that are defined on a computer and defines a set of common rules that guarantee unique URL reservations.  
  
 *URL registration* occurs when the service starts. The request queue is created and HTTP.SYS begins routing requests to that queue. A URL endpoint must be registered before requests that are directed to that endpoint are added to the queue. When the Report Server service starts, it will register all URLs that it has reserved for all enabled applications. This means that the Web service must be enabled in order for registration to occur. If you set the **WebServiceAndHTTPAccessEnabled** property to **False** in the Surface Area Configuration for Reporting Services facet of Policy-Based Management, the URL for the Web service will not register when the service starts.  
  
 URLs are unregistered if you stop the service or recycle the Web service or the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] application domain. If you modify a URL reservation while the service is running, the report server will recycle the application domain immediately so that the old URL can be unregistered and the new one put into use.  
  
 A few simple examples illustrate the concept of a URL reservation and how it relates to URL addresses used for [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] applications. A key point to notice is that the URL reservation has different syntax than the the URL you use to access the application:  
  
|URL Reservation in HTTP.SYS|URL|Explanation|  
|---------------------------------|---------|-----------------|  
|http://+:80/reportserver|http://\<computername>/reportserver<br /><br /> http://\<IPAddress>/reportserver<br /><br /> http://localhost/reportserver|The URL reservation specifies a wildcard (+) on port 80. This puts into the report server queue any incoming request that specifies a host that resolves to the report server computer on port 80. Notice that with this URL reservation, any number of URLs can be used to access the report server.<br /><br /> This is the default URL reservation for a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server for most operating systems.|  
|http://123.45.67.0:80/reportserver|http://123.45.67.0/reportserver|This URL reservation specifies an IP address and is much more restrictive than the wildcard URL reservation. Only URLs that include the IP address can be used to connect to the report server. Given this URL reservation, a request to a report server at http://\<computername>/reportserver or http://localhost/reportserver would fail.|  
  
##  <a name="DefaultURLs"></a> Default URLs  
 If you install [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in the default configuration, Setup will reserve URLs for the Report Server Web service and the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)]. You can also accept these default values when you define URL reservations in the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool. Default URLs will include an instance name if you install [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)] or if you install [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] as a named instance.  
  
> [!IMPORTANT]  
>  The instance character is an underscore character (**_**).  
  
 URL reservations include a port number. The following operating systems will allow multiple Web applications to share a port:  
  
-   [!INCLUDE[win8srv](../../../database-engine/availability-groups/windows/includes/win8srv-md.md)] R2  
  
-   [!INCLUDE[win8srv](../../../database-engine/availability-groups/windows/includes/win8srv-md.md)]  
  
-   [!INCLUDE[winserver2008r2](../../../database-engine/configure/windows/includes/winserver2008r2-md.md)]  
  
-   [!INCLUDE[firstref_longhorn](../../../database-engine/install/windows/includes/firstref-longhorn-md.md)]  
  
-   [!INCLUDE[win7](../../../database-engine/configure/windows/includes/win7-md.md)]  
  
-   [!INCLUDE[wiprlhlong](../../../relational-databases/replication/includes/wiprlhlong-md.md)]  
  
|Instance Type|Application|Default URL|Actual URL reservation in HTTP.SYS|  
|-------------------|-----------------|-----------------|----------------------------------------|  
|Default instance|Report Server Web service|http://\<servername>/reportserver|http://\<servername>:80/reportserver|  
|Default instance|Web portal|http://\<servername>/reportserver|http://\<servername>:80/reportserver|  
|Named instance|Report Server Web service|http://\<servername>/reportserver_\<instancename>|http://\<servername>:80/reportserver_\<instancename>|  
|Named instance|Web portal|http://\<servername>/reports_\<instancename>|http://\<servername>:80/reports_\<instancename>|  
|SQL Server Express|Report Server Web service|http://\<servername>/reportserver_SQLExpress|http://\<servername>:80/reportserver_SQLExpress|  
|SQL Server Express|Web portal|http://\<servername>/reports_SQLExpress|http://\<servername>:80/reports_SQLExpress|  
  
##  <a name="URLPermissionsAccounts"></a> Authentication and Service Identity for Reporting Services URLs  
 [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] URL reservations specify the service account of the Report Server service. The account under which the service runs is used for all URLs that are created for the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] applications that run in the same instance. The service identity of the report server instance is stored in the RSReportServer.config file.  
  
 The service account has no default value. However, specifying a service account is required during Setup and is specified in **URLReservation** in RSReportServer.config even if you install the server in files-only mode. Valid values for the service account include a domain user account, **LocalSystem**, or **NetworkService**.  
  
 Anonymous access is disabled because the default security is **RSWindowsNegotiate**. For intranet access, report server URLs use network computer names. If you want to configure [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] for Internet connections, you must use different settings. For more information about authentication, see [Authentication with the Report Server](../../../reporting-services/security/authentication-with-the-report-server.md) in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.  
  
##  <a name="URLlocalAdmin"></a> URLs for Local Administration  
 You can use http://localhost/reportserver or http://localhost/reports if you specified a strong or weak wildcard for the URL reservation.  
  
 The http://localhost URL is interpreted as http://127.0.0.1. If you pegged the URL reservation to a computer name or single IP address, you cannot use localhost unless you create an additional reservation for 127.0.0.1 on the local computer. Similarly, if localhost or 127.0.0.1 is disabled on your computer, you cannot use that URL.  
  
 [!INCLUDE[wiprlhlong](../../../relational-databases/replication/includes/wiprlhlong-md.md)], [!INCLUDE[nextref_longhorn](../../../database-engine/configure/windows/includes/nextref-longhorn-md.md)] and later include new security features to minimize the risk of accidentally running programs with elevated privileges. Additional steps are necessary to enable local administration on these operating systems. For more information, see [Configure a Native Mode Report Server for Local Administration &#40;SSRS&#41;](../../../reporting-services/report-server/configure-a-native-mode-report-server-for-local-administration-ssrs.md).  
  
## See Also  
 [Configure a URL  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-a-url-ssrs-configuration-manager.md)   
 [URL Reservation Syntax  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/url-reservation-syntax-ssrs-configuration-manager.md)  
  
  