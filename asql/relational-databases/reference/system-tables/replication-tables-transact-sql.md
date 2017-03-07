---
title: "Replication Tables (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "system tables [SQL Server], replication"
  - "replication [SQL Server], system tables"
ms.assetid: 5696ee73-5d7c-4f26-b7ee-6831c9c3edf7
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# Replication Tables (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  A replication topology is supported by replication system tables. When a user database is configured as a Publisher or a Subscriber, replication adds system tables to the database. These tables are removed when a user database is removed from a replication topology. For general rules regarding using system tables, see [System Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/system-tables-transact-sql.md).  
  
## Replication Tables  
 The following is a list of the system tables used by replication, grouped by database.  
  
### Replication Tables in the master Database  
  
|||  
|-|-|  
|[MSreplication_options &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/msreplication-options-transact-sql.md)||  
  
### Replication Tables in the msdb Database  
  
|||  
|-|-|  
|[MSagentparameterlist](../../../relational-databases/reference/system-tables/msagentparameterlist-transact-sql.md)|[MSdbms_map](../../../relational-databases/reference/system-tables/msdbms-map-transact-sql.md)|  
|[MSdbms](../../../relational-databases/reference/system-tables/msdbms-transact-sql.md)|[MSreplmonthresholdmetrics](../../../relational-databases/reference/system-tables/msreplmonthresholdmetrics-transact-sql.md)|  
|[MSdbms_datatype](../../../relational-databases/reference/system-tables/msdbms-datatype-transact-sql.md)|[sysreplicationalerts](../../../relational-databases/reference/system-tables/sysreplicationalerts-transact-sql.md)|  
|[MSdbms_datatype_mapping](../../../relational-databases/reference/system-tables/msdbms-datatype-mapping-transact-sql.md)||  
  
### Replication Tables in the Distribution Database  
  
|||  
|-|-|  
|[MSagent_parameters](../../../relational-databases/reference/system-tables/msagent-parameters-transact-sql.md)|[MSpublicationthresholds](../../../relational-databases/reference/system-tables/mspublicationthresholds-transact-sql.md)|  
|[MSagent_profiles](../../../relational-databases/reference/system-tables/msagent-profiles-transact-sql.md)|[MSpublisher_databases](../../../relational-databases/reference/system-tables/mspublisher-databases-transact-sql.md)|  
|[MSarticles](../../../relational-databases/reference/system-tables/msarticles-transact-sql.md)|[MSreplication_objects](../../../relational-databases/reference/system-tables/msreplication-objects-transact-sql.md)|  
|[MScached_peer_lsns](../../../relational-databases/reference/system-tables/mscached-peer-lsns-transact-sql.md)|[MSreplication_subscriptions](../../../relational-databases/reference/system-tables/msreplication-subscriptions-transact-sql.md)|  
|[MSdistpublishers](../../../relational-databases/reference/system-tables/msdistpublishers-transact-sql.md)|[MSrepl_commands](../../../relational-databases/reference/system-tables/msrepl-commands-transact-sql.md)|  
|[MSdistribution_agents](../../../relational-databases/reference/system-tables/msdistribution-agents-transact-sql.md)|[MSrepl_errors](../../../relational-databases/reference/system-tables/msrepl-errors-transact-sql.md)|  
|[MSdistribution_history](../../../relational-databases/reference/system-tables/msdistribution-history-transact-sql.md)|[MSrepl_originators](../../../relational-databases/reference/system-tables/msrepl-originators-transact-sql.md)|  
|[MSdistributiondbs](../../../relational-databases/reference/system-tables/msdistributiondbs-transact-sql.md)|[MSrepl_transactions](../../../relational-databases/reference/system-tables/msrepl-transactions-transact-sql.md)|  
|[MSdistributor](../../../relational-databases/reference/system-tables/msdistributor-transact-sql.md)|[MSrepl_version](../../../relational-databases/reference/system-tables/msrepl-version-transact-sql.md)|  
|[MSlogreader_agents](../../../relational-databases/reference/system-tables/mslogreader-agents-transact-sql.md)|[MSsnapshot_agents](../../../relational-databases/reference/system-tables/mssnapshot-agents-transact-sql.md)|  
|[MSlogreader_history](../../../relational-databases/reference/system-tables/mslogreader-history-transact-sql.md)|[MSsnapshot_history](../../../relational-databases/reference/system-tables/mssnapshot-history-transact-sql.md)|  
|[MSmerge_agents](../../../relational-databases/reference/system-tables/msmerge-agents-transact-sql.md)|[MSsubscriber_info](../../../relational-databases/reference/system-tables/mssubscriber-info-transact-sql.md)|  
|[MSmerge_history](../../../relational-databases/reference/system-tables/msmerge-history-transact-sql.md)|[MSsubscriber_schedule](../../../relational-databases/reference/system-tables/mssubscriber-schedule-transact-sql.md)|  
|[MSmerge_sessions](../../../relational-databases/reference/system-tables/msmerge-sessions-transact-sql.md)|[MSsubscriptions](../../../relational-databases/reference/system-tables/mssubscriptions-transact-sql.md)|  
|[MSmerge_subscriptions](../../../relational-databases/reference/system-tables/msmerge-subscriptions-transact-sql.md)|[MSsubscription_properties](../../../relational-databases/reference/system-tables/mssubscription-properties-transact-sql.md)|  
|[MSpublication_access](../../../relational-databases/reference/system-tables/mspublication-access-transact-sql.md)|[MStracer_history](../../../relational-databases/reference/system-tables/mstracer-history-transact-sql.md)|  
|[MSpublications](../../../relational-databases/reference/system-tables/mspublications-transact-sql.md)|[MStracer_tokens](../../../relational-databases/reference/system-tables/mstracer-tokens-transact-sql.md)|  
  
 These tables in the distribution database are used for replicating data from non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Publisher. For more information, see [Non-SQL Server Publishers](../../../relational-databases/replication/non-sql/non-sql-server-publishers.md).  
  
