---
title: "Columnstore index examples | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9f1eac3e-498d-499e-97f8-adc06c5c2e76
caps.latest.revision: 2
ms.author: "barbkess"
---
# Columnstore index examples
You can create an empty table as a columnstore index, convert an existing rowstore table to a columnstore index, or copy existing data into a new columnstore table. 

##  <a name="convert"></a> Examples for creating a columnstore index with CREATE TABLE

### A. Create an empty table
Applies to: SQL Server (starting with 2016), SQL Database, SQL Data Warehouse, Parallel Data Warehouse

To create an empty table as a clustered columnstore index, use [CREATE TABLE](https://msdn.microsoft.com/library/mt203953.aspx). 
```SQL
CREATE TABLE myTable  
  (  
    id int NOT NULL,  
    lastName varchar(20),  
    zipCode varchar(6)  
  )  
WITH ( CLUSTERED COLUMNSTORE INDEX );
``` 

### <a name="ColumnCollation"></a>B. Specify a column collation
Applies to: SQL Server (starting with 2016), SQL Database, SQL Data Warehouse, Parallel Data Warehouse

In the following example, the table `MyTable` is created with two different column collations. By default, the column, `mycolumn1`, has the default collation Latin1_General_100_CI_AS_KS_WS. The column, `mycolumn2` has the collation Frisian_100_CS_AS.  
  
```  
CREATE TABLE MyTable   
  (  
    mycolumnnn1 nvarchar,  
    mycolumn2 nvarchar COLLATE Frisian_100_CS_AS
  )  
WITH ( CLUSTERED COLUMNSTORE INDEX )  
;  
```  
  
### <a name="DefaultConstraint"></a>C. Specify a DEFAULT constraint for a column  
Applies to: SQL Server (starting with 2016), SQL Database, SQL Data Warehouse, Parallel Data Warehous

The following example shows the syntax to specify a default value for a column. The colA column has a default constraint named constraint_colA  and a default value of 0.  
  
```  
CREATE TABLE MyTable   
  (  
    colA int CONSTRAINT constraint_colA DEFAULT 0,  
    colB nvarchar COLLATE Frisian_100_CS_AS   
  )  
WITH ( CLUSTERED COLUMNSTORE INDEX )  
;  
```  

##  <a name="convert"></a> Examples for converting a rowstore table to a columnstore index  

For the reference topic, see CREATE COLUMNSTORE INDEX.

### A. Convert a heap to a clustered columnstore index  

This example creates a table as a heap and then converts it to a clustered columnstore index named cci_Simple. This changes the storage for the entire table from rowstore to columnstore.  
  
```  
CREATE TABLE SimpleTable(  
    ProductKey [int] NOT NULL,   
    OrderDateKey [int] NOT NULL,   
    DueDateKey [int] NOT NULL,   
    ShipDateKey [int] NOT NULL);  
GO  
CREATE CLUSTERED COLUMNSTORE INDEX cci_Simple ON SimpleTable;  
GO  
```  
  
### B. Convert a clustered index to a clustered columnstore index with the same name.  
This example creates a table with clustered rowstore index, and then demonstrates the syntax of converting the clustered index to a clustered columnstore index. The DROP_EXISTING clause allows the new index to keep the same name.
  
```  
CREATE TABLE SimpleTable (  
    ProductKey [int] NOT NULL,   
    OrderDateKey [int] NOT NULL,   
    DueDateKey [int] NOT NULL,   
    ShipDateKey [int] NOT NULL);  
GO  
CREATE CLUSTERED INDEX cl_simple ON SimpleTable (ProductKey);  
GO  
CREATE CLUSTERED COLUMNSTORE INDEX cl_simple ON SimpleTable  
WITH (DROP_EXISTING = ON);  
GO  
```  
  
### C. Handle nonclustered indexes when converting a rowstore table to a columnstore index.  
Applies to: SQL Server (2012, 2014)

This example shows how to handle nonclustered indexes when converting a rowstore table to a columnstore index. Actually, beginning with [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)] no special action is required; [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] will automatically define and rebuild the nonclustered indexes on the new clustered columnstore index.  
  
If you want to drop the nonclustered indexes, use the DROP INDEX statement prior to creating the columnstore index. The DROP EXISTING option only drops the clustered index that is being converted. It does not drop the nonclustered indexes.  
  
In [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] and [!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)], you could not create a nonclustered index on a columnstore index. This example shows how in previous releases you need to drop the nonclustered indexes before creating the columnstore index.  
  
