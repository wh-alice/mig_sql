---
title: "Execute SQL Task Editor (General Page) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.executesqltask.general.f1"
helpviewer_keywords: 
  - "Execute SQL Task Editor"
ms.assetid: beb39086-28ce-46af-b6d8-f7b4fb8d9069
caps.latest.revision: 45
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Execute SQL Task Editor (General Page)
  Use the **General** page of the **Execute SQL Task Editor** dialog box to configure the Execute SQL task and provide the SQL statement that the task runs.  
  
 To learn about this task, see [Execute SQL Task](../integration-services/control-flow/execute-sql-task.md), [Parameters and Return Codes in the Execute SQL Task](../a9retired/parameters-and-return-codes-in-the-execute-sql-task.md), and [Result Sets in the Execute SQL Task](../a9retired/result-sets-in-the-execute-sql-task.md). To learn more about the Transact-SQL query language, see [Transact-SQL Reference &#40;Database Engine&#41;](../t-sql/transact-sql-reference-database-engine.md).  
  
## Static Options  
 **Name**  
 Provide a unique name for the Execute SQL task in the workflow. The name that is provided will be displayed within [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer.  
  
 **Description**  
 Describe the Execute SQL task. As a best practice, to make packages self-documenting and easier to maintain, describe the task in terms of its purpose.  
  
 **TimeOut**  
 Specify the maximum number of seconds the task will run before timing out. A value of 0 indicates an infinite time. The default is 0.  
  
> [!NOTE]  
>  Stored procedures do not time out if they emulate sleep functionality by providing time for connections to be made and transactions to complete that is greater than the number of seconds specified by **TimeOut**. However, stored procedures that execute queries are always subject to the time restriction specified by **TimeOut**.  
  
 **CodePage**  
 Specify the code page to use when translating Unicode values in variables. The default value is the code page of the local computer.  
  
> [!NOTE]  
>  When the Execute SQL task uses an ADO or ODBC connection manager, the **CodePage** property is not available. If your solution requires the use of a code page, use an OLE DB or an ADO.NET connection manager with the Execute SQL task.  
  
 **TypeConversionMode**  
 When you set this property to **Allowed**, the Execute SQL Task will attempt to convert output parameter and query results to the data type of the variable the results are assigned to. This applies to the **Single row** result set type.  
  
 **ResultSet**  
 Specify the result type expected by the SQL statement being run. Choose among **Single row**, **Full result set**, **XML**, or **None**.  
  
 **ConnectionType**  
 Choose the type of connection manager to use to connect to the data source. Available connection types include **OLE DB**, **ODBC**, **ADO**, **ADO.NET** and **SQLMOBILE**.  
  
 **Related Topics:** [OLE DB Connection Manager](../integration-services/connection-manager/ole-db-connection-manager.md), [ODBC Connection Manager](../integration-services/connection-manager/odbc-connection-manager.md), [ADO Connection Manager](../integration-services/connection-manager/ado-connection-manager.md), [ADO.NET Connection Manager](../integration-services/connection-manager/ado.net-connection-manager.md), [SQL Server Compact Edition Connection Manager](../integration-services/connection-manager/sql-server-compact-edition-connection-manager.md)  
  
 **Connection**  
 Choose the connection from a list of defined connection managers. To create a new connection, select \<**New connection...**>.  
  
 **SQLSourceType**  
 Select the source type of the SQL statement that the task runs.  
  
 Depending on the connection manager type that Execute SQL task uses, you must use specific parameter markers in parameterized SQL statements.  
  
 **Related Topics:** Running Parameterized SQL Commands section in [Execute SQL Task](../integration-services/control-flow/execute-sql-task.md)  
  
 This property has the options listed in the following table.  
  
|Value|Description|  
|-----------|-----------------|  
|**Direct input**|Set the source to a Transact-SQL statement. Selecting this value displays the dynamic option, **SQLStatement**.|  
|**File connection**|Select a file that contains a Transact-SQL statement. Setting this option displays the dynamic option, **FileConnection**.|  
|**Variable**|Set the source to a variable that defines the Transact-SQL statement. Selecting this value displays the dynamic option, **SourceVariable**.|  
  
 **QueryIsStoredProcedure**  
 Indicates whether the specified SQL statement to be run is a stored procedure. This property is read/write only if the task uses the ADO connection manager. Otherwise the property is read-only and its value is **false**.  
  
 **BypassPrepare**  
 Indicate whether the SQL statement is prepared.  **true** skips preparation; **false** prepares the SQL statement before running it. This option is available only with OLE DB connections that support preparation.  
  
 **Related Topics:**  [Prepared Execution](../relational-databases/native-client-odbc-queries/executing-statements/prepared-execution.md)  
  
 **Browse**  
 Locate a file that contains a SQL statement by using the **Open** dialog box. Select a file to copy the contents of the file as a SQL statement into the **SQLStatement** property.  
  
 **Build Query**  
 Create an SQL statement using the **Query Builder** dialog box, a graphical tool used to create queries. This option is available when the **SQLSourceType** option is set to **Direct input**.  
  
 **Parse Query**  
 Validate the syntax of the SQL statement.  
  
## SQLSourceType Dynamic Options  
  
### SQLSourceType = Direct input  
 **SQLStatement**  
 Type the SQL statement to execute in the option box, or click the browse button (…) to type the SQL statement in the **Enter SQL Query** dialog box, or click **Build Query** to compose the statement using the **Query Builder** dialog box.  
  
 **Related Topics:** [Query Builder](../a9retired/query-builder.md)  
  
### SQLSourceType = File connection  
 **FileConnection**  
 Select an existing File connection manager, or click \<**New connection...**> to create a new connection manager.  
  
 **Related Topics:** [File Connection Manager](../integration-services/connection-manager/file-connection-manager.md), [File Connection Manager Editor](../integration-services/connection-manager/file-connection-manager-editor.md)  
  
### SQLSourceType = Variable  
 **SourceVariable**  
 Select an existing variable, or click \<**New variable...**> to create a new variable.  
  
 **Related Topics:** [Integration Services &#40;SSIS&#41; Variables](../integration-services/integration-services-ssis-variables.md), [Add Variable](../a9retired/add-variable.md)  
  
## See Also  
 [Integration Services Error and Message Reference](../integration-services/integration-services-error-and-message-reference.md)   
 [Execute SQL Task Editor &#40;Parameter Mapping Page&#41;](../a9retired/execute-sql-task-editor-parameter-mapping-page.md)   
 [Execute SQL Task Editor &#40;Result Set Page&#41;](../a9retired/execute-sql-task-editor-result-set-page.md)  
  
  