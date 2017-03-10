-- This script uses sqlcmd scripting variables. They are in the form
-- $(MyVariable). For information about how to use scripting variables  
-- on the command line and in SQL Server Management Studio, see the 
-- "Executing Replication Scripts" section in the topic
-- "Programming Replication Using System Stored Procedures".

-- Execute at the Subscriber.
DECLARE @publication AS sysname;
DECLARE @publisher AS sysname;
DECLARE @publicationDB AS sysname;
DECLARE @login AS sysname;
DECLARE @password AS sysname;
SET @publication = N'NwdProductTran'; 
SET @publisher = $(Publisher); 
SET @publicationDB = N'Northwind'; 
-- Specify the Windows account to run the Distribution Agent.
SET @login = $(Login); 
-- Supply the password at runtime.
SET @password = $(Password); 

-- At the subscription database, create a pull subscription 
-- to a transactional publication.
USE [NorthwindReplica]
EXEC sp_addpullsubscription 
	@publisher = @publisher, 
	@publication = @publication, 
	@publisher_db = @publicationDB,
	@subscription_type = N'pull';

-- Add an agent job to synchronize the pull subscription.
EXEC sp_addpullsubscription_agent 
	@publisher = @publisher, 
	@publisher_db = @publicationDB, 
	@publication = @publication, 
	@distributor = @publisher,
	@job_login = @login,
	@job_password = @password;
GO

-- Execute at the Publisher.
DECLARE @publication AS sysname;
DECLARE @subscriber AS sysname;
DECLARE @subscriptionDB AS sysname;
SET @publication = N'NwdProductTran'; 
SET @subscriber = $(Subscriber); 
SET @subscriptionDB = N'NorthwindReplica'; 

-- Add a pull subscription to a transactional publication.
USE [Northwind]
EXEC sp_addsubscription 
	@publication = @publication, 
	@subscriber = @subscriber, 
	@destination_db = @subscriptionDB, 
	@subscription_type = N'pull';
GO