---
title: "Connect to an Azure SQL Database (SSAS) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.asvs.bidtoolset.connsqlazure.f1"
ms.assetid: 4e0344e9-1822-4698-ad22-05f1f341ced7
caps.latest.revision: 13
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Connect to an Azure SQL Database (SSAS)
  This page of the **Table Import Wizard** enables you to connect to a [!INCLUDE[ssSDSFull](../a9retired/includes/sssdsfull-md.md)]. To access the wizard from the [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)], on the **Model** menu, click **Import from Data Source**.  
  
> [!NOTE]  
>  If you are connecting to an Azure DataMarket dataset, see [Connect to a Report or Data Feed &#40;SSAS&#41;](../a9retired/connect-to-a-report-or-data-feed-ssas.md).  
  
 The [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] is a hosted, relational database that you connect to by using SQL Server Authentication. For more information about [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)], see the web site [SQL Database](http://go.microsoft.com/fwlink/?LinkID=157856). To connect to a data source, you must have the appropriate provider installed on your computer.  
  
> [!NOTE]  
>  The credentials of the current user are used when selecting a database in this page. However, import will not succeed if the user specified in the Impersonation Information page does not have sufficient privileges to read from the selected database.  
  
## UIElement List  
 **Friendly connection name**  
 Type a unique name for this data source connection. This is a required field.  
  
 **Server name**  
 Type the name, or IP address, of the server to connect to.  
  
 **User name**  
 Specify a user name for the database connection.  
  
 This user name is used when constructing the connection string for the data source. These credentials are also used when previewing and filtering data in the Table Properties window and in the Import Wizard. These credentials are not used to import or refresh data; the Windows credentials specified on the Impersonation Information page are used instead.  
  
 **Password**  
 Specify a password for the database connection.  
  
 **Save my password**  
 Specify whether the password you have entered in the **Password** box is stored.  
  
 **Database name**  
 Select a database from the list of databases.  
  
 **Advanced**  
 Set additional connection properties by using the **Set Advanced Properties** dialog box. For more information, see [Set Advanced Properties &#40;SSAS&#41;](../a9retired/set-advanced-properties-ssas.md).  
  
 **Test Connection**  
 Attempt to establish a connection to the data source using the current settings. A message is displayed indicating whether the connection is successful.  
  
  