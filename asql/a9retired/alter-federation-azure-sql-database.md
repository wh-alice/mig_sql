---
title: "ALTER FEDERATION (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "12/08/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "ALTER_FEDERATION_TSQL"
  - "ALTER FEDERATION"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ALTER FEDERATION statement"
ms.assetid: 65e0f8d5-7d17-4d60-b2b8-7461499fdc94
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# ALTER FEDERATION (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Modifies the distribution of data within a federation in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
## Syntax  
  
```  
  
ALTER FEDERATION federation_name  
{  
    SPLIT AT (distribution_name = boundary_value)  
    | DROP AT ([LOW | HIGH] distribution_name = boundary_value)  
    | SWITCH OUT AT ([LOW | HIGH] distribution_name = boundary_value)}[;]  
```  
  
## Arguments  
 *federation_name*  
 The name of the federation to be altered. The name must be unique within the [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] and comply with the rules for identifiers, and is of type **sysname**.  
  
 *distribution_name*  
 The name of the federation key. The name is an identifier used to refer to the federation key, and is referred to with federation related statements such as CREATE TABLE … FEDERATED ON(...) or USE FEDERATION. *Distribution_name* must conform to the rules for identifiers and is of type **sysname**.  
  
 *Boundary_value* is the division point for the repartitioning operation. The boundary value should be a valid value for the data type specified by the federation’s federation key. In the case of a SPLIT, the value becomes the range_low and range_high for the new federation members created as part of this operation.  
  
 SPLIT AT (*distribution_name* = *boundary_value*)  
 Moves the data in the federation member that currently contains the boundary value into two new federation members. All rows in federated tables with federation key instances less than *boundary_value* are copied to one of the new destination federation members. Instances greater than or equal to *boundary_value* are copied to the other new federation member. All other objects such as reference tables, stored procedures, functions, users, and permissions defined on objects are cloned to the new federation members.  
  
 DROP AT ([LOW | HIGH] *distribution_name* = *boundary_value*)  
 Drops a federation member and extends an adjacent federation member’s range to cover the gap created by the DROP operation. This operation impacts both the federation member being dropped and the adjacent federation member that will be extended to cover the gap. LOW or HIGH determines the federation member that will be dropped at the given federation *boundary_value*. The boundary value must correspond to an existing partition value (range-high or range-low of federation members) in the federation.  
  
 During the DROP operation, there is no schema comparison between the impacted federation members. DROP AT does not require a physical copy of data.  Data contained within the member will be deleted.  DROP AT also resets connections and changes the **DB_NAME()** of the impacted federation members.  
  
 DROP AT is an asynchronous operation.  
  
 SWITCH OUT AT ([LOW | HIGH] *distribution_name* = *boundary_value*)  
 Removes all federation metadata and constraints from the federation member database. After execution, the federation member is a standalone database. During a SWITCH OUT, there is no data deletion nor data movement. LOW or HIGH determines the federation member that will be switched out on the respective side of the given federation *boundary_value*. The boundary value must correspond to an existing partition value, range-high or range-low, in the existing federation. Unlike DROP AT, SWITCH OUT does not extend an adjacent federation member range to cover the gap created by the operation. If you are seeking to migrate your federation application to [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)] Elastic Scale, be sure to first create a Share Map before executing this command.  
  
> [!WARNING]  
>  The SWITCH OUT command is permanent. Once executed, the member will not be accessible with the USING FEDERATION statement and the database cannot be added back to the original federation. There is no impact to the other Federation members during the execution of this command.  
  
## Remarks  
 Multiple DROP or SPLIT operations are allowed to execute simultaneously as long as none of the source or destination federation members overlap.  
  
 **Properties of the SPLIT operation**  
  
-   The ALTER FEDERATION … SPLIT statement must be the only statement in the batch, and cannot be part of an outer transaction.  
  
-   The ALTER FEDERATION … SPLIT statement can only be executed while connected to the federation root database.  
  
-   Only one DROP or SPLIT command can be active at any one time on the impacted federation members. There can be many DROP and SPLIT commands active all at once as long as they are operating on different members in a federation.  
  
-   All destination federation members (the federation members created due to a SLIPT operation) inherit the MAXSIZE and EDITION properties of the source federation member.  
  
-   The SPLIT operation is an atomic operation. All destination members must be created and synchronized successfully for the SPLIT to complete.  
  
