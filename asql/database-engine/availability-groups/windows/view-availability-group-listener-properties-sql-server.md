---
title: "View Availability Group Listener Properties (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-11"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.availabilitygrouplistenerproperties.general.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], monitoring"
ms.assetid: aca0d016-3228-40b8-bdc3-285ed6d9b280
caps.latest.revision: 18
ms.author: "mikeray"
manager: "jhubbard"
---
# View Availability Group Listener Properties (SQL Server)
  This topic describes how to view the properties of an Always On *availability group listener* by using [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] in [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].  
  
-   **To view listener properties, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
 **To view listener properties**  
  
1.  In Object Explorer, connect to a server instance that hosts any availability replica of the availability group whose listener you want to view. Click the server name to expand the server tree.  
  
2.  Expand the **Always On High Availability** node and the **Availability Groups** node.  
  
3.  Expand the node of the availability group, and expand the **Availability Groups Listeners** node.  
  
4.  Right-click the listener that you want to view, and select the **Properties** command.  
  
5.  This opens the **Availability Group Listener Properties** dialog box. For more information, see [Availability Group Listener Properties (Dialog Box)](#AgListenerPropertiesDialog), later in this topic.  
  
###  <a name="AgListenerPropertiesDialog"></a> Availability Group Listener Properties (Dialog Box)  
 **Listener DNS Name**  
 The network name of the availability group listener.  
  
 **Port**  
 The TCP port used by this listener.  
  
> [!NOTE]  
>  If you are connected the primary replica, you can use this field to modify the port number of the listener. This requires ALTER AVAILABILITY GROUP permission on the availability group, CONTROL AVAILABILITY GROUP permission, ALTER ANY AVAILABILITY GROUP permission, or CONTROL SERVER permission.  
  
 **Network Mode**  
 Indicates the TCP protocol used by the listener, one of:  
  
 **DHCP**  
 The listener uses an dynamic IP address that is assigned by a server running the Dynamic Host Configuration Protocol (DHCP).  
  
 **Static IP**  
 The listener uses one or more Static IP addresses. To access the different subnets, an availability group listener must use static IP addresses.  
  
 The grid displays each of the subnets on which the listener listens and the IP address associated with that subnet.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
 **To view listener properties**  
  
 To monitor the availability group listeners, use the following views:  
  
 [sys.availability_group_listener_ip_addresses](../../../relational-databases/reference/system-catalog-views/sys.availability-group-listener-ip-addresses-transact-sql.md)  
 Returns a row for every conformant virtual IP address that is currently online for an availability group listener.  
  
 **Column names:** listener_id, ip_address, ip_subnet_mask, is_dhcp, network_subnet_ip, network_subnet_prefix_length, network_subnet_ipv4_mask, state, state_desc  
  
 [sys.availability_group_listeners](../../../relational-databases/reference/system-catalog-views/sys.availability-group-listeners-transact-sql.md)  
 For a given availability group, returns either zero rows indicating that no network name is associated with the availability group, or returns a row for each availability-group listener configuration in the WSFC cluster.  
  
 **Column names:** group_id, listener_id, dns_name, port, is_conformant, ip_configuration_string_from_cluster  
  
 [sys.dm_tcp_listener_states](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-tcp-listener-states-transact-sql.md)  
 Returns a row containing dynamic-state information for each TCP listener.  
  
 **Column names:** listener_id, ip_address, is_ipv4, port, type, type_desc, state, state_desc, start_time  
  
> [!NOTE]  
>  For more information about using [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] to monitor your [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] environment, see [Monitor Availability Groups &#40;Transact-SQL&#41;](../../../database-engine/availability-groups/windows/monitor-availability-groups-transact-sql.md).  
  
##  <a name="RelatedTasks"></a> Related Tasks  
  
-   [Create or Configure an Availability Group Listener &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/create-or-configure-an-availability-group-listener-sql-server.md)  
  
-   [Remove an Availability Group Listener &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-an-availability-group-listener-sql-server.md)  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Availability Group Listeners, Client Connectivity, and Application Failover &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/listeners-client-connectivity-application-failover.md)   
 [Monitor Availability Groups &#40;Transact-SQL&#41;](../../../database-engine/availability-groups/windows/monitor-availability-groups-transact-sql.md)  
  
  