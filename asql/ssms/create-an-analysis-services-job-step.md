---
title: "Create an Analysis Services Job Step | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "job steps [Analysis Services]"
ms.assetid: 03d4bb86-514b-4a55-97b9-c2c0fa08b428
caps.latest.revision: 5
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Create an Analysis Services Job Step
This topic describes how to create and define SQL Server Agent job steps in SQL Server 2016 that execute SQL Server Analysis Services commands and queries by using SQL Server Management Studio, Transact-SQL or SQL Server Management Objects.  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To create a SQL Server job steps using Analysis Services commands and/or queries, with:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   If the job step uses an Analysis Services command, the command statement must be an XML for Analysis Services **Execute** method. The statement may not contain a complete Simple Object Access Protocol (SOAP) envelope or an XML for Analysis **Discover** method. While SQL Server Management Studio supports complete SOAP envelopes and the **Discover** method, SQL Server Agent job steps do not. For more information about XML for Analysis Services, see [XML for Analysis Overview (XMLA)](http://msdn.microsoft.com/library/ms187190.aspx).  
  
-   If the job step uses an Analysis Services query, the query statement must be a multidimensional expressions (MDX) query. For more information about MDX, see [MDX Statement Fundamentals (MDX)](http://msdn.microsoft.com/en-us/a560383b-bb58-472e-95f5-65d03d8ea08b).  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
  
-   To run a job step that uses the Analysis Services subsystem, a user must be a member of the **sysadmin** fixed server role or have access to a valid proxy account defined to use this subsystem. In addition, the SQL Server Agent service account or the proxy must be an Analysis Services administrator and a valid Windows domain account.  
  
-   Only members of the **sysadmin** fixed server role can write job step output to a file. If the job step is run by users who are members of the **SQLAgentUserRole** database role in the **msdb** database, then the output can be written only to a table. SQL Server Agent writes job step output to the **sysjobstepslog** table in the **msdb** database.  
  
-   For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To create an Analysis Services command job step  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, create a new job or right-click an existing job, and then click **Properties**. For more information on creating a job, see [Create Jobs](../ssms/create-jobs.md).  
  
3.  In the **Job Properties** dialog box, click the **Steps** page, and then click **New**.  
  
4.  In the **New Job Step** dialog box, type a job **Step name**.  
  
5.  In the **Type** list, click **SQL Server Analysis Services Command**.  
  
6.  In the **Run as** list, select a proxy that has been defined to use the Analysis Services Command subsystem. A user who is a member of the **sysadmin** fixed server role can also select **SQL Agent Service Account** to run this job step.  
  
7.  Select the **Server** where the job step will run, or type the server name.  
  
8.  In the **Command** box, type the statement to execute, or click **Open** to select a statement.  
  
9. Click the **Advanced** page to define options for this job step, such as what action SQL Server Agent should take if the job step succeeds or fails, how many times the job step should be attempted, and where the job step output should be written.  
  
#### To create an Analysis Services query job step  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, create a new job or right-click an existing job, and then click **Properties**. For more information on creating a job, see [Create Jobs](../ssms/create-jobs.md).  
  
3.  In the **Job Properties** dialog, click the **Steps** page, and then click **New**.  
  
4.  In the **New Job Step** dialog, type a job **Step name**.  
  
5.  In the **Type** list, click **SQL Server Analysis Services Query**.  
  
6.  In the **Run as** list, select a proxy that has been defined to use the Analysis Services Query subsystem. A user who is a member of the **sysadmin** fixed server role can also select **SQL Agent Service Account** to run this job step.  
  
7.  Select the **Server** and the **Database** where the job step will run, or type the server or database name.  
  
8.  In the **Command** box, type the statement to execute, or click **Open** to select a statement.  
  
9. Click the **Advanced** page to define options for this job step, such as what action SQL Server Agent should take if the job step succeeds or fails, how many times the job step should be attempted, and where the job step output should be written.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To create an Analysis Services command job step  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- Creates a job step that uses XMLA to create a relational data source that references the AdventureWorks2012 Microsoft SQL Server database  
    USE msdb;  
    GO  
    EXEC sp_add_jobstep  
        @job_name = N'Weekly Sales Data Backup',  
        @step_name = N'Create a relational data source that references the AdventureWorks2012 Microsoft SQL Server database ',  
        @subsystem = N'ANALYSISCOMMAND',  
        @command = N' <Create xmlns="http://schemas.microsoft.com/analysisservices/2003/engine">  
        <ParentObject>  
            <DatabaseID>AdventureWorks2012</DatabaseID>  
        </ParentObject>  
        <ObjectDefinition>  
            <DataSource xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RelationalDataSource">  
                <ID>AdventureWorks2012</ID>  
                <Name>Adventure Works 2012</Name>  
                <ConnectionString>Data Source=localhost;Initial Catalog=AdventureWorks2012;Integrated Security=True</ConnectionString>  
                <ImpersonationInfo>  
                    <ImpersonationMode>ImpersonateServiceAccount</ImpersonationMode>  
                </ImpersonationInfo>  
                <ManagedProvider>System.Data.SqlClient</ManagedProvider>  
                <Timeout>PT0S</Timeout>  
            </DataSource>  
        </ObjectDefinition>  
    </Create>', ;  
    GO  
    ```  
  
For more information, see [sp_add_jobstep (Transact-SQL)](http://msdn.microsoft.com/en-us/97900032-523d-49d6-9865-2734fba1c755).  
  
#### To create an Analysis Services query job step  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- Creates a job step that uses MDX to return data  
    USE msdb;  
    GO  
    EXEC sp_add_jobstep  
        @job_name = N'Weekly Sales Data Backup',  
        @step_name = N'Returns the Internet sales amount by state',  
        @subsystem = N'ANALYSISQUERY',  
        @command = N' SELECT  
       [Measures].[Internet Sales Amount] ON COLUMNS,  
       [Customer].[State-Province].Members ON ROWS  
    FROM [AdventureWorks2012]',   
        @retry_attempts = 5,  
        @retry_interval = 5 ;  
    GO  
    ```  
  
For more information, see [sp_add_jobstep (Transact-SQL)](http://msdn.microsoft.com/en-us/97900032-523d-49d6-9865-2734fba1c755).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To create a PowerShell Script job step**  
  
Use the **JobStep** class by using a programming language that you choose, such as XMLA or MDX. For more information, see [SQL Server Management Objects (SMO)](http://msdn.microsoft.com/library/ms162169.aspx).  
  
