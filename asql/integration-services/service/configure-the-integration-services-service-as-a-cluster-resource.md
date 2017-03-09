---
title: "Configure the Integration Services Service as a Cluster Resource | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 367835aa-9855-4791-a989-b3d08402ad4c
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
---
# Configure the Integration Services Service as a Cluster Resource
  For those customers who conclude that the advantages of configuring the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service as a cluster resource outweigh the disadvantages, this section contains the necessary configuration instructions. However, [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] does not recommend that the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service be configured as a cluster resource.  
  
 To configure the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service as a cluster resource, you need to complete the following tasks.  
  
-   Install [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] on a cluster.  
  
     To install [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] on a cluster, you must install [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] on each node in the cluster.  
  
-   Configure [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] as a cluster resource.  
  
     With Integration Services installed on each node in the cluster, you need to configure Integration Services as a cluster resource. When you configure the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service as a cluster resource, you can add the service to the same resource group as the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)], or to a different group. The following table describes the possible advantages and disadvantages in selecting a resource group.  
  
    |When Integration Services and SQL Server are in the same resource group|When Integration Services and SQL Server are in different resource groups|  
    |-----------------------------------------------------------------------------|-------------------------------------------------------------------------------|  
    |Client computers can use [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to manage packages stored in the msdb database because both the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] and [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service are running on the same virtual server. This configuration avoids the delegation issues of the double-hop scenario.|Client computers cannot use [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to manage packages stored in the msdb database. The client can connect to the virtual server on which the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is running. However, that computer cannot delegate the user's credentials to the virtual server on which [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is running. This is known as a double-hop scenario.|  
    |The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service competes with other [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services for CPU and other computer resources.|The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service does not compete with other [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services for CPU and other computer resources because the different resource groups are configured on different nodes.|  
    |The loading and saving of packages to the msdb database is faster and generates less network traffic because both services are running on the same computer.|The loading and saving of packages to the msdb database might be slower and generate more network traffic.|  
    |Both services are online or offline at the same time.|The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service might be online while the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] is offline. Thus, the packages stored in the msdb database of the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] are unavailable.|  
    |The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service cannot be moved quickly to another node if it is required.|The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service can be moved more quickly to another node if it is required.|  
  
     After you have decided to which resource group you will add [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)], you have to configure [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] as a cluster resource in that group.  
  
-   Configure the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service and package store.  
  
     Having configured [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] as a cluster resource, you must modify the location and the content of the configuration file for the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service on each node in the cluster. These modifications make both the configuration file and the package store available to all nodes if there is a failover. After you modify the location and content of the configuration file, you have to bring the service online.  
  
-   Bring the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service online as a cluster resource.  
  
 After configuring the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service on a cluster, or on any server, you might have to configure DCOM permissions before you can connect to the service from a client computer. For more information, see [Connect to a Remote Integration Services Server &#40;SSIS Service&#41;](../../integration-services/service/connect-to-a-remote-integration-services-server-ssis-service.md).  
  
 The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service cannot delegate credentials. Therefore, you cannot use [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)] to manage packages stored in the msdb database when the following conditions are true:  
  
-   The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] are running on separate servers or virtual servers.  
  
-   The client that is running [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] is a third computer.  
  
 The client can connect to the virtual server on which the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is running. However, that computer cannot delegate the user's credentials to the virtual server on which [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is running. This is known as a double-hop scenario.  
  
### To Install Integration Services on a Cluster  
  
1.  Install and configure a cluster with one or more nodes.  
  
2.  (Optional) Install clustered services, such as the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
3.  Install [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] on each node of the cluster.  
  
### To Configure Integration Services as a Cluster Resource  
  
1.  Open the **Cluster Administrator**.  
  
2.  In the console tree, select the Groups folder.  
  
3.  In the results pane, select the group to which you plan to add [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]:  
  
    -   To add Integrations Services as a cluster resource to the same resource group as [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], select the group to which [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] belongs.  
  
    -   To add Integrations Services as a cluster resource to a different group than [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], select a group other than the group to which [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] belongs.  
  
4.  On the **File** menu, point to **New**, and then click **Resource**.  
  
5.  On the **New Resource** page of the Resource Wizard, type a name and select **“Generic Service”** as the **Service Type**. Do not change the value of **Group**. Click **Next**.  
  
6.  On the **Possible Owners** page, add or remove the nodes of the cluster as the possible owners of the resource. Click **Next**.  
  
7.  To add dependencies, on the **Dependencies** page, select a resource under **Available resources**, and then click **Add**. In case of a failover, both [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the shared disk that stores [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages should come back online before [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] is brought online. After you have selected the dependencies, click **Next**.  
  
     For more information, see [Add Dependencies to a SQL Server Resource](../../sql-server/failover-clusters/windows/add-dependencies-to-a-sql-server-resource.md).  
  
8.  On the **Generic Service Parameters** page, enter **MsDtsServer** as the name of the service. Click **Next**.  
  
9. On the **Registry Replication** page, click **Add** to add the registry key that identifies the location of the configuration file for the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service. This file must be located on a shared disk that is in the same resource group as the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service.  
  
10. In the **Registry Key** dialog box, type **SOFTWARE\Microsoft\Microsoft SQL Server\100\SSIS\ServiceConfigFile**. Click **OK**, and then click **Finish**.  
  
     The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service has now been added as a cluster resource.  
  
### To Configure the Integration Services Service and Package Store  
  
1.  Locate the configuration file at %ProgramFiles%\Microsoft SQL Server\100\DTS\Binn\MsDtsSrvr.ini.xml. Copy it to the shared disk for the group to which you added the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service.  
  
2.  On the shared disk, create a new folder named **Packages** to serve as the package store. Grant List Folders and Write permissions on the new folder to appropriate users and groups.  
  
3.  On the shared disk, open the configuration file in a text or XML editor. Change the value of the **ServerName** element to the name of the virtual [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that is in the same resource group.  
  
4.  Change the value of the **StorePath** element to the fully-qualified path of the **Packages** folder created on the shared disk in a previous step.  
  
5.  Update the value of **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\100\SSIS\ServiceConfigFile** in the Registry to the fully-qualified path and file name of the service configuration file on the shared disk.  
  
### To bring the Integration Services service online  
  
-   In the **Cluster Administrator**, select the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service, right-click, and select **Bring Online** from the popup menu. The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is now online as a cluster resource.  
  
  