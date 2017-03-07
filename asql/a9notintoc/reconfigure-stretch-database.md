---
title: "Reconfigure Stretch Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server (starting with 2016)"
helpviewer_keywords: 
  - "Stretch Database, reconfiguring"
  - "Stretch Database, adding tables"
  - "reconfiguring Stretch Database"
  - "adding tables to Stretch Database"
ms.assetid: 7d3eb2ad-ca0f-4486-a08c-a62b27e77197
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Reconfigure Stretch Database
  Select **Tasks | Stretch | Reconfigure** for a database in SQL Server Management Studio to open the **Enable Database for Stretch** wizard and reconfigure Stretch Database by adding more tables. You can also use Transact-SQL to enable Stretch Database for individual tables.  
  
 Enabling Stretch Database on a database or a table requires db_owner permissions. Enabling Stretch Database on  a table also requires ALTER permissions on the table.  
  
##  <a name="EnableWizardTable"></a> Use the wizard to reconfigure Stretch Database  
 **Launch the wizard**  
 1.  In SQL Server Management Studio, in Object Explorer, select the table on which you want to enable Stretch.  
  
2.  Right-click and select **Tasks**, and then select **Stretch**, and then select **Enable** to launch the wizard.  
  
 **Introduction**  
 Review the purpose of the wizard and the prerequisites. If you've already reviewed this page, select **Do not show this page again**.  
  
 **Select Database Tables**  
 Select the additional tables that you want to enable. The **Stretched** column indicates whether the table is already enabled.  
  
 **Validate**  
 Review the results of validation. The wizard validates the requirements for enabling Stretch Database on the selected table and identifies any blocking issues.  
  
 **Summary**  
 Review the values that you entered and the options that you selected in the wizard.  
  
 **Finish**  
 Run the wizard and review the results.  
  
## See Also  
 [Enable Stretch Database for a table](../sql-server/install/enable-stretch-database-for-a-table.md)  
  
  