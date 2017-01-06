---
title: "Add a Custom Report to Management Studio | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Management Studio [SQL Server], custom reports"
ms.assetid: 3cf8d726-0a90-4f80-98d0-352a2a59be0f
caps.latest.revision: 5
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Add a Custom Report to Management Studio
This topic describes how to create a simple Reporting Services report that is saved as an .rdl file, and then add that rdl file to SQL Server Management Studio as a custom report. SSRS can create a wide variety of sophisticated reports. To create a report by using this topic, you must have SQL Server Data Tools (SSDT) installed on the computer. You do not have to install SSRS on SQL Server to run a custom report using Management Studio.  
  
[Report Samples](http://go.microsoft.com/fwlink/?LinkId=81792), including the standard reports created by Microsoft, are available for download. These samples may be modified by using SQL Server Data Tools (SSDT).  
  
### To create a simple report saved as an .rdl file  
  
1.  Click **Start**, point to **Programs**, point to **Microsoft SQL Server**, and then click **SQL Server Data Tools**.  
  
2.  On the **File** menu, point to **New**, and then click **Project**.  
  
3.  In the **Project Types** list, click **Business Intelligence Projects**.  
  
4.  In the **Templates** list, click **Report Server Project Wizard**.  
  
5.  In **Name**, type **ConnectionsReport**, and then click **OK**.  
  
6.  On the **Report Wizard** introduction page, click **Next**.  
  
7.  On the **Select the Data Source** page, in the Name box type a name for this connection to your Database Engine, and then click **Edit**.  
  
8.  In the **Connection Properties** dialog box, in the **Server name** box, type the name of your instance of the Database Engine.  
  
9. In the **Select or enter a database name** box, type the name of any database on your SQL Server, such as **AdventureWorks2012**, and then click **OK**.  
  
10. On the **Select the Data Source** page, click **Next**.  
  
11. On the **Design the Query** page, in the **Query string** box, type the following Transact-SQL statement that lists the current connections to your Database Engine, and then click **Next**. The Report Wizard Query string box will not accept report parameters. More complex custom reports must be created manually.  
  
    **SELECT session_id, net_transport FROM sys.dm_exec_connections;**  
  
12. On the **Select the Report Type** page, select **Tabular**, and then click **Finish**.  
  
13. On the **Completing the Wizard** page, in the **Report name** box, type **ConnectionsReport**, and then click **Finish** to create and save the report.  
  
14. Close SQL Server Data Tools.  
  
15. Copy **ConnectionsReport.rdl** to a folder that you created on the database server for custom reports.  
  
### To add a report to Management Studio  
  
-   In Management Studio, right-click a node in Object Explorer, point to **Reports**, click **Custom Reports**. In the **Open File** dialog box, locate the custom reports folder and select the **ConnectionsReport.rdl** file, and then click **Open**.  
  
    When a new custom report is first opened from an Object Explorer node, the custom report is added to the most recently used list under **Custom Reports** on the shortcut menu of that node. When a standard report is opened for the first time, it will also appear on the most recently used list under **Custom Reports**. If a custom report file is deleted, the next time that the item is selected, a prompt will appear to delete the item from the most recently used list.  
  
    1.  To change the number of files that are displayed on the recently used list, on the **Tools** menu, click **Options,** expand the **Environment** folder, and then click **General**.  
  
    2.  Adjust the number for **Display files in recently used list**.  
  
## See Also  
[Custom Reports in Management Studio](../ssms/custom-reports-in-management-studio.md)  
[Use Custom Reports with Object Explorer Node Properties](../ssms/use-custom-reports-with-object-explorer-node-properties.md)  
[Unsuppress Run Custom Report Warnings](../ssms/unsuppress-run-custom-report-warnings.md)  
[SQL Server Reporting Services](http://msdn.microsoft.com/en-us/b8d18d3d-9db0-43e7-8286-7b46cc3a37ed)  
  
