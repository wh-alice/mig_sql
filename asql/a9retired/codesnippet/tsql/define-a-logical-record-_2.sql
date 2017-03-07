-- Remove ON DELETE CASCADE from FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID;
-- logical records cannot be used with ON DELETE CASCADE. 
IF EXISTS (SELECT * FROM sys.objects 
WHERE name = 'FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID')
BEGIN
	ALTER TABLE [Sales].[SalesOrderDetail] 
	DROP CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID] 
END

ALTER TABLE [Sales].[SalesOrderDetail]  
WITH CHECK ADD CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID] 
FOREIGN KEY([SalesOrderID])
REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID])
GO

DECLARE @publication    AS sysname;
DECLARE @table1 AS sysname;
DECLARE @table2 AS sysname;
DECLARE @table3 AS sysname;
DECLARE @salesschema AS sysname;
DECLARE @hrschema AS sysname;
DECLARE @filterclause AS nvarchar(1000);
DECLARE @partitionoption AS bit;
SET @publication = N'AdvWorksSalesOrdersMerge'; 
SET @table1 = N'SalesOrderDetail'; 
SET @table2 = N'SalesOrderHeader'; 
SET @salesschema = N'Sales';
SET @hrschema = N'HumanResources';
SET @filterclause = N'Employee.LoginID = HOST_NAME()';

-- Ensure that the publication uses precomputed partitions.
SET @partitionoption = (SELECT [use_partition_groups] FROM sysmergepublications 
	WHERE [name] = @publication);
IF @partitionoption <> 1
BEGIN
	EXEC sp_changemergepublication 
		@publication = @publication, 
		@property = N'use_partition_groups', 
		@value = 'true',
		@force_invalidate_snapshot = 1;
END  

-- Add a filtered article for the Employee table.
EXEC sp_addmergearticle 
  @publication = @publication, 
  @article = @table1, 
  @source_object = @table1, 
  @type = N'table', 
  @source_owner = @hrschema,
  @schema_option = 0x0004CF1,
  @description = N'article for the Employee table',
  @subset_filterclause = @filterclause;

-- Add an article for the SalesOrderHeader table.
EXEC sp_addmergearticle 
  @publication = @publication, 
  @article = @table2, 
  @source_object = @table2, 
  @type = N'table', 
  @source_owner = @salesschema,
  @schema_option = 0x0034EF1,
  @description = N'article for the SalesOrderHeader table';

-- Add an article for the SalesOrderDetail table.
EXEC sp_addmergearticle 
  @publication = @publication, 
  @article = @table3, 
  @source_object = @table3, 
  @source_owner = @salesschema,
  @description = 'article for the SalesOrderDetail table', 
  @identityrangemanagementoption = N'auto', 
  @pub_identity_range = 100000, 
  @identity_range = 100, 
  @threshold = 80;

-- Add a merge join filter between Employee and SalesOrderHeader.
EXEC sp_addmergefilter 
  @publication = @publication, 
  @article = @table2, 
  @filtername = N'SalesOrderHeader_Employee', 
  @join_articlename = @table1, 
  @join_filterclause = N'Employee.EmployeeID = SalesOrderHeader.SalesPersonID', 
  @join_unique_key = 1, 
  @filter_type = 1, 
  @force_invalidate_snapshot = 1, 
  @force_reinit_subscription = 1;

-- Create a logical record relationship that is also a merge join 
-- filter between SalesOrderHeader and SalesOrderDetail.
EXEC sp_addmergefilter 
  @publication = @publication, 
  @article = @table3, 
  @filtername = N'LogicalRecord_SalesOrderHeader_SalesOrderDetail', 
  @join_articlename = @table2, 
  @join_filterclause = N'[SalesOrderHeader].[SalesOrderID] = [SalesOrderDetail].[SalesOrderID]', 
  @join_unique_key = 1, 
  @filter_type = 3, 
  @force_invalidate_snapshot = 1, 
  @force_reinit_subscription = 1;
GO