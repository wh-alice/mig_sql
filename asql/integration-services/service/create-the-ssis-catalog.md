---
title: "Create the SSIS Catalog | Microsoft Docs"
ms.custom: 
  - "ssisdev020617"
ms.date: "2016-11-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6ed56d36-18d9-40c2-b51f-f2a4c71d1e73
caps.latest.revision: 17
ms.author: "douglasl"
manager: "jhubbard"
---
# Create the SSIS Catalog
  After you design and test packages in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)], you can deploy the projects that contain the packages to an [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server. Before you can deploy the projects to the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server, the server must contain the **SSISDB** catalog. The installation program for [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] does not automatically create the catalog; you need to manually create the catalog by using the following instructions.  
  
 You can create the SSISDB catalog in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. You also create the catalog programmatically by using Windows PowerShell.  
  
### To create the SSISDB catalog in SQL Server Management Studio  
  
1.  Open [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
2.  Connect to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Database Engine.  
  
3.  In Object Explorer, expand the server node, right-click the **Integration Services Catalogs** node, and then click **Create Catalog**.  
  
4.  Click **Enable CLR Integration**.  
  
     The catalog uses CLR stored procedures.  
  
5.  Click **Enable automatic execution of Integration Services stored procedure at SQL Server startup** to enable the [catalog.startup](../../integration-services/system/stored-procedures/catalog.startup.md) stored procedure to run each time the [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] server instance is restarted.  
  
     The stored procedure performs maintenance of the state of operations for the SSISDB catalog. It fixes the status of any packages there were running if and when the [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] server instance goes down.  
  
6.  Enter a password, and then click **Ok**.  
  
     The password protects the database master key that is used for encrypting the catalog data. Save the password in a secure location. It is recommended that you also back up the database master key. For more information, see [Back Up a Database Master Key](../../relational-databases/security/encryption/back-up-a-database-master-key.md).  
  
### To create the SSISDB catalog programmatically  
  
1.  Execute the following PowerShell script:  
  
    ```  
    # Load the IntegrationServices Assembly  
    [Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.Management.IntegrationServices")  
  
    # Store the IntegrationServices Assembly namespace to avoid typing it every time  
    $ISNamespace = "Microsoft.SqlServer.Management.IntegrationServices"  
  
    Write-Host "Connecting to server ..."  
  
    # Create a connection to the server  
    $sqlConnectionString = "Data Source=localhost;Initial Catalog=master;Integrated Security=SSPI;"  
    $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $sqlConnectionString  
  
    # Create the Integration Services object  
    $integrationServices = New-Object $ISNamespace".IntegrationServices" $sqlConnection  
  
    # Provision a new SSIS Catalog  
    $catalog = New-Object $ISNamespace".Catalog" ($integrationServices, "SSISDB", "P@assword1")  
    $catalog.Create()  
  
    ```  
  
     For more examples of how to use Windows PowerShell and the <xref:Microsoft.SqlServer.Management.IntegrationServices> namespace, see the blog entry, [SSIS and PowerShell in SQL Server 2012](http://go.microsoft.com/fwlink/?LinkId=242539), on blogs.msdn.com. For an overview of the namespace and code examples, see the blog entry, [A Glimpse of the SSIS Catalog Managed Object Model](http://go.microsoft.com/fwlink/?LinkId=254267), on blogs.msdn.com.  
  
## See Also  
 [SSIS Catalog](../../integration-services/service/ssis-catalog.md)   
 [Backup, Restore, and Move the SSIS Catalog](../../integration-services/service/backup-restore-and-move-the-ssis-catalog.md)  
  
  