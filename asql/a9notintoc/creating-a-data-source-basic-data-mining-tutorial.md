---
title: "Creating a Data Source (Basic Data Mining Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: d7107c32-69ed-49a8-9b6e-32753eebf42c
caps.latest.revision: 51
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Creating a Data Source (Basic Data Mining Tutorial)
A *data source* is a data connection that is saved and managed in your project and deployed to your [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database. The data source contains the names of the server and database where your source data resides, in addition to any other required connection properties.  
  
> [!IMPORTANT]  
> The name of the database is [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)]. If you have not already installed this database, see the [Microsoft SQL Sample Databases](http://go.microsoft.com/fwlink/?LinkId=88417) page.  
  
### To create a data source  
  
1.  In **Solution Explorer**, right-click the **Data Sources** folder and select **New Data Source**.  
  
2.  On the **Welcome to the Data Source Wizard** page, click **Next**.  
  
3.  On the **Select how to define the connection** page, click **New** to add a connection to the [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] database.  
  
4.  In the **Provider** list in **Connection Manager**, select **Native OLE DB\SQL Server Native Client 11.0**.  
  
5.  In the **Server name** box, type or select the name of the server on which you installed [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)].  
  
    For example, type **localhost** if the database is hosted on the local server.  
  
6.  In the **Log onto the server** group, select **Use Windows Authentication**.  
  
    > [!IMPORTANT]  
    > Whenever possible, implementers should use Windows Authentication, as it provides a more secure authentication method than SQL Server Authentication. However, SQL Server Authentication is provided for backward compatibility. For more information about authentication methods, see [Database Engine Configuration - Server Configuration](../a9retired/database-engine-configuration-server-configuration.md).  
  
7.  In the **Select or enter a database name** list, select [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] and then click **OK**.  
  
8.  Click **Next**.  
  
9. On the **Impersonation Information** page, click **Use the service account**, and then click **Next**.  
  
    On the **Completing the Wizard** page, notice that, by default, the data source is named Adventure Works DW 2012.  
  
10. Click **Finish**.  
  
    The new data source, Adventure Works DW 2012, appears in the **Data Sources** folder in Solution Explorer.  
  
## Next Task in Lesson  
[Creating a Data Source View &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/creating-a-data-source-view-basic-data-mining-tutorial.md)  
  
## Previous Task in Lesson  
[Creating an Analysis Services Project &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/creating-an-analysis-services-project-basic-data-mining-tutorial.md)  
  
## See Also  
[Create a Data Source &#40;SSAS Multidimensional&#41;](../analysis-services/multidimensional-models/create-a-data-source-ssas-multidimensional.md)  
[Defining a Data Source](../analysis-services/tutorials/lesson-1-2-defining-a-data-source.md)  
[Set Impersonation Options &#40;SSAS - Multidimensional&#41;](../analysis-services/multidimensional-models/set-impersonation-options-ssas-multidimensional.md)  
  
