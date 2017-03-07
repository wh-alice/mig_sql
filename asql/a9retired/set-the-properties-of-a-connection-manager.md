---
title: "Set the Properties of a Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "connection managers [Integration Services], modifying"
  - "modifying connection managers"
ms.assetid: 54793114-2198-4d80-8091-e241d5a5d13c
caps.latest.revision: 36
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Set the Properties of a Connection Manager
  All connection managers can be configured using the **Properties** window.  
  
 [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] also provides custom dialog boxes for modifying the different types of connection managers in [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)]. The dialog box has a different set of options depending on the connection manager type.  
  
### To modify a connection manager using the Properties window  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project that contains the package you want.  
  
2.  In Solution Explorer, double-click the package to open it.  
  
3.  In SSIS Designer, click the **Control Flow** tab, the **Data Flow** tab, or the **Event Handler** tab to make the **Connection Managers** area available.  
  
4.  Right-click the connection manager and click **Properties**.  
  
5.  In the **Properties** window, edit the property values. The **Properties** window provides access to some properties that are not configurable in the standard editor for a connection manager.  
  
6.  Click **OK**.  
  
7.  To save the updated package, click **Save Selected Items** on the **File** menu.  
  
### To modify a connection manager using a connection manager dialog box  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project that contains the package you want.  
  
2.  In Solution Explorer, double-click the package to open it.  
  
3.  In [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer, click the **Control Flow** tab, the **Data Flow** tab, or the **Event Handler** tab to make the **Connection Managers** area available.  
  
4.  In the **Connection Managers** area, double-click the connection manager to open the **Connection Manager** dialog box. For information about specific connection manager types, and the options available for each type, see the following table.  
  
    |Connection manager|Options|  
    |------------------------|-------------|  
    |[ADO Connection Manager](../integration-services/connection-manager/ado-connection-manager.md)|[Configure OLE DB Connection Manager](../integration-services/connection-manager/configure-ole-db-connection-manager.md)|  
    |[ADO.NET Connection Manager](../integration-services/connection-manager/ado.net-connection-manager.md)|[Configure ADO.NET Connection Manager](../integration-services/connection-manager/configure-ado.net-connection-manager.md)|  
    |[Analysis Services Connection Manager](../integration-services/connection-manager/analysis-services-connection-manager.md)|[Add Analysis Services Connection Manager Dialog Box UI Reference](../integration-services/connection-manager/add-analysis-services-connection-manager-dialog-box-ui-reference.md)|  
    |[Excel Connection Manager](../integration-services/connection-manager/excel-connection-manager.md)|[Excel Connection Manager Editor](../integration-services/connection-manager/excel-connection-manager-editor.md)|  
    |[File Connection Manager](../integration-services/connection-manager/file-connection-manager.md)|[File Connection Manager Editor](../integration-services/connection-manager/file-connection-manager-editor.md)|  
    |[Multiple Files Connection Manager](../integration-services/connection-manager/multiple-files-connection-manager.md)|[Add File Connection Manager Dialog Box UI Reference](../integration-services/connection-manager/add-file-connection-manager-dialog-box-ui-reference.md)|  
    |[Flat File Connection Manager](../integration-services/connection-manager/flat-file-connection-manager.md)|[Flat File Connection Manager Editor &#40;General Page&#41;](../integration-services/connection-manager/flat-file-connection-manager-editor-general-page.md)<br /><br /> [Flat File Connection Manager Editor &#40;Columns Page&#41;](../integration-services/connection-manager/flat-file-connection-manager-editor-columns-page.md)<br /><br /> [Flat File Connection Manager Editor &#40;Advanced Page&#41;](../integration-services/connection-manager/flat-file-connection-manager-editor-advanced-page.md)<br /><br /> [Flat File Connection Manager Editor &#40;Preview Page&#41;](../integration-services/connection-manager/flat-file-connection-manager-editor-preview-page.md)|  
    |[Multiple Flat Files Connection Manager](../integration-services/connection-manager/multiple-flat-files-connection-manager.md)|[Multiple Flat Files Connection Manager Editor &#40;General Page&#41;](../integration-services/connection-manager/multiple-flat-files-connection-manager-editor-general-page.md)<br /><br /> [Multiple Flat Files Connection Manager Editor &#40;Columns Page&#41;](../integration-services/connection-manager/multiple-flat-files-connection-manager-editor-columns-page.md)<br /><br /> [Multiple Flat Files Connection Manager Editor &#40;Advanced Page&#41;](../integration-services/connection-manager/multiple-flat-files-connection-manager-editor-advanced-page.md)<br /><br /> [Multiple Flat Files Connection Manager Editor &#40;Preview Page&#41;](../integration-services/connection-manager/multiple-flat-files-connection-manager-editor-preview-page.md)|  
    |[FTP Connection Manager](../integration-services/connection-manager/ftp-connection-manager.md)|[FTP Connection Manager Editor](../integration-services/connection-manager/ftp-connection-manager-editor.md)|  
    |[HTTP Connection Manager](../integration-services/connection-manager/http-connection-manager.md)|[HTTP Connection Manager Editor &#40;Server Page&#41;](../integration-services/connection-manager/http-connection-manager-editor-server-page.md)<br /><br /> [HTTP Connection Manager Editor &#40;Proxy Page&#41;](../integration-services/connection-manager/http-connection-manager-editor-proxy-page.md)|  
    |[MSMQ Connection Manager](../integration-services/connection-manager/msmq-connection-manager.md)|[MSMQ Connection Manager Editor](../integration-services/connection-manager/msmq-connection-manager-editor.md)|  
    |[ODBC Connection Manager](../integration-services/connection-manager/odbc-connection-manager.md)|[ODBC Connection Manager UI Reference](../integration-services/connection-manager/odbc-connection-manager-ui-reference.md)|  
    |[OLE DB Connection Manager](../integration-services/connection-manager/ole-db-connection-manager.md)|[Configure OLE DB Connection Manager](../integration-services/connection-manager/configure-ole-db-connection-manager.md)|  
    |[SMO Connection Manager](../integration-services/connection-manager/smo-connection-manager.md)|[SMO Connection Manager Editor](../integration-services/connection-manager/smo-connection-manager-editor.md)|  
    |[SMTP Connection Manager](../integration-services/connection-manager/smtp-connection-manager.md)|[SMTP Connection Manager Editor](../integration-services/connection-manager/smtp-connection-manager-editor.md)|  
    |[SQL Server Compact Edition Connection Manager](../integration-services/connection-manager/sql-server-compact-edition-connection-manager.md)|[SQL Server Compact Edition Connection Manager Editor &#40;Connection Page&#41;](../integration-services/connection-manager/sql-server-compact-edition-connection-manager-editor-connection-page.md)<br /><br /> [SQL Server Compact Edition Connection Manager Editor &#40;All Page&#41;](../integration-services/connection-manager/sql-server-compact-edition-connection-manager-editor-all-page.md)|  
    |[WMI Connection Manager](../integration-services/connection-manager/wmi-connection-manager.md)|[WMI Connection Manager Editor](../integration-services/connection-manager/wmi-connection-manager-editor.md)|  
  
5.  To save the updated package, click **Save Selected Items** on the **File** menu.  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Connections](../integration-services/connection-manager/integration-services-ssis-connections.md)   
 [Add, Delete, or Share a Connection Manager in a Package](../a9retired/add-delete-or-share-a-connection-manager-in-a-package.md)  
  
  