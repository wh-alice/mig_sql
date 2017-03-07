---
title: "Configure Parallel Index Operations | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-indexes"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "index parallel operations [SQL Server]"
  - "processors [SQL Server], parallel index operations"
  - "max degree of parallelism option"
  - "MAXDOP index option, parallel index operations"
  - "parallel index operations [SQL Server]"
ms.assetid: 8ec8c71e-5fc1-443a-92da-136ee3fc7f88
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# Configure Parallel Index Operations
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  This topic defines max degree of parallelism and explains how to modify this setting in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)]. On multiprocessor computers that are running [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Enterprise or higher, index statements may use multiple processors to perform the scan, sort, and index operations associated with the index statement just like other queries do. The number of processors used to run a single index statement is determined by the [max degree of parallelism](../../database-engine/configure/windows/configure-the-max-degree-of-parallelism-server-configuration-option.md) configuration option, the current workload, and the index statistics. The max degree of parallelism option determines the maximum number of processors to use in parallel plan execution. If the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] detects that the system is busy, the degree of parallelism of the index operation is automatically reduced before statement execution starts. The [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] can also reduce the degree of parallelism if the leading key column of a non-partitioned index has a limited number of distinct values or the frequency of each distinct value varies significantly.  
  
> [!NOTE]  
>  Parallel index operations are not available in every [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] edition. For more information, see Features Supported by the Editions of SQL Server 2016  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To set the max degree of parallelism, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   The number of processors that are used by the query optimizer typically provides optimal performance. However, operations such as creating, rebuilding, or dropping very large indexes are resource intensive and can cause insufficient resources for other applications and database operations for the duration of the index operation. When this problem occurs, you can manually configure the maximum number of processors that are used to run the index statement by limiting the number of processors to use for the index operation.  
  
-   The MAXDOP index option overrides the max degree of parallelism configuration option only for the query specifying this option. The following table lists the valid integer values that can be specified with the max degree of parallelism configuration option and the MAXDOP index option.  
  
    |Value|Description|  
    |-----------|-----------------|  
    |0|Specifies that the server determines the number of CPUs that are used, depending on the current system workload. This is the default value and recommended setting.|  
    |1|Suppresses parallel plan generation. The operation will be executed serially.|  
    |2-64|Limits the number of processors to the specified value. Fewer processors may be used depending on the current workload. If a value larger than the number of available CPUs is specified, the actual number of available CPUs is used.|  
  
-   Parallel index execution and the MAXDOP index option apply to the following [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statements:  
  
    -   CREATE INDEX  
  
    -   ALTER INDEX REBUILD  
  
    -   DROP INDEX (This applies to clustered indexes only.)  
  
    -   ALTER TABLE ADD (index) CONSTRAINT  
  
    -   ALTER TABLE DROP (clustered index) CONSTRAINT  
  
-   The MAXDOP index option cannot be specified in the ALTER INDEX REORGANIZE statement.  
  
-   Memory requirements for partitioned index operations that require sorting can be greater if the query optimizer applies degrees of parallelism to the build operation. The higher the degrees of parallelism, the greater the memory requirement is. For more information, see [Partitioned Tables and Indexes](../../relational-databases/partitions/partitioned-tables-and-indexes.md).  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table or view.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To set max degree of parallelism on an index  
  
1.  In Object Explorer, click the plus sign to expand the database that contains the table on which you want to set max degree of parallelism for an index.  
  
2.  Expand the **Tables** folder.  
  
3.  Click the plus sign to expand the table on which you want to set max degree of parallelism for an index.  
  
4.  Expand the **Indexes** folder.  
  
5.  Right-click the index for which you want to set the max degree of parallelism and select **Properties**.  
  
6.  Under **Select a page**, select **Options**.  
  
7.  Select **Maximum degree of parallelism**, and then enter some value between 1 and 64.  
  
8.  Click **OK**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To set max degree of parallelism on an existing index  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE AdventureWorks2012;   
    GO  
    /*Alters the IX_ProductVendor_VendorID index on the Purchasing.ProductVendor table so that, if the server has eight or more processors, the Database Engine will limit the execution of the index operation to eight or fewer processors.  
    */  
    ALTER INDEX IX_ProductVendor_VendorID ON Purchasing.ProductVendor  
    REBUILD WITH (MAXDOP=8);   
    GO  
    ```  
  
 For more information, see [ALTER INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/alter-index-transact-sql.md).  
  
#### Set max degree of parallelism on a new index  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    CREATE INDEX IX_ProductVendor_NewVendorID   
    ON Purchasing.ProductVendor (BusinessEntityID)  
    WITH (MAXDOP=8);  
    GO  
    ```  
  
 For more information, see [CREATE INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-index-transact-sql.md).  
  
  