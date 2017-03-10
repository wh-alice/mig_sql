---
title: "View a SQL Server Audit Log | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "audits [SQL Server], viewing logs"
  - "viewing audit logs"
  - "logs [SQL Server], audit"
ms.assetid: e8feaca0-7852-422b-895a-319b965d8d9b
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# View a SQL Server Audit Log
  This topic describes how to view a SQL Server audit log in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To view a SQL Server audit log, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires the **CONTROL SERVER** permission.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view a SQL Server audit log  
  
1.  In Object Explorer, expand the **Security** folder.  
  
2.  Expand the **Audits** folder.  
  
3.  Right-click the audit log that you want to view and select **View Audit Logs**. This opens the **Log File Viewer –***server_name* dialog box. For more information, see [Log File Viewer F1 Help](../../../relational-databases/logs/log-file-viewer-f1-help.md).  
  
4.  When finished, click **Close**.  
  
 [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] recommends viewing the audit log by using the Log File Viewer. However, if you are creating an automated monitoring system, the information in the audit file can be read directly by using the [sys.fn_get_audit_file &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-get-audit-file-transact-sql.md) function. Reading the file directly returns data in a slightly different (unprocessed) format. See **sys.fn_get_audit_file** for more information.  
  
## See Also  
 [SQL Server Audit &#40;Database Engine&#41;](../../../relational-databases/security/auditing/sql-server-audit-database-engine.md)   
 [Write SQL Server Audit Events to the Security Log](../../../relational-databases/security/auditing/write-sql-server-audit-events-to-the-security-log.md)  
  
  