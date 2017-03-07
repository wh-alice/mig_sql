---
title: "Specify Data Type Mappings for an Oracle Publisher | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Oracle publishing [SQL Server replication], data type mapping"
  - "data types [SQL Server replication], Oracle publishing"
  - "mapping data types [SQL Server replication]"
ms.assetid: f172d631-3b8c-4912-bd0f-568366cd9870
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# Specify Data Type Mappings for an Oracle Publisher
  This topic describes how to specify data type mappings for an Oracle Publisher in [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)]. Although a set of default data type mappings are provided for Oracle Publishers, it might be necessary to specify different mappings for a given publication.  
  
 **In This Topic**  
  
-   **To specify data type mappings for an Oracle Publisher, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
 Specify data type mappings on the **Data Mapping** tab of the **Article Properties - \<Article>** dialog box. This is available from the **Articles** page of the New Publication Wizard and the **Publication Properties - \<Publication>** dialog box. For more information about using the wizard and accessing the dialog box, see [Create a Publication from an Oracle Database](../../../relational-databases/replication/publish/create-a-publication-from-an-oracle-database.md) and [View and Modify Publication Properties](../../../relational-databases/replication/publish/view-and-modify-publication-properties.md).  
  
#### To specify a data type mapping  
  
1.  On the **Articles** page of the New Publication Wizard or the **Publication Properties - \<Publication>** dialog box, select a table, and then click **Article Properties**.  
  
2.  Click **Set Properties of Highlighted Table Article**.  
  
3.  On the **Data Mapping** tab of the **Article Properties - \<Article>** dialog box, select mappings from the **Subscriber Data Type** column:  
  
    -   For some data types there is only one possible mapping, in which case the column in the property grid is read-only.  
  
    -   For some types, there is more than one type that you can select. [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] recommends that you use the default mapping unless your application requires a different mapping. For more information, see [Data Type Mapping for Oracle Publishers](../../../relational-databases/replication/non-sql/data-type-mapping-for-oracle-publishers.md).  
  
4.  [!INCLUDE[clickOK](../../../a9notintoc/includes/clickok-md.md)]  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
 You can specify custom data type mappings programmatically using replication stored procedures. You can also set the default mappings that are used when mapping data types between [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] and a non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database management system (DBMS). For more information, see [Data Type Mapping for Oracle Publishers](../../../relational-databases/replication/non-sql/data-type-mapping-for-oracle-publishers.md).  
  
#### To define custom data type mappings when creating an article belonging to an Oracle publication  
  
1.  If one does not already exist, create an Oracle publication.  
  
2.  At the Distributor, execute [sp_addarticle](../../../relational-databases/reference/system-stored-procedures/sp-addarticle-transact-sql.md). Specify a value of **0** for **@use_default_datatypes**. For more information, see [Define an Article](../../../relational-databases/replication/publish/define-an-article.md).  
  
3.  At the Distributor, execute [sp_helparticlecolumns](../../../relational-databases/reference/system-stored-procedures/sp-helparticlecolumns-transact-sql.md) to view the existing mapping for a column in a published article.  
  
4.  At the Distributor, execute [sp_changearticlecolumndatatype](../../../relational-databases/reference/system-stored-procedures/sp-changearticlecolumndatatype-transact-sql.md). Specify the name of the Oracle Publisher for **@publisher**, as well as **@publication**, **@article**, and **@column** to define the published column. Specify the name of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] data type to map to for **@type**, as well as **@length**, **@precision**, and **@scale**, where applicable.  
  
5.  At the Distributor, execute [sp_articleview](../../../relational-databases/reference/system-stored-procedures/sp-articleview-transact-sql.md). This creates the view used to generate the snapshot from the Oracle publication.  
  
#### To specify a mapping as the default mapping for a data type  
  
1.  (Optional) At the Distributor on any database, execute [sp_getdefaultdatatypemapping](../../../relational-databases/reference/system-stored-procedures/sp-getdefaultdatatypemapping-transact-sql.md). Specify **@source_dbms**, **@source_type**, **@destination_dbms**, **@destination_version**, and any other parameters needed to identify the source DBMS. Information on the currently mapped data type in the destination DBMS is returned using the output parameters.  
  
2.  (Optional) At the Distributor on any database, execute [sp_helpdatatypemap](../../../relational-databases/reference/system-stored-procedures/sp-helpdatatypemap-transact-sql.md). Specify **@source_dbms** and any other parameters needed to filter the result set. Note the value of **mapping_id** for the desired mapping in the result set.  
  
3.  At the Distributor on any database, execute [sp_setdefaultdatatypemapping](../../../relational-databases/reference/system-stored-procedures/sp-setdefaultdatatypemapping-transact-sql.md).  
  
    -   If you know the desired value of **mapping_id** obtained in step 2, specify it for **@mapping_id**.  
  
    -   If you do not know the **mapping_id**, specify the parameters **@source_dbms**, **@source_type**, **@destination_dbms**, **@destination_type**, and any other parameters required to identify an existing mapping.  
  
#### To find valid data types for a given Oracle data type  
  
1.  At the Distributor on any database, execute [sp_helpdatatypemap](../../../relational-databases/reference/system-stored-procedures/sp-helpdatatypemap-transact-sql.md). Specify a value of **ORACLE** for **@source_dbms** and any other parameters needed to filter the result set.  
  
###  <a name="TsqlExample"></a> Examples (Transact-SQL)  
 This example changes a column with an Oracle data type of NUMBER so it is mapped to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] data type **numeric**(38,38), instead of the default data type **float**.  
  
 [!code-sql[HowTo#sp_changecolumndatatype](../../../a9retired/codesnippet/tsql/specify-data-type-mappin_1.sql)]  
  
 This example query returns the default and alternative mappings for the Oracle 9 data type **CHAR**.  
  
 [!code-sql[HowTo#sp_helpcolumndatatype_char](../../../a9retired/codesnippet/tsql/specify-data-type-mappin_2.sql)]  
  
 This example query returns the default mappings for the Oracle 9 data type **NUMBER** when it is specified without a scale or precision.  
  
 [!code-sql[HowTo#sp_helpcolumndatatype_number](../../../a9retired/codesnippet/tsql/specify-data-type-mappin_3.sql)]  
  
## See Also  
 [Data Type Mapping for Oracle Publishers](../../../relational-databases/replication/non-sql/data-type-mapping-for-oracle-publishers.md)   
 [Heterogeneous Database Replication](../../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)   
 [Replication System Stored Procedures Concepts](../../../relational-databases/replication/concepts/replication-system-stored-procedures-concepts.md)   
 [Configure an Oracle Publisher](../../../relational-databases/replication/non-sql/configure-an-oracle-publisher.md)  
  
  