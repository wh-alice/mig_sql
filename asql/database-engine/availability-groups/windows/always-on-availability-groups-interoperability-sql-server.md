---
title: "Always On Availability Groups: Interoperability (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], about"
  - "Availability Groups [SQL Server], interoperability"
ms.assetid: daf87f90-2623-42ca-912c-b8f07d210510
caps.latest.revision: 21
ms.author: "mikeray"
manager: "jhubbard"
---
# Always On Availability Groups: Interoperability (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic documents interoperability of [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] with other [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
 **In This Topic:**  
  
-   [Features That Interoperate with Always On Availability Groups](../../../database-engine/availability-groups/windows/always-on-availability-groups-interoperability-sql-server.md#Interop)  
  
-   [Features that Interoperate with Always On Availability Groups with Restrictions](../../../database-engine/availability-groups/windows/always-on-availability-groups-interoperability-sql-server.md#restrictions)  
  
-   [Features that Do Not Interoperate with Always On Availability Groups](../../../database-engine/availability-groups/windows/always-on-availability-groups-interoperability-sql-server.md#NoInterop)  
  
-   [Related Content](../../../database-engine/availability-groups/windows/always-on-availability-groups-interoperability-sql-server.md#RelatedContent)  
  
##  <a name="Interop"></a> Features That Interoperate with Always On Availability Groups  
 The following table lists [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features that interoperate with [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. A link in the **More Information** column indicates that interoperability considerations exist for a given feature.  
  
|Feature|More Information|  
|-------------|----------------------|  
|Change data capture|[Replication, Change Tracking, Change Data Capture, and Always On Availability Groups &#40;SQL Server&#41;](../Topic/Replication,%20Change%20Tracking,%20Change%20Data%20Capture,%20and%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)|  
|Change tracking|[Replication, Change Tracking, Change Data Capture, and Always On Availability Groups &#40;SQL Server&#41;](../Topic/Replication,%20Change%20Tracking,%20Change%20Data%20Capture,%20and%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)|  
|Contained databases|[Contained Databases with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/contained-databases-with-always-on-availability-groups-sql-server.md)|  
|Database encryption|[Encrypted Databases with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/encrypted-databases-with-always-on-availability-groups-sql-server.md)|  
|Database snapshots|[Database Snapshots with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/database-snapshots-with-always-on-availability-groups-sql-server.md)|  
|FILESTREAM and FileTable|[FILESTREAM and FileTable with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/filestream-and-filetable-with-always-on-availability-groups-sql-server.md)|  
|Full-text search|Note: Full-Text indexes are synchronized with Always On secondary databases.|  
|Log shipping|[Prerequisites for Migrating from Log Shipping to Always On Availability Groups &#40;SQL Server&#41;](../Topic/Prerequisites%20for%20Migrating%20from%20Log%20Shipping%20to%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)|  
|Remote Blob Store (RBS)|[Remote Blob Store &#40;RBS&#41; and Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remote-blob-store-rbs-and-always-on-availability-groups-sql-server.md)|  
|Replication|[Configure Replication for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-replication-for-always-on-availability-groups-sql-server.md)<br /><br /> [Maintaining an Always On Publication Database &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/maintaining-an-always-on-publication-database-sql-server.md)<br /><br /> [Replication, Change Tracking, Change Data Capture, and Always On Availability Groups &#40;SQL Server&#41;](../Topic/Replication,%20Change%20Tracking,%20Change%20Data%20Capture,%20and%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)<br /><br /> [Replication Subscribers and Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/replication-subscribers-and-always-on-availability-groups-sql-server.md)|  
|Analysis Services|[Analysis Services with Always On Availability Groups](../../../database-engine/availability-groups/windows/analysis-services-with-always-on-availability-groups.md)|  
|Reporting Services|Utilize read only secondary replicas as a reporting data source and reduce the load on your primary read-write replica.<br /><br /> [Reporting Services with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/reporting-services-with-always-on-availability-groups-sql-server.md)|  
|Service Broker|[Service Broker with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/service-broker-with-always-on-availability-groups-sql-server.md)|  
|SQL Server Agent||  
  
##  <a name="restrictions"></a> Features that Interoperate with Always On Availability Groups with Restrictions  
 The following features interoperate with [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] with specific restrictions. See the linked topics for details.  
  
-   Cross-database transactions/distributed transactions ([!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)] and Windows Server 2016 Technical Preview 2). For more information, see [Cross-Database Transactions and Distributed Transactions for Always On Availability Groups and Database Mirroring &#40;SQL Server&#41;](../Topic/Cross-Database%20Transactions%20and%20Distributed%20Transactions%20for%20Always%20On%20Availability%20Groups%20and%20Database%20Mirroring%20\(SQL%20Server\).md)  
  
##  <a name="NoInterop"></a> Features that Do Not Interoperate with Always On Availability Groups  
 [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] does not interoperate with the following features:  
  
-   Database mirroring. For more information, see [Cross-Database Transactions and Distributed Transactions for Always On Availability Groups and Database Mirroring &#40;SQL Server&#41;](../Topic/Cross-Database%20Transactions%20and%20Distributed%20Transactions%20for%20Always%20On%20Availability%20Groups%20and%20Database%20Mirroring%20\(SQL%20Server\).md).  
  
##  <a name="RelatedContent"></a> Related Content  
  
-   **Blogs:**  
  
     [Migration Guide: Migrating to SQL Server 2012 Failover Clustering and Availability Groups from Prior Clustering and Mirroring Deployments](https://blogs.msdn.microsoft.com/sqlalwayson/2012/04/09/now-available-migration-guide-migrating-to-sql-server-2012-failover-clustering-and-availability-groups-from-prior-clustering-and-mirroring-deployments/)  
  
     [SQL Server Always On Team Blogs: The official SQL Server Always On Team Blog](https://blogs.msdn.microsoft.com/sqlalwayson/)  
  
     [CSS SQL Server Engineers Blogs](http://blogs.msdn.com/b/psssql/)  
  
-   **Whitepapers:**  
  
     [Migration Guide: Migrating to Always On Availability Groups from Prior Deployments Combining Database Mirroring and Log Shipping](http://msdn.microsoft.com/library/jj635217)  
  
     [Microsoft SQL Server Always On Solutions Guide for High Availability and Disaster Recovery](http://go.microsoft.com/fwlink/?LinkId=227600)  
  
     [Microsoft White Papers for SQL Server 2012](http://msdn.microsoft.com/library/hh403491.aspx)  
  
     [SQL Server Customer Advisory Team Whitepapers](http://sqlcat.com/)  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups &#40;SQL Server&#41;](../Topic/Prerequisites,%20Restrictions,%20and%20Recommendations%20for%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)  
  
  