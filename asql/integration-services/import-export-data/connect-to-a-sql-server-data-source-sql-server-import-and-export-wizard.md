---
title: "Connect to a SQL Server Data Source (SQL Server Import and Export Wizard) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 386cedbb-fae5-45ce-9363-c4a417f80a2f
caps.latest.revision: 19
ms.author: "douglasl"
manager: "jhubbard"
---
# Connect to a SQL Server Data Source (SQL Server Import and Export Wizard)
This topic shows you how to connect to a **Microsoft SQL Server** data source from the **Choose a Data Source** or **Choose a Destination** page of the SQL Server Import and Export Wizard. There are several data providers that you can use to connect to SQL Server.

> [!TIP]
> If you're on a network with multiple servers, it may be easier to enter the server name rather than expand the drop-down list of servers. If you click the drop-down list, it may take a lot of time to query the network for all available servers, and the results may not even include the server you want.

## Connect to SQL Server with the .NET Framework Data Provider for SQL Server 
After you select **.NET Framework Data Provider for SQL Server** on the **Choose a Data Source** or **Choose a Destination** page of the wizard, the page displays a grouped list of options for the provider. Many of these are unfriendly names and unfamiliar settings. Fortunately, to connect to any enterprise database, you typically have to provide only a few pieces of information. You can ignore the default values for the other settings.

|Required info|.Net Framework Data Provider for SQL Server property|
|---|---|
|Server name|**Data Source**|
|Authentication (login) info|**Integrated Security**; or, **User ID** and **Password**<br/>If you want to see a drop-down list of databases on the server, you first have to provide valid login info.|
|Database name|**Initial Catalog**|

![Connect to SQL with .NET provider](../../integration-services/import-export-data/media/connect-to-sql-with-.net-provider.jpg)

> [!NOTE]
> The connection options for this data provider are the same whether SQL Server is your source or your destination. That is, the options you see are the same on both the **Choose a Data Source** and the **Choose a Destination** pages of the wizard.

### Options to specify (.NET Framework Data Provider for SQL Server)
**Data Source**  
 Enter the name or IP address of the source or destination server, or select a server from the drop-down list.  
 
 To specify a non-standard TCP port, enter a comma after the server name or IP address, then enter the port number.
 
 **Initial Catalog**  
 Enter the name of the source or destination database, or select a database from the drop-down list.  
  
 **Integrated Security**  
 Specify **True** to connect with Windows integrated authentication (recommended), or **False** to connect with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] authentication. If you specify **False**, you must enter a user ID and password. The default value is **False**.  
  
 **User ID**  
 Enter a user name if you're using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] authentication.  
  
 **Password**  
 Enter the password if you're using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] authentication.  

## Connect to SQL Server with the ODBC driver for SQL Server 
ODBC drivers aren't listed in the drop-down list of data sources. To connect with an ODBC driver, start by selecting the **.NET Framework Data Provider for ODBC** as the data source. This provider acts as a wrapper around the ODBC driver.

> [!TIP]
> **Get the latest driver**. Download the [Microsoft ODBC Driver 13 for SQL Server](https://www.microsoft.com/download/details.aspx?id=53339).

Here's the generic screen that you see immediately after selecting the .NET Framework Data Provider for ODBC.

![Connect to SQL with ODBC before](../../integration-services/import-export-data/media/connect-to-sql-with-odbc-before.jpg)

### Options to specify (ODBC driver for SQL Server)

**Driver**  
The name of the ODBC driver. The name is different for different versions of the driver.

**Server**  
The name of the SQL Server.

**Database**  
The name of the database.  

**Trusted_Connection**; or, **Uid** and **Pwd**  
Specify **Trusted_Connection=Yes** to connect with Windows integrated authentication; or, specify **Uid** (user id) and **Pwd** (password) to connect with SQL Server authentication.

### Enter the connection string
Enter your connection string in the **ConnectionString** field. After you enter the connection string, the wizard parses the string and displays the individual properties and their values in the list.

> [!NOTE]
> Instead of providing a connection string, you can also provide an existing DSN (data source name) or create a new one. In this case, enter the DSN name in the **Dsn** field. For more info about using a DSN, see [Connect to an ODBC Data Source](../../integration-services/import-export-data/connect-to-an-odbc-data-source-sql-server-import-and-export-wizard.md).

This example is going to use the following connection string.

    Driver={ODBC Driver 13 for SQL Server};server=localhost;database=WideWorldImporters;trusted_connection=Yes;

If the example was using SQL Server authentication instead of Windows integrated authentication, the connection string would look like the following.

     Driver={ODBC Driver 13 for SQL Server};server=localhost;database=WideWorldImporters;uid=<user id>;pwd=<password>;

Here's the screen that you see after entering the connection string.

![Connect to SQL with ODBC after](../../integration-services/import-export-data/media/connect-to-sql-with-odbc-after.jpg)

> [!NOTE]
> The connection options for this data provider and ODBC driver are the same whether SQL Server is your source or your destination. That is, the options you see are the same on both the **Choose a Data Source** and the **Choose a Destination** pages of the wizard.

## Connect to SQL Server with the Microsoft OLE DB Provider for SQL Server or SQL Server Native Client

> [!IMPORTANT]
> The Microsoft OLE DB Provider for SQL Server and SQL Server Native Client are not supported in versions of SQL Server after SQL Server 2012. Use the ODBC driver instead. To learn more about the transition to the ODBC driver, see the following blog posts.
>   -   [Microsoft is Aligning with ODBC for Native Relational Data Access](https://blogs.msdn.microsoft.com/sqlnativeclient/2011/08/29/microsoft-is-aligning-with-odbc-for-native-relational-data-access/)
>   -   [Introducing the new Microsoft ODBC Drivers for SQL Server](https://blogs.msdn.microsoft.com/sqlnativeclient/2013/01/23/introducing-the-new-microsoft-odbc-drivers-for-sql-server/)

## Other data providers and more info
For info about how to connect to SQL Server with a data provider that's not listed here, see [SQL Server connection strings](https://www.connectionstrings.com/sql-server/). This third-party site also contains more info about the data providers and the connection parameters described on this page.

## See also
[Choose a Data Source](../../integration-services/import-export-data/choose-a-data-source-sql-server-import-and-export-wizard.md)  
[Choose a Destination](../../integration-services/import-export-data/choose-a-destination-sql-server-import-and-export-wizard.md)
