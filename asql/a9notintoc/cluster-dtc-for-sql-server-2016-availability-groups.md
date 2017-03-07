---
title: "Cluster DTC for SQL Server 2016 Availability Groups | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 379b8576-e030-4c95-ae69-25ec0249c49e
caps.latest.revision: 40
ms.author: "mikeray"
manager: "jhubbard"
---
# Cluster DTC for SQL Server 2016 Availability Groups
This topic describes the requirements and steps for clustering the Microsoft Distributed Transaction Coordinator (DTC) service for [!INCLUDE[ssHADR](../a9notintoc/includes/sshadr-md.md)]. For additional information regarding distributed transactions and [!INCLUDE[ssHADR](../a9notintoc/includes/sshadr-md.md)], see [Cross-Database Transactions and Distributed Transactions for Always On Availability Groups and Database Mirroring (SQL Server)](../database-engine/availability-groups/windows/transactions-always-on-availability-and-database-mirroring.md).

 ## Checklist: Preliminary Requirements
||Task|Reference|  
|------|-----------------|----------|  
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|Ensure all nodes, services and the Availability Group have been configured correctly.|[Prerequisites, Restrictions, and Recommendations for Always On Availability Groups (SQL Server)](../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md)|
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|Ensure Availability Group DTC requirements have been met.|[Cross-Database Transactions and Distributed Transactions for Always On Availability Groups and Database Mirroring (SQL Server)](../database-engine/availability-groups/windows/transactions-always-on-availability-and-database-mirroring.md)

## Checklist: Clustered DTC Resource Dependencies
||Task|Reference|  
|------|-----------------|----------|  
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|A shared-storage drive.|[Configuring the Shared-Storage Drive](https://msdn.microsoft.com/library/cc982358(v=bts.10).aspx). Consider using drive letter **M**.|
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|A unique DTC Network Name resource.  The name will be registered as a cluster computer object in Active Directory.<br /><br />Make sure that either of the following is true:<br /><br />•	The user who creates the DTC Network Name resource has the Create Computer objects permission to the OU or the container where the DTC Network Name resource will reside.<br /><br />•	If the user does not have the Create Computer objects permission, ask a domain administrator to prestage a cluster computer object for the DTC Network Name resource.|[Prestage Cluster Computer Objects in Active Directory Domain Services](https://technet.microsoft.com/library/dn466519(v=ws.11).aspx)|
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|A valid available static IP address and the appropriate subnet mask for that IP address.||

## Cluster the DTC Resource
Once you have created your Availability Group resource, create a clustered DTC resource and add it to the Availability Group.  A sample script can be seen at [Prepare cluster DTC resources and created clustered DTC resource](#ClusterDTC), below.


## Checklist: Post Clustered DTC Resource Configurations
||Task|Reference|  
|------|-----------------|----------|  
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|Enable network access securely for the clustered DTC resource.|[Enable Network Access Securely for MS DTC](https://technet.microsoft.com/library/cc753620(v=ws.10).aspx)|
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|Stop and disable local DTC service.|[Configure How a Service Is Started](https://technet.microsoft.com/library/cc755249(v=ws.11).aspx)|
|![Checkbox](../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|Cycle the SQL Server service for each instance in the Availability Group.  Failover the Availability Group as needed.|[Perform a Planned Manual Failover of an Availability Group (SQL Server)](../database-engine/availability-groups/windows/perform-a-planned-manual-failover-of-an-availability-group-sql-server.md)<br /><br />[Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md)|

- If the server is Windows Server 2012 R2 the operating system must have [KB 3030373](http://support.microsoft.com/kb/3090973) applied.

- Prepare the servers for Availability Groups according to the checklists at [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups](../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md).

- Configure the server instances for [**Always On Availability Groups**](../database-engine/availability-groups/windows/configuration-of-a-server-instance-for-always-on-availability-groups-sql-server.md).

### RESOURCES


[More Information on Testing DTC on Availability Groups:](https://blogs.technet.microsoft.com/dataplatform/2016/01/25/sql-server-2016-dtc-support-in-availability-groups/)

[Monitoring Always on Availability groups system views](https://msdn.microsoft.com/library/ff878305.aspx)

[Create Availability Group Step by Step](https://msdn.microsoft.com/library/ff878307.aspx)


[SQL Server 2016 DTC Support in Availability Groups](http://blogs.technet.microsoft.com/dataplatform/2016/01/25/sql-server-2016-dtc-support-in-availability-groups/) 

[External link: Configure DTC for a clustered instance of SQL Server with Windows Server 2008 R2](http://sqlha.com/2013/03/12/how-to-properly-configure-dtc-for-clustered-instances-of-sql-server-with-windows-server-2008-r2/)







 


