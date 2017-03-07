USE AdventureWorks2012;
GO
--Create a clustered index on the PRIMARY filegroup if the index does not exist.
IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = 
            N'AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate')
    CREATE UNIQUE CLUSTERED INDEX
        AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate 
    ON Production.BillOfMaterials (ProductAssemblyID, ComponentID, 
        StartDate)
    ON 'PRIMARY';
GO
-- Verify filegroup location of the clustered index.
SELECT t.name AS [Table Name], i.name AS [Index Name], i.type_desc,
    i.data_space_id, f.name AS [Filegroup Name]
FROM sys.indexes AS i
    JOIN sys.filegroups AS f ON i.data_space_id = f.data_space_id
    JOIN sys.tables as t ON i.object_id = t.object_id
        AND i.object_id = OBJECT_ID(N'Production.BillOfMaterials','U')
GO
--Create filegroup NewGroup if it does not exist.
IF NOT EXISTS (SELECT name FROM sys.filegroups
                WHERE name = N'NewGroup')
    BEGIN
    ALTER DATABASE AdventureWorks2012
        ADD FILEGROUP NewGroup;
    ALTER DATABASE AdventureWorks2012
        ADD FILE (NAME = File1,
            FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\File1.ndf')
        TO FILEGROUP NewGroup;
    END
GO
--Verify new filegroup
SELECT * from sys.filegroups;
GO
-- Drop the clustered index and move the BillOfMaterials table to
-- the Newgroup filegroup.
-- Set ONLINE = OFF to execute this example on editions other than Enterprise Edition.
DROP INDEX AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate 
    ON Production.BillOfMaterials 
    WITH (ONLINE = ON, MOVE TO NewGroup);
GO
-- Verify filegroup location of the moved table.
SELECT t.name AS [Table Name], i.name AS [Index Name], i.type_desc,
    i.data_space_id, f.name AS [Filegroup Name]
FROM sys.indexes AS i
    JOIN sys.filegroups AS f ON i.data_space_id = f.data_space_id
    JOIN sys.tables as t ON i.object_id = t.object_id
        AND i.object_id = OBJECT_ID(N'Production.BillOfMaterials','U');
GO