-   The SPLIT operation is an asynchronous operation.  
  
     While SPLIT is executing  
  
    -   All regular (nonefederated) objects, schemas, and system metadata are copied from the source federation member that is being SPLIT to the destination federation member. This list includes users, roles, object permissions, stored procedures, views, federated or reference tables, indexes, and more. The only exception is distribution statistics that are marked for recompute. Statistics marked with NORECOMPUTE are maintained and are not recalculated on federated tables after repartitioning operations.  
  
    -   All federated table schemas are copied from the source federation member that is being SPLIT to the destination federation member.  
  
    -   User data in federated tables is moved to the destination federation members based on the boundary value.  
  
    -   User data in all reference tables are cloned and then moved to the destination federation member.  
  
     When SPLIT completes;  
  
    -   The new federation member contains all up to date data in the corresponding destination federation members.  
  
    -   The sys.federation_members view is updated to include the new destination federation members with their range values. The source federation member is dropped and no longer exists in sys.databases or in sys.federation_members.  
  
    -   All existing connections to the soured federation members are disconnected. On retry, the new connections are routed to the new federation members.  
  
 **Properties of the DROP operation**  
  
-   The ALTER FEDERATION … DROP statement must be the only statement in the batch, and cannot be part of an outer transaction.  
  
-   The ALTER FEDERATION … DROP statement can only be executed while connected to the federation root database.  
  
-   Boundary value does specified needs to correspond to an existing range boundary (range_high, range_low) in the federation.  
  
-   The DROP operation is an asynchronous operation.  
  
     When the DROP operation starts, the LOW or HIGH option and the specified boundary value determine the federation member that will be dropped. An adjacent federation member is expanded to cover the range of the dropped federation member.  
  
     While DROP is executing, no data transfer is performed and no schema comparison happens.  
  
     When DROP is complete;  
  
    -   The remaining federation member is renamed.  
  
    -   The sys.federation_members table no longer includes the dropped federation member, and has the updated range for the remaining federation member.  
  
    -   All existing connections to the federation members are disconnected. The dropped federation member no longer accepts connections. The remaining federation member disconnects all existing connections.  
  
 **Properties of the SWITCH OUT operation**  
  
-   The SWITCH OUT operation must be the only statement in the batch and cannot be part of an outer transaction.  
  
-   The SWITCH OUT operation can only be executed while connected to the federation root database.  
  
-   The SWITCH OUT operation is an asynchronous operation.  
  
-   New connections to the federation member will be blocked until the operation is completed.  
  
-   When SWITCH OUT is complete:  
  
    -   The sys.databases table in master will be updated to indicate that the database is no longer a federation member.  
  
    -   All existing connections to the federation members are disconnected. The SWITCH OUT federation member will no longer accept connections via the USING FEDERATION command.  
  
    -   All federation specific constraints on the target database and federated tables will be dropped.  
  
-   AFTER the SWITCH OUT command has been issued on all federation members, the federation and the federation root database can be dropped.  
  
## Permissions  
 To CREATE, ALTER, and DROP federations, you must be connected to the federation root and must be a member of the **dbmanager** role on the server. You must also be a member of the **dbo** group for the database.  
  
 The SPLIT and DROP statements require that you have CREATE and DROP DATABASE permissions on the source federation members and on the server that you are connected to. In [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)] this is restricted to the members of the **dbmanager** server role. The owner of the source federation member becomes the owner of the destination federation member, regardless of the user account executing the operation.  
  
## Examples  
 The following example uses the SWITCH OUT operation to switch out a federation member containing the federation key of 99, which is contained on the low side of the boundary value of 100.  
  
```  
ALTER FEDERATION CustomerFederation SWITCH OUT AT(LOW cid = 100)  
  
```  
  
 The following example uses the SWITCH OUT operation against a single member federation to switch out on the high side of the uniqueidentifier boundary value of 00000000-0000-0000-0000-000000000000.  
  
```  
ALTER FEDERATION CustomerFederation SWITCH OUT AT(HIGH cid = '00000000-0000-0000-0000-000000000000')  
  
```  
  
-   DROP AT (LOW distribution_name = boundary_value)  
  
     Drops the federation member to the LOW of the boundary value, and extends the federation member to the HIGH of the boundary value. For example; given a federation (fed1) containing three federation members covering 0,100 (db1), 100,200 (db2), and 200,300 (db3), issuing ALTER FEDERATION fed1 DROP AT (LOW customer_id=200) will perform the following:  
  
    1.  DROP db2 and all data between 100,200  
  
    2.  Rename db3 to db4. Db4’s Dbid stays the same.  
  
    3.  Db4 now covers the range of 100,300  
  
-   DROP AT (HIGH distribution_name = boundary_value)  
  
     Drops the federation member to the HIGH of the boundary value, and extends the federation member to the LOW of the boundary value. For example; given a federation (fed1) containing three federation members covering 0,100 (db1), 100,200 (db2), and 200,300 (db3), issuing ALTER FEDERATION fed1 DROP AT (HIGH customer_id=200) will perform the following:  
  
    1.  DROP db3 and all data between 200,300  
  
    2.  Rename db2 to db4. Db4’s Dbid stays the same as db2.  
  
    3.  Db4 now covers the range of 100,300  
  
## See Also  
 [Managing Database Federations](http://msdn.microsoft.com/library/windowsazure/hh597455.aspx)  
  
  