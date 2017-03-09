---
title: "Browser Support for Reporting Services and Power View | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-09-14"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
helpviewer_keywords: 
  - "displaying reports"
  - "scripts [Reporting Services], requirements"
  - "viewing reports"
  - "browsers [Reporting Services]"
  - "Web browsers [Reporting Services], about browser support"
  - "browsing reports [Reporting Services]"
  - "components [Reporting Services], browsers"
  - "Web browsers [Reporting Services]"
ms.assetid: 48a75bbb-0029-4c43-891d-dc8f4fc0ebe1
caps.latest.revision: 121
ms.author: "asaxton"
manager: "erikre"
---
# Browser Support for Reporting Services and Power View
[!INCLUDE[feedback_stackoverflow_msdn_connect_md](../integration-services/includes/feedback-stackoverflow-msdn-connect-md.md)]

Learn about what browser versions are supported for managing and viewing [!INCLUDE[ssCurrent](../advanced-analytics/r-services/includes/sscurrent-md.md)] [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], the ReportViewer Controls and Power View.
  
 **Applies to:** [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Native mode | [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] SharePoint mode  
  
##  <a name="bkmk_webportal"></a> Browser requirements for the [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)]

The following is the current list of browsers supported for the [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)].

**Microsoft Windows**  
*Windows 7, 8.1, 10; Windows Server 2008 R2, 2012, 2012 R2*
- Microsoft Edge (+)
- Microsoft Internet Explorer 10 or 11
- Google Chrome (+)
- Mozilla Firefox (+)

**Apple OS X**  
*OS X 10.9-10.11*

- Apple Safari (+)
- Google Chrome (+)
- Mozilla Firefox (+)

**Apple iOS**  
*iPhone and iPad with iOS 9*

- Apple Safari (+)

**Google Android**  
*Phones and tablets with Android 4.4 (KitKat) or later*

- Google Chrome (+)

 **(+)** Latest publicly released version  
  
##  <a name="bkmk_reportviewer"></a> Browser requirements for the ReportViewer web control (2015) 
 The following is the current list of browsers supported with the ReportViewer web control (2015). The report viewer supports viewing reports from [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] web portal and SharePoint libraries.  
  
**Microsoft Windows**  
*Windows 7, 8.1, 10; Windows Server 2008 R2, 2012, 2012 R2*

- Microsoft Edge (+)
- Microsoft Internet Explorer 10 or 11
- Google Chrome (+)
- Mozilla Firefox (+)

**Apple OS X**  
*OS X 10.9-10.11*

- Apple Safari (+)
  
 **(+)** Latest publicly released version  
  
 If you are using a SharePoint product that is integrated with [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], see  [Plan browser support in SharePoint 2016](http://technet.microsoft.com//library/cc263526\(v=office.16\).aspx).  
  
###  <a name="bkmk_authentication"></a> Authentication requirements  
 Browsers support specific authentication schemes that must be handled by the report server in order for the client request to succeed. The following table identifies the default authentication types supported by each browser running on a Windows operating system.  
  
|**Browser type**|**Supports**|**Browser default**|**Server default**|  
|----------------------|------------------|-------------------------|------------------------|  
|**Microsoft Edge** (+)|Negotiate, Kerberos, NTLM, Basic|Negotiate|Yes. The default authentication settings work with Edge.|  
|**Microsoft Internet Explorer**|Negotiate, Kerberos, NTLM, Basic|Negotiate|Yes. The default authentication settings work with Internet Explorer.|  
|**Google Chrome**(+)|Negotiate, NTLM, Basic|Negotiate|Yes. The default authentication settings work with Chrome.|  
|**Mozilla Firefox**(+)|NTLM, Basic|NTLM|Yes. The default authentication settings work with Firefox.|  
|**Apple Safari**(+)|NTLM, Basic|Basic|Yes. The default authentication settings work with Safari.|  
  
 **(+)** Latest publicly released version  
  
### Script requirements for viewing reports  
 To use the report viewer, configure your browser to run scripts.  
  
 If scripting is not enabled, you will see an error message similar to the following when you open a report:  
  
-   **Your browser does not support scripts or has been configured to not allow scripts to run. Click here to view this report without scripts**.  
  
 If you choose to view the report without script support, the report is rendered in HTML without report viewer capabilities such as the report toolbar and the document map.  
  
> [!NOTE]  
>  The report toolbar is part of the HTML Viewer component. By default the toolbar appears at the top of every report that is rendered in a browser window. The report viewer provides features include the ability to search the report for information, scroll to a specific page, and adjust the page size for viewing purposes. For more information about the report toolbar or HTML Viewer, see [HTML Viewer and the Report Toolbar](../reporting-services/html-viewer-and-the-report-toolbar.md).  
  
##  <a name="bkmk_controls"></a> Browser support for ReportViewer web server controls in Visual Studio  
 The ReportViewer Web server control is used to embed report functionality in an ASP.NET web application. The controls are included with Visual Studio and support different browsers and browser versions than the other components described in this topic. The type of browser used to view the application determines the kind of ReportViewer functionality that you can provide in your application. Use the table provided in this topic to determine which of the supported browsers are subject to report functionality restrictions and the supported platforms.  
  
 Use a browser that has script support enabled. If the browser cannot run scripts, you cannot view the report.  
  
**Microsoft Windows**  
*Windows 7, 8.1, 10; Windows Server 2008 R2, 2012, 2012 R2*

- Microsoft Edge (+)
- Microsoft Internet Explorer 10 or 11
- Google Chrome (+)
- Mozilla Firefox (+)
  
 **(+)** Latest publicly released version  
  
##  <a name="bkmk_powerview"></a> Power View browser support  

**Microsoft Windows**  
*Windows 7, 8.1, 10; Windows Server 2008 R2, 2012, 2012 R2*

- Microsoft Internet Explorer 10 or 11
- Mozilla Firefox (+)
  
**Apple OS X**  
*OS X 10.9-10.11*

- Apple Safari (+)
  
 **(+)** Latest publicly released version  
  
 For more information on the SharePoint 2016 browser support, see [Plan browser support in SharePoint 2013](http://technet.microsoft.com//library/cc263526\(v=office.16\).aspx).  
  
## See Also  
[Finding and Viewing Reports in the web portal &#40;Report Builder and SSRS&#41;](http://msdn.microsoft.com/en-us/8556807e-f2e2-4a7b-bb1b-ac5ea1872e51)  
[Reporting Services Tools](../reporting-services/tools/reporting-services-tools.md)  
[Web portal (SSRS Native Mode)](http://msdn.microsoft.com/en-us/7349e626-6ed5-4d21-b05f-cf042ad9ad70)  
[HTML Viewer and the Report Toolbar](../reporting-services/html-viewer-and-the-report-toolbar.md)  
[URL Access Parameter Reference](../reporting-services/url-access-parameter-reference.md)  
[!INCLUDE[feedback_stackoverflow_msdn_connect_md](../integration-services/includes/feedback-stackoverflow-msdn-connect-md.md)]