```  
--Create the table for use with this example.  
CREATE TABLE SimpleTable (  
    ProductKey [int] NOT NULL,   
    OrderDateKey [int] NOT NULL,   
    DueDateKey [int] NOT NULL,   
    ShipDateKey [int] NOT NULL);  
GO  
  
--Create two nonclustered indexes for use with this example  
CREATE INDEX nc1_simple ON SimpleTable (OrderDateKey);  
CREATE INDEX nc2_simple ON SimpleTable (DueDateKey);   
GO  
  
--SQL Server 2012 and SQL Server 2014: you need to drop the nonclustered indexes  
--in order to create the columnstore index.   
  
DROP INDEX SimpleTable.nc1_simple;  
DROP INDEX SimpleTable.nc2_simple;  
  
--Convert the rowstore table to a columnstore index.  
CREATE CLUSTERED COLUMNSTORE INDEX cci_simple ON SimpleTable;   
GO  
  
```  
  
### D. Convert a large fact table from rowstore to columnstore with good performance.
 This example explains how to convert a large fact table from a rowstore table to a columnstore table.  It performs the conversion in a way that gets good performance.

First, create a small table to use in this example and add a non-clustered index on the table.
 
```  
--Create a rowstore table with a clustered index and a non-clustered index.  
CREATE TABLE MyFactTable (  
    ProductKey [int] NOT NULL,  
    OrderDateKey [int] NOT NULL,  
    DueDateKey [int] NOT NULL,
    ShipDateKey [int] NOT NULL )   
WITH (CLUSTERED INDEX ( ProductKey ) ); 
  
--Add a non-clustered index.
CREATE INDEX my_index ON MyFactTable ( ProductKey, OrderDateKey );  
```  
  
Drop all non-clustered indexes from the rowstore table.  
 
```  
--Drop all non-clustered indexes  
DROP INDEX my_index ON MyFactTable;  
```  
  
Drop the clustered index.  
 
* Do this only if you want to specify a new name for the index when it is converted to a clustered columnstore index. If you do not drop the clustered index, the new clustered columnstore index will have the same name.  
* The name of the index might be easier to remember if you use your own name. All rowstore clustered indexes use the default name which is 'ClusteredIndex_\<GUID>'.  
  
```  
--Process for dropping a clustered index.  
--First, look up the name of the clustered rowstore index.  
--Clustered rowstore indexes always use the DEFAULT name ‘ClusteredIndex_<GUID>’.  
SELECT i.name   
FROM sys.indexes i   
JOIN sys.tables t  
ON ( i.type_desc = 'CLUSTERED' ) WHERE t.name = 'MyFactTable';  
  
--Drop the clustered rowstore index.  
DROP INDEX ClusteredIndex_d473567f7ea04d7aafcac5364c241e09 ON MyDimTable;  
```  
  
Convert the rowstore table to a columnstore table with a clustered columnstore index.  
 
```  
--Option 1: Convert to columnstore and name the new clustered columnstore index MyCCI.  
CREATE CLUSTERED COLUMNSTORE INDEX MyCCI ON MyFactTable;  
  
--Option 2: Convert to columnstore and use the rowstore clustered   
--index name for the columnstore clustered index name.  
--First, look up the name of the clustered rowstore index.  
SELECT i.name   
FROM sys.indexes i  
JOIN sys.tables t   
ON ( i.type_desc = 'CLUSTERED' )  
WHERE t.name = 'MyFactTable';  
  
--Second, create the clustered columnstore index and   
--Replace ClusteredIndex_d473567f7ea04d7aafcac5364c241e09  
--with the name of your clustered index.  
CREATE CLUSTERED COLUMNSTORE INDEX   
    ClusteredIndex_d473567f7ea04d7aafcac5364c241e09  
    ON MyFactTable  
WITH DROP_EXISTING = ON;  
```  

## Examples converting a columstore to a rowstore
 
### E. Convert a clustered columnstore index to a clustered rowstore index  
To convert a columnstore table to a rowstore table with a clustered index, use the CREATE INDEX statement with the DROP_EXISTING option.  
  
```  
CREATE CLUSTERED INDEX ci_MyTable   
ON MyFactTable  
WITH ( DROP EXISTING = ON );  
```  
  
### F. Convert a columnstore table to a rowstore heap  
To convert a columnstore table to a rowstore heap, simply drop the clustered columnstore index.  
  
```  
DROP INDEX MyCCI   
ON MyFactTable;  
```  

## Examples for defragmenting a clustered columnstore index 

