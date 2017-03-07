---
title: "Availability Group Properties: New Availability Group (Backup Preferences Page) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.availabilitygroupproperties.backuppreferences.f1"
helpviewer_keywords: 
  - "read-only routing"
ms.assetid: 65fff22d-5963-4a8c-8b31-fe9ab247a03e
caps.latest.revision: 7
ms.author: "mikeray"
manager: "jhubbard"
---
# Availability Group Properties: New Availability Group (Backup Preferences Page)
  Use this dialog box to view and change the backup preferences of the selected availability group.  
  
 **To view availability group properties**  
  
-   [View Availability Group Properties &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/view-availability-group-properties-sql-server.md)  
  
-   [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../Topic/Use%20the%20Always On%20Dashboard%20\(SQL%20Server%20Management%20Studio\).md)  
  
## Where should backups occur?  
 **Prefer Secondary**  
 Specifies that backups should occur on a secondary replica except when the primary replica is the only replica online. In that case, the backup should occur on the primary replica. This is the default option.  
  
 **Secondary only**  
 Specifies that backups should never be performed on the primary replica. If the primary replica is the only replica online, the backup should not occur.  
  
 **Primary**  
 Specifies that the backups should always occur on the primary replica. This option is useful if you need backup features, such as creating differential backups, that are not supported when backup is run on a secondary replica.  
  
 **Any Replica**  
 Specifies that you prefer that backup jobs ignore the role of the availability replicas when choosing the replica to perform backups. Note backup jobs might evaluate other factors such as backup priority of each availability replica in combination with its operational state and connected state.  
  
> [!IMPORTANT]  
>  There is no enforcement of the backup-preference setting. The interpretation of this preference depends on the logic, if any, that you script into back jobs for the databases in a given availability group. For more information, see [Active Secondaries: Backup on Secondary Replicas &#40;Always On Availability Groups&#41;](../Topic/Active%20Secondaries:%20Backup%20on%20Secondary%20Replicas%20\(Always On%20Availability%20Groups\).md).  
  
## Replica backup priorities  
 This grid displays the current backup priority of each server instance that hosts a replica for the availability group. Use this grid to change the backup priority of one or more availability replicas.  
  
 **Server Instance**  
 The name of the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] that hosts the availability replica.  
  
 **Backup Priority (Lowest=1, Highest=100)**  
 Specifies your priority for performing backups on this replica relative to the other replicas in the same availability group. The value is an integer in the range of 0..100. 1 indicates the lowest priority, and 100 indicates the highest priority. If **Backup Priority** = 1, the availability replica would be chosen for performing backups only if no higher priority availability replicas are currently available.  
  
 **Exclude Replica**  
 Select if you never want this availability replica to be chosen for performing backups. This is useful, for example, for a remote availability replica to which you never want backups to fail over.  
  
## See Also  
 [Active Secondaries: Backup on Secondary Replicas &#40;Always On Availability Groups&#41;](../Topic/Active%20Secondaries:%20Backup%20on%20Secondary%20Replicas%20\(Always On%20Availability%20Groups\).md)   
 [ALTER AVAILABILITY GROUP &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-availability-group-transact-sql.md)  
  
  