|||  
|-|-|  
|[IHarticles](../../../relational-databases/reference/system-tables/iharticles-transact-sql.md)|[IHpublishercolumnindexes](../../../relational-databases/reference/system-tables/ihpublishercolumnindexes-transact-sql.md)|  
|[IHcolumns](../../../relational-databases/reference/system-tables/ihcolumns-transact-sql.md)|[IHpublishercolumns](../../../relational-databases/reference/system-tables/ihpublishercolumns-transact-sql.md)|  
|[IHconstrainttypes](../../../relational-databases/reference/system-tables/ihconstrainttypes-transact-sql.md)|[IHpublisherconstraints](../../../relational-databases/reference/system-tables/ihpublisherconstraints-transact-sql.md)|  
|[IHindextypes](../../../relational-databases/reference/system-tables/ihindextypes-transact-sql.md)|[IHpublisherindexes](../../../relational-databases/reference/system-tables/ihpublisherindexes-transact-sql.md)|  
|[IHindextypes](../../../relational-databases/reference/system-tables/ihindextypes-transact-sql.md)|[IHpublishers](../../../relational-databases/reference/system-tables/ihpublishers-transact-sql.md)|  
|[IHpublications](../../../relational-databases/reference/system-tables/ihpublications-transact-sql.md)|[IHpublishertables](../../../relational-databases/reference/system-tables/ihpublishertables-transact-sql.md)|  
|[IHpublishercolumnconstraints](../../../relational-databases/reference/system-tables/ihpublishercolumnconstraints-transact-sql.md)|[IHsubscriptions](../../../relational-databases/reference/system-tables/ihsubscriptions-transact-sql.md)|  
  
### Replication Tables in the Publication Database  
  