### G. Defragment by rebuilding the entire clustered columnstore index  
 Applies to: SQL Server 2014  
  
 There are two ways to rebuild the full clustered columnstore index. You can use CREATE CLUSTERED COLUMNSTORE INDEX, or [ALTER INDEX &#40;Transact-SQL&#41;](../t-sql/statements/alter-index-transact-sql.md) and the REBUILD option. Both methods achieve the same results.  
  
> [!NOTE]  
>  Beginning with SQL Server 2016, use ALTER INDEX REORGANIZE instead of rebuilding with the methods described in this example.  
  
```  
--Determine the Clustered Columnstore Index name of MyDimTable.  
SELECT i.object_id, i.name, t.object_id, t.name   
FROM sys.indexes i   
JOIN sys.tables t  
ON (i.type_desc = 'CLUSTERED COLUMNSTORE')  
WHERE t.name = 'RowstoreDimTable';  
  
--Rebuild the entire index by using CREATE CLUSTERED INDEX.  
CREATE CLUSTERED COLUMNSTORE INDEX my_CCI   
ON MyFactTable  
WITH ( DROP_EXISTING = ON );  
  
--Rebuild the entire index by using ALTER INDEX and the REBUILD option.  
ALTER INDEX my_CCI  
ON MyFactTable  
REBUILD PARTITION = ALL  
WITH ( DROP_EXISTING = ON );  
  
```  

##  <a name="nonclustered"></a> Examples for nonclustered columnstore indexes  
  
### A. Create a columnstore index as a secondary index on a rowstore table  
 This example creates a nonclustered columnstore index on a rowstore table. Only one columnstore index can be created in this situation. The columnstore index requires extra storage since it contains a copy of the data in the rowstore table. This example creates a simple table and a clustered index, and then demonstrates the syntax of creating a nonclustered columnstore index.  
  
```  
CREATE TABLE SimpleTable  
(ProductKey [int] NOT NULL,   
OrderDateKey [int] NOT NULL,   
DueDateKey [int] NOT NULL,   
ShipDateKey [int] NOT NULL);  
GO  
CREATE CLUSTERED INDEX cl_simple ON SimpleTable (ProductKey);  
GO  
CREATE NONCLUSTERED COLUMNSTORE INDEX csindx_simple  
ON SimpleTable  
(OrderDateKey, DueDateKey, ShipDateKey);  
GO  
```  
  
### B. Create a simple nonclustered columnstore index using all options  
 The following example demonstrates the syntax of creating a nonclustered columnstore index by using all options.  
  
```  
CREATE NONCLUSTERED COLUMNSTORE INDEX csindx_simple  
ON SimpleTable  
(OrderDateKey, DueDateKey, ShipDateKey)  
WITH (DROP_EXISTING =  ON,   
    MAXDOP = 2)  
ON "default"  
GO  
```  
  
 For a more complex example using partitioned tables, see [Columnstore Indexes Guide](../Topic/Columnstore%20Indexes%20Guide.md).  
  
### C. Create a nonclustered columnstore index with a filtered predicate  
 The following example creates a filtered nonclustered columnstore index on the Production.BillOfMaterials table in the [!INCLUDE[ssSampleDBnormal](../a9notintoc/includes/sssampledbnormal-md.md)] database. The filter predicate can include columns that are not key columns in the filtered index. The predicate in this example selects only the rows where EndDate is non-NULL.  
  
```  
IF EXISTS (SELECT name FROM sys.indexes  
    WHERE name = N'FIBillOfMaterialsWithEndDate'   
    AND object_id = OBJECT_ID(N'Production.BillOfMaterials'))  
DROP INDEX FIBillOfMaterialsWithEndDate  
    ON Production.BillOfMaterials;  
GO  
CREATE NONCLUSTERED COLUMNSTORE INDEX "FIBillOfMaterialsWithEndDate"  
    ON Production.BillOfMaterials (ComponentID, StartDate)  
    WHERE EndDate IS NOT NULL;  
  
```  
  
###  <a name="ncDML"></a> D. Change the data in a nonclustered columnstore index  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] through [!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)].|  
  
 Once you create a nonclustered columnstore index on a table, you cannot directly modify the data in that table. A query with INSERT, UPDATE, DELETE, or MERGE will fail and return an error message. To add or modify the data in the table, you can do one of the following:  
  
-   Disable or drop the columnstore index. You can then update the data in the table. If you disable the columnstore index, you can rebuild the columnstore index when you finish updating the data. For example,  
  
    ```  
    ALTER INDEX mycolumnstoreindex ON mytable DISABLE;  
    -- update mytable --  
    ALTER INDEX mycolumnstoreindex on mytable REBUILD  
    ```  
  
-   Load data into a staging table that does not have a columnstore index. Build a columnstore index on the staging table. Switch the staging table into an empty partition of the main table.  
  
-   Switch a partition from the table with the columnstore index into an empty staging table. If there is a columnstore index on the staging table, disable the columnstore index. Perform any updates. Build (or rebuild) the columnstore index. Switch the staging table back into the (now empty) partition of the main table.  
  
## Examples: [!INCLUDE[ssSDWfull](../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)]  
  
### E. Change a clustered index to a clustered columnstore index  
 By using the CREATE CLUSTERED COLUMNSTORE INDEX statement with DROP_EXISTING = ON, you can:  
  
-   Change a clustered index into a clustered columnstore index.  
  
-   Rebuild a clustered columnstore index.  
  
 This example creates the xDimProduct table as a rowstore table with a clustered index, and then uses CREATE CLUSTERED COLUMNSTORE INDEX to change the table from a rowstore table to a columnstore table.  
  
```  
-- Uses AdventureWorks  
  
IF EXISTS (SELECT name FROM sys.tables  
    WHERE name = N'xDimProduct'  
    AND object_id = OBJECT_ID (N'xDimProduct'))  
DROP TABLE xDimProduct;  
  
--Create a distributed table with a clustered index.  
CREATE TABLE xDimProduct (ProductKey, ProductAlternateKey, ProductSubcategoryKey)  
WITH ( DISTRIBUTION = HASH(ProductKey),  
    CLUSTERED INDEX (ProductKey) )  
AS SELECT ProductKey, ProductAlternateKey, ProductSubcategoryKey FROM DimProduct;  
  
--Change the existing clustered index   
--to a clustered columnstore index with the same name.  
--Look up the name of the index before running this statement.  
CREATE CLUSTERED COLUMNSTORE INDEX <index_name>   
ON xdimProduct   
WITH ( DROP_EXISTING = ON );  
```  
  
### F. Rebuild a clustered columnstore index  
 Building on the previous example, this example uses CREATE CLUSTERED COLUMNSTORE INDEX to rebuild the existing clustered columnstore index called cci_xDimProduct.  
  
```  
--Rebuild the existing clustered columnstore index.  
CREATE CLUSTERED COLUMNSTORE INDEX cci_xDimProduct   
ON xdimProduct   
WITH ( DROP_EXISTING = ON );  
```  
  
### G. Change the name of a clustered columnstore index  
 To change the name of a clustered columnstore index, drop the existing clustered columnstore index, and then recreate the index with a new name.  
  
 We recommend only doing this operation with a small table or an empty table. It will take a long time to drop a large clustered columnstore index and rebuild with a different name.  
  
 Using the cci_xDimProduct clustered columnstore index from the previous example, this example drops the cci_xDimProduct clustered columnstore index and then recreates the clustered columnstore index with the name mycci_xDimProduct.  
  
```  
--For illustration purposes, drop the clustered columnstore index.   
--The table continues to be distributed, but changes to a heap.  
DROP INDEX cci_xdimProduct ON xDimProduct;  
  
--Create a clustered index with a new name, mycci_xDimProduct.  
CREATE CLUSTERED COLUMNSTORE INDEX mycci_xDimProduct  
ON xdimProduct  
WITH ( DROP_EXISTING = OFF );  
```  
  
### H. Convert a columnstore table to a rowstore table with a clustered index  
 There might be a situation for which you want to drop a clustered columnstore index and create a clustered index. This stores the table in rowstore format. This example converts a columnstore table to a rowstore table with a clustered index with the same name. None of the data is lost. All data goes to the rowstore table and the columns listed become the key columns in the clustered index.  
  
```  
--Drop the clustered columnstore index and create a clustered rowstore index.   
--All of the columns will be stored in the rowstore clustered index.   
--The columns listed will be the included columns in the index.  
CREATE CLUSTERED INDEX cci_xDimProduct    
ON xdimProduct (ProductKey, ProductAlternateKey, ProductSubcategoryKey, WeightUnitMeasureCode)  
WITH ( DROP_EXISTING = ON);  
  
```  
  
### I. Convert a columnstore table back to a rowstore heap  
 Use [DROP INDEX (SQL Server PDW)](http://msdn.microsoft.com/en-us/f59cab43-9f40-41b4-bfdb-d90e80e9bf32) to drop the clustered columnstore index and convert the table to a rowstore heap. This example converts the cci_xDimProduct table to a rowstore heap. The table continues to be distributed, but is stored as a heap.  
  
```  
--Drop the clustered columnstore index. The table continues to be distributed, but changes to a heap.  
DROP INDEX cci_xdimProduct ON xdimProduct;  
```  