|||  
|-|-|  
|[conflict_\<schema>_\<table>](../../../relational-databases/reference/system-tables/conflict-schema-table-transact-sql.md)|[MSpeer_originatorid_history](../../../relational-databases/reference/system-tables/mspeer-originatorid-history-transact-sql.md)|  
|[MSdynamicsnapshotjobs](../../../relational-databases/reference/system-tables/msdynamicsnapshotjobs-transact-sql.md)|[MSpeer_topologyrequest](../../../relational-databases/reference/system-tables/mspeer-topologyrequest-transact-sql.md)|  
|[MSdynamicsnapshotviews](../../../relational-databases/reference/system-tables/msdynamicsnapshotviews-transact-sql.md)|[MSpeer_topologyresponse](../../../relational-databases/reference/system-tables/mspeer-topologyresponse-transact-sql.md)|  
|[MSmerge_altsyncpartners](../../../relational-databases/reference/system-tables/msmerge-altsyncpartners-transact-sql.md)|[MSpeer_request](../../../relational-databases/reference/system-tables/mspeer-request-transact-sql.md)|  
|[MSmerge_conflicts_info](../../../relational-databases/reference/system-tables/msmerge-conflicts-info-transact-sql.md)|[MSpeer_response](../../../relational-databases/reference/system-tables/mspeer-response-transact-sql.md)|  
|[MSmerge_contents](../../../relational-databases/reference/system-tables/msmerge-contents-transact-sql.md)|[MSpub_identity_range](../../../relational-databases/reference/system-tables/mspub-identity-range-transact-sql.md)|  
|[MSmerge_current_partition_mappings](../../../relational-databases/reference/system-tables/msmerge-current-partition-mappings.md)|[sysarticlecolumns](../../../relational-databases/reference/system-tables/sysarticlecolumns-transact-sql.md)|  
|[MSmerge_dynamic_snapshots](../../../relational-databases/reference/system-tables/msmerge-dynamic-snapshots-transact-sql.md)|[sysarticles](../../../relational-databases/reference/system-tables/sysarticles-transact-sql.md)|  
|[MSmerge_errorlineage](../../../relational-databases/reference/system-tables/msmerge-errorlineage-transact-sql.md)|[sysarticleupdates](../../../relational-databases/reference/system-tables/sysarticleupdates-transact-sql.md)|  
|[MSmerge_generation_partition_mappings](../../../relational-databases/reference/system-tables/msmerge-generation-partition-mappings-transact-sql.md)|[sysmergearticlecolumns](../../../relational-databases/reference/system-tables/sysmergearticlecolumns-transact-sql.md)|  
|[MSmerge_genhistory](../../../relational-databases/reference/system-tables/msmerge-genhistory-transact-sql.md)|[sysmergearticles](../../../relational-databases/reference/system-tables/sysmergearticles-transact-sql.md)|  
|[MSmerge_identity_range](../../../relational-databases/reference/system-tables/msmerge-identity-range-transact-sql.md)|[sysmergepartitioninfo](../../../relational-databases/reference/system-tables/sysmergepartitioninfo-transact-sql.md)|  
|[MSmerge_metadataaction_request](../../../relational-databases/reference/system-tables/msmerge-metadataaction-request-transact-sql.md)|[sysmergepublications](../../../relational-databases/reference/system-tables/sysmergepublications-transact-sql.md)|  
|[MSmerge_partition_groups](../../../relational-databases/reference/system-tables/msmerge-partition-groups-transact-sql.md)|[sysmergeschemaarticles](../../../relational-databases/reference/system-tables/sysmergeschemaarticles-transact-sql.md)|  
|[MSmerge_past_partition_mappings](../../../relational-databases/reference/system-tables/msmerge-past-partition-mappings-transact-sql.md)|[sysmergeschemachange](../../../relational-databases/reference/system-tables/sysmergeschemachange-transact-sql.md)|  
|[MSmerge_replinfo](../../../relational-databases/reference/system-tables/msmerge-replinfo-transact-sql.md)|[sysmergesubscriptions](../../../relational-databases/reference/system-tables/sysmergesubscriptions-transact-sql.md)|  
|[MSmerge_settingshistory](../../../relational-databases/reference/system-tables/msmerge-settingshistory-transact-sql.md)|[sysmergesubsetfilters](../../../relational-databases/reference/system-tables/sysmergesubsetfilters-transact-sql.md)|  
|[MSmerge_tombstone](../../../relational-databases/reference/system-tables/msmerge-tombstone-transact-sql.md)|[syspublications](../../../relational-databases/reference/system-tables/syspublications-transact-sql.md)|  
|[MSpeer_conflictdetectionconfigrequest](../../../relational-databases/reference/system-tables/mspeer-conflictdetectionconfigrequest-transact-sql.md)|[sysschemaarticles](../../../relational-databases/reference/system-tables/sysschemaarticles-transact-sql.md)|  
|[MSpeer_conflictdetectionconfigresponse](../../../relational-databases/reference/system-tables/mspeer-conflictdetectionconfigresponse-transact-sql.md)|[syssubscriptions](../../../relational-databases/reference/system-tables/syssubscriptions-transact-sql.md)|  
|[MSpeer_lsns](../../../relational-databases/reference/system-tables/mspeer-lsns-transact-sql.md)|[systranschemas](../../../relational-databases/reference/system-views/systranschemas-transact-sql.md)|  
  
### Replication Tables in the Subscription Database  
  
|||  
|-|-|  
|[MSdynamicsnapshotjobs](../../../relational-databases/reference/system-tables/msdynamicsnapshotjobs-transact-sql.md)|[MSmerge_settingshistory](../../../relational-databases/reference/system-tables/msmerge-settingshistory-transact-sql.md)|  
|[MSdynamicsnapshotviews](../../../relational-databases/reference/system-tables/msdynamicsnapshotviews-transact-sql.md)|[MSmerge_tombstone](../../../relational-databases/reference/system-tables/msmerge-tombstone-transact-sql.md)|  
|[MSmerge_altsyncpartners](../../../relational-databases/reference/system-tables/msmerge-altsyncpartners-transact-sql.md)|[MSpeer_lsns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mspeer-lsns-transact-sql.md)|  
|[MSmerge_conflicts_info](../../../relational-databases/reference/system-tables/msmerge-conflicts-info-transact-sql.md)|[MSrepl_queuedtraninfo](../../../relational-databases/reference/system-tables/msrepl-queuedtraninfo-transact-sql.md)|  
|[MSmerge_contents](../../../relational-databases/reference/system-tables/msmerge-contents-transact-sql.md)|[MSsnapshotdeliveryprogress](../../../relational-databases/reference/system-tables/mssnapshotdeliveryprogress-transact-sql.md)|  
|[MSmerge_current_partition_mappings](../../../relational-databases/reference/system-tables/msmerge-current-partition-mappings.md)|[MSsubscription_properties](../../../relational-databases/reference/system-tables/mssubscription-properties-transact-sql.md)|  
|[MSmerge_dynamic_snapshots](../../../relational-databases/reference/system-tables/msmerge-dynamic-snapshots-transact-sql.md)|[sysmergearticlecolumns](../../../relational-databases/reference/system-tables/sysmergearticlecolumns-transact-sql.md)|  
|[MSmerge_errorlineage](../../../relational-databases/reference/system-tables/msmerge-errorlineage-transact-sql.md)|[sysmergearticles](../../../relational-databases/reference/system-tables/sysmergearticles-transact-sql.md)|  
|[MSmerge_generation_partition_mappings](../../../relational-databases/reference/system-tables/msmerge-generation-partition-mappings-transact-sql.md)|[sysmergepartitioninfo](../../../relational-databases/reference/system-tables/sysmergepartitioninfo-transact-sql.md)|  
|[MSmerge_genhistory](../../../relational-databases/reference/system-tables/msmerge-genhistory-transact-sql.md)|[sysmergepublications](../../../relational-databases/reference/system-tables/sysmergepublications-transact-sql.md)|  
|[MSmerge_identity_range](../../../relational-databases/reference/system-tables/msmerge-identity-range-transact-sql.md)|[sysmergeschemaarticles](../../../relational-databases/reference/system-tables/sysmergeschemaarticles-transact-sql.md)|  
|[MSmerge_metadataaction_request](../../../relational-databases/reference/system-tables/msmerge-metadataaction-request-transact-sql.md)|[sysmergeschemachange](../../../relational-databases/reference/system-tables/sysmergeschemachange-transact-sql.md)|  
|[MSmerge_partition_groups](../../../relational-databases/reference/system-tables/msmerge-partition-groups-transact-sql.md)|[sysmergesubscriptions](../../../relational-databases/reference/system-tables/sysmergesubscriptions-transact-sql.md)|  
|[MSmerge_past_partition_mappings](../../../relational-databases/reference/system-tables/msmerge-past-partition-mappings-transact-sql.md)|[sysmergesubsetfilters](../../../relational-databases/reference/system-tables/sysmergesubsetfilters-transact-sql.md)|  
|[MSmerge_replinfo](../../../relational-databases/reference/system-tables/msmerge-replinfo-transact-sql.md)|[systranschemas](../../../relational-databases/reference/system-views/systranschemas-transact-sql.md)|  
  
## See Also  
 [Configure Publishing and Distribution](../../../relational-databases/replication/configure-publishing-and-distribution.md)   
 [Disable Publishing and Distribution](../../../relational-databases/replication/disable-publishing-and-distribution.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  