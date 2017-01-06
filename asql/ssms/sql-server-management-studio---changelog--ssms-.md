---
title: "SQL Server Management Studio - Changelog (SSMS) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-05"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3dc76cc1-3b4c-4719-8296-f69ec1b476f9
caps.latest.revision: 67
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
# SQL Server Management Studio - Changelog (SSMS)
### SSMS 16.5.1 release
Generally available | Build number: 13.0.16100.1

* Fixed an issue where Invoke-Sqlcmd erroneously inserts multiple rows when check constraint occurs. [Microsoft Connect Item: 811560](https://connect.microsoft.com/SQLServer/feedback/details/811560)

* Fixed an issue where non-ENU language versions do not work completely when creating Availability Groups.

* Fixed an issue where clicking query plan XML does not open the proper SSMS UI.


### SSMS 16.5 release
Generally available | Build number: 13.0.16000.28

* Fixed an issue where a crash could occur when a database with table name containing “;:” was clicked on.
* Fixed an issue where changes made to the Model page in AS Tabular Database Properties window would script out the original definition. 
[Microsoft Connect Item: 3080744](https://connect.microsoft.com/SQLServer/feedback/details/3080744) 
* Fixed the issue that temporary files are added to the “Recent Files” list.  
[Microsoft Connect Item: 2558789](https://connect.microsoft.com/SQLServer/feedback/details/2558789)
* Fixed the issue that “Manage Compression” menu item is disabled for the user table nodes in object explorer tree.  
[Microsoft Connect Item: 3104616](https://connect.microsoft.com/SQLServer/feedback/details/3104616)

* Fixed the issue that user is not able to set the font size for object explorer, registered server explorer, template explorer as well as object explorer details. Font for the explorers will be using the Environment font.  
[Microsoft Connect Item: 691432](https://connect.microsoft.com/SQLServer/feedback/details/691432)

* Fixed the issue that SSMS always reconnect to the default database when connection is lost.  
[Microsoft Connect Item: 3102337](https://connect.microsoft.com/SQLServer/feedback/details/3102337)

* Fixed many of high dpi issues in policy management and query editor window including the execution plan icons.

* Fixed the issue that option to config font and color for Extended Event is missing.

* Fixed the issue of SSMS crashes that occur when closing the application or when it is trying to show the error dialog.


### SSMS 16.4.1 (September 2016) release
Generally available | Build number: 13.0.15900.1

*  Fixed an issue where attempting to ALTER/Modify a Stored Procedure fails:  
[Microsoft Connect item #3103831](https://connect.microsoft.com/SQLServer/feedback/details/3103831)

* New 'Read-SqlTableData', 'Read-SqlViewData', and 'Write-SqlTableData' cmdlets to view and write data using PowerShell.  
[Trello Read-SqlTableData Card](https://trello.com/c/FXVUNJ8x/131-read-sqltabledata)  
[Microsoft Connect item #2685363](https://connect.microsoft.com/SQLServer/feedback/details/2685363)
	
* New 'Add-SqlLogin' cmdlet to enable new login management scenarios using PowerShell.  
[Microsoft Connect item #2588952](https://connect.microsoft.com/SQLServer/feedback/details/2588952)
	
*  Improved support and usability for users connecting to various national clouds.
	
	
*  Fixed an issue where an Out Of Memory Exceptions were being thrown.  
[Microsoft Connect item #3062914](https://connect.microsoft.com/SQLServer/feedback/details/3062914)  
[Microsoft Connect item #3074856](https://connect.microsoft.com/SQLServer/feedback/details/3074856)
	
*  Fixed an issue where filtering by schema was not a valid filter option.  
[Microsoft Connect item #3058105](https://connect.microsoft.com/SQLServer/feedback/details/3058105)  
[Microsoft Connect item #3101136](https://connect.microsoft.com/SQLServer/feedback/details/3101136)
	
*  Fixed an issue where the Monitor window for a stretched database would not be accessible.
	
*  Fixed an issue where the F1 Help always opened online content. Users can now select whether they prefer online or offline help via the "Set Help Preference" in the Help menu.   
[Microsoft Connect item #2826366](https://connect.microsoft.com/SQLServer/feedback/details/2826366)
	
*  Fixed an issue where scripting out a 1200-level Analysis Services tabular model wouldn’t strip out the password for scripting, even though the server version had [client model object is now sync’d before scripting].
	
*  Fixed an issue where 'SELECT TOP N ROWS' option generated deprecated syntax for the the TOP operator.  
[Microsoft Connect item #3065435](https://connect.microsoft.com/SQLServer/feedback/details/3065435)
	
*  Fixed various layout issues throughout SSMS, including the Login Properties page and Advanced Query Execution Options.   
[Microsoft Connect item #3058199](https://connect.microsoft.com/SQLServer/feedback/details/3058199)  
[Microsoft Connect item #3079122](https://connect.microsoft.com/SQLServer/feedback/details/3058199)  
[Microsoft Connect item #3071384](https://connect.microsoft.com/SQLServer/feedback/details/3071384)
	
*  Fixed an issue where a solution was created automatically whenever a user opened a new query window.   
[Microsoft Connect item #2924667](https://connect.microsoft.com/SQLServer/feedback/details/2924667)    
[Microsoft Connect item #2917742](https://connect.microsoft.com/SQLServer/feedback/details/2917742)   
[Microsoft Connect item #2612635](https://connect.microsoft.com/SQLServer/feedback/details/2612635)
	
*  Fixed an issue where temporal tables could not be expanded in Object Explorer when in system databases.  
[Microsoft Connect item #2551649](https://connect.microsoft.com/SQLServer/feedback/details/2551649)
	
*  Fixed an issue where SSMS runs a query to SELECT @@trancount after executing a batch.    
[Microsoft Connect item #3042364](https://connect.microsoft.com/SQLServer/feedback/details/3042364)
	
*  Fixed an issue in Analysis Services where creating a script from a server's properties page resulted in a hidden connection dialog.
	
*  Fixed an issue where Ctrl+Q would not select the Quick Launch toolbar.
	
*  Fixed an issue where changing the MaxSize of a database using the Server Properties dialog was broken for databases > 2 TB.  
[Microsoft Connect item #1231091](https://connect.microsoft.com/SQLServer/feedback/details/1231091)
	
*  Fixed an issue where the Restore Database wizard wouldn't accept filenames with leading whitespaces:   
[Microsoft Connect item #2395147](https://connect.microsoft.com/SQLServer/feedback/details/2395147)



### SSMS 16.3 (August 2016) release
Generally available | Version number: 13.0.15700.28

* SSMS monthly releases are now branded numerically.

* [New authentication option **'Active Directory Universal Authentication'**](https://azure.microsoft.com/documentation/articles/sql-database-ssms-mfa-authentication/). This is a token-based authentication mechanism driven by Azure Active Directory that supports multi-factor, password, and integrated authentication mechanisms.

* New Extended Events templates matching the functionality of SQL Server Profiler templates [(Microsoft Connect item #2543925).](https://connect.microsoft.com/SQLServer/feedback/details/2543925/sql-server-extended-events-profiler-tool). Learn more about the included [SQL Server Profiler templates](https://msdn.microsoft.com/library/ms190176.aspx).

* New Create database and database properties dialogs for Azure SQL databases.

* New 'Get-SqlLogin' and 'Remove-SqlLogin' cmdlets to help perform SQL Server login management using PowerShell.  
*Linked customer bug requests:*   
[Microsoft Connect item #2588952.](https://connect.microsoft.com/SQLServer/feedback/details/2588952/)

* New PowerShell cmdlet 'New-SqlColumnMasterKeySettings' that adds support for creation of column master keys for arbitrary providers and key paths.

* New 'Create database' dialog to streamline creation of Azure SQL databases in SSMS>

* Support for filtering in the 'Databases' node of SSMS Object Explorer. Navigate to the 'Databases' node in Object explorer and click the filter icon in the Object explorer toolbar to filter the list of databases.

* Support for Azure-Resource Manager (ARM) type storage accounts in the Backup and Restore wizards.

* [Intial beta support for high-resolution displays](https://blogs.msdn.microsoft.com/sqlreleaseservices/ssms-highdpi-support/).  
*Linked customer bug requests:*   
[Microsoft Connect item #1129301](https://connect.microsoft.com/SQLServer/feedback/details/1129301/management-studio-is-unusable-on-a-4k-display), 
[Microsoft Connect item #1858763](https://connect.microsoft.com/SQLServer/feedback/details/1858763/), [Microsoft Connect item #1852671](https://connect.microsoft.com/SQLServer/feedback/details/1852671/), [Microsoft Connect item #1487643](https://connect.microsoft.com/SQLServer/feedback/details/1487643/),  [Microsoft Connect item #1355641](https://connect.microsoft.com/SQLServer/feedback/details/1355641/), [Microsoft Connect item #2161595](https://connect.microsoft.com/SQLServer/feedback/details/2161595/), [Microsoft Connect item #1854041](https://connect.microsoft.com/SQLServer/feedback/details/1854041/), [Microsoft Connect item #1055617](https://connect.microsoft.com/SQLServer/feedback/details/1055617/), [Microsoft Connect item #2448774](https://connect.microsoft.com/SQLServer/feedback/details/2448774/), [Microsoft Connect item #1521405](https://connect.microsoft.com/SQLServer/feedback/details/1521405/), [Microsoft Connect item #2117853](https://connect.microsoft.com/SQLServer/feedback/details/2117853/), [Microsoft Connect item #2014256](https://connect.microsoft.com/SQLServer/feedback/details/2014256/), [Microsoft Connect item #2162218](https://connect.microsoft.com/SQLServer/feedback/details/2162218/), [Microsoft Connect item #2344551](https://connect.microsoft.com/SQLServer/feedback/details/2344551/), [Microsoft Connect item #1664436](https://connect.microsoft.com/SQLServer/feedback/details/1664436/), [Microsoft Connect item #2554043](https://connect.microsoft.com/SQLServer/feedback/details/2554043/), [Microsoft Connect item #2983216](https://connect.microsoft.com/SQLServer/feedback/details/2983216/), [Microsoft Connect item #2021706](https://connect.microsoft.com/SQLServer/feedback/details/2021706/)

* Improvements in Database Engine Tuning Advisor (DTA) to support automatically reading a workload from the SQL Server Query Store.

* Improvements in Database Engine Tuning Advisor (DTA) to display index recommendations for clustered columnstore indexes, non-clustered columnstore indexes, and rowstore indexes.

* Support for sending Database Console (DBCC) commands using SQL Server Analysis Services PowerShell cmdlets.

* Bug fix to view cleartext of decrypted AlwaysEncrypted large object (LOB) columns in SSMS.  
*Linked customer bug requests:*   
[Microsoft Connect item #2413024](https://connect.microsoft.com/SQLServer/feedback/details/2413024/cannot-view-cleartext-of-alwaysencrypted-lob-columns-in-ssms)

* Bug fix in Always Encrypted dialog to fix crash when Windows visual styles aren't enabled (e.g. enabling high contrast display).

* Bug fix for 'Method not found' error preventing connection to SQL Server instances.

* Bug fix for SSMS crash when creating a partition function with datetime offset.

* Bug fix to add remove Microsoft .NET 3.5 requirement for starting Distributed Replay administration tool (DReplay.exe).

* Bug fix in Analysis Services Deployment wizard to support fully-qualified server names.

* Bug fix in SSMS to display partitions in Analysis Services tabular models with a 2016 compatibility model.  
*Linked customer bug requests:*   
[Microsoft Connect item #2845053](https://connect.microsoft.com/SQLServer/feedback/details/2845053/ssms-cannot-display-partitions-in-tabular-models-in-2016-compatibility-level) 

* Performance improvements and bug fixes in Analysis services tabular models, and SQL Server Shared Management Objects (SMO). 


---
### SSMS July 2016 hotfix update release 
Generally available | Version number: 13.0.15600.2

* **Bug fix in SSMS to enable missing right-click menu items**.  
*Linked customer bug requests:*  
[Microsoft Connect item #2883440](https://connect.microsoft.com/SQLServer/feedback/details/2883440/lost-table-design-and-edit-top-n-rows-in-tables-context-menu)  
[Microsoft Connect item #2909644](https://connect.microsoft.com/SQLServer/feedback/details/2909644/ssms-2016-is-missing-edit-options-against-sql-express-2014)  
[Microsoft Connect item #2924345](https://connect.microsoft.com/SQLServer/feedback/details/2924345/some-ssms-object-explorer-right-click-menu-options-missing-in-july-update)

---
### SSMS July 2016 release 
Generally available | Version number: 13.0.15500.91

* *Edit, July 5th:* **Improved support for SQL Server 2016 (1200 compatibility level) tabular databases in the Analysis Services Process dialog and the Analysis Services deployment wizard.**

* *Edit, July 5th:* **New option in SSMS 'query execution options' dialog to set 'XACT_ABORT'. This option is enabled by default in this release of SSMS and instructs SQL Server to rollback the entire transaction and abort the batch if a run-time error occurs.**

* **Support for Azure SQL Data Warehouse in SSMS.**

* **Significant updates to the SQL Server PowerShell module. This includes a new [SQL PowerShell module and new CMDLETs for Always Encrypted, SQL Agent, and SQL Error Logs](https://blogs.technet.microsoft.com/dataplatforminsider/2016/06/30/sql-powershell-july-2016-update)**.

* **Support for PowerShell script generation in the Always Encrypted wizard**.

* **Significantly improved connection times to Azure SQL databases.**

* **New ‘Backup to URL’ dialog to support the creation of Azure storage credentials for SQL Server 2016 database backups. This provides a more streamlined experience for storing database backups in an Azure storage account.**
 
* **New Restore dialog to streamline restoring a SQL Server 2016 database backup from the Microsoft Azure storage service.**
 
* **Bug fix in SSMS query designer to allow adding tables to the designer if a user doesn’t have SELECT permissions on them.**

* **Bug fix to add IntelliSense support for 'TRY_CAST()', and 'TRY_CONVERT()' functions.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2453461](https://connect.microsoft.com/SQLServer/feedback/details/2453461/sql-server-2012-issue-with-try-cast).

* **Bug fix in PowerShell module to enable loading of ‘SQLAS’ Analysis Services extension.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2544902](https://connect.microsoft.com/SQLServer/feedback/details/2544902/ssms-march-2016-refresh-sqlps-failed-to-load-the-sqlas-extension).

* **Bug fix in the SSMS editor window to allow drag-and-drop open of Sql files.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2690658](https://connect.microsoft.com/SQLServer/feedback/details/2690658/cannot-drag-sql-files-into-management-studios).

* **Bug fix in Profiler to fix Profiler crash when exiting.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2616550](https://connect.microsoft.com/SQLServer/feedback/details/2616550/sql-server-2016-rc2-profiler-version-13-0-1300-275-wont-close-after-trace-is-started-even-after-trace-is-stopped).  
[Microsoft Connect item #2319968](https://connect.microsoft.com/SQLServer/Feedback/Details/2319968).

* **Bug fix in SSMS to prevent crash when trying to edit a join link in the SSMS table designer.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2721052](https://connect.microsoft.com/SQLServer/feedback/details/2721052/ssms-view-design-mode-right-click-on-join-crashes-ssms).

* **Bug fix in SSMS to enable database script generation for db_owner role members.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2869241](https://connect.microsoft.com/SQLServer/feedback/details/2869241/error-with-script-database-as-create-to-in-ssms-2008r2-and-ssms-2016-june).

* **Bug fix in SSMS editor to remove the delay in closing a query tab if the server has gone offline.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2656058](https://connect.microsoft.com/SQLServer/feedback/details/2656058/ssms-2014-2016-query-tab-takes-significantly-longer-to-close-if-the-instance-it-was-connected-to-is-now-offline).

* **Bug fix to enable Backup option in SQL Server Express databases.**  
*Linked customer bug requests:*  
[Microsoft Connect item #2801910](https://connect.microsoft.com/SQLServer/feedback/details/2801910/ssms-2016-backup-option-not-appearing-in-tasks).  
[Microsoft Connect item #2874434](https://connect.microsoft.com/SQLServer/feedback/details/2874434/backup-missing-from-tasks-context-menu-in-ssms-2016-when-you-are-connected-to-an-express-instance).

* **Bug fix in Analysis Services to correctly show the Data Feed provider for multi-dimensional Analysis Services models.**

----
### SSMS June 2016 generally available release
Generally available | Version number: 13.0.15000.23

* **SSMS is generally available starting with the June 2016 release.**

* **New quick find dialog in SSMS that is better integrated into the current document and allows searching via regular expressions.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2735513/quick-find-replace-in-ssms-2016-rc3/>

* **Improvements in SSMS installer to allow you to track installation progress and process exit codes for unattended installations via scripts.**

* **Bug fix in SSMS context-sensitive F1 help to correctly display help documents and articles.**

* **Bug fix in Query Data Store 'Regressed Queries' view that caused SSMS to crash when scrolling.** 

* **Bug fix in Excel Analysis Services OLEDB connector to allow connections from Excel 2016 to SQL Server Analysis Services.**

* **Bug fix in SSMS Connection dialog to show the connection dialog on the same monitor as the main SSMS window in multi-monitor systems.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/724909/connection-dialog-appears-off-screen/>
\<https://connect.microsoft.com/SQLServer/feedback/details/755689/sql-server-management-studio-connect-to-server-popup-dialog/>  
\<https://connect.microsoft.com/SQLServer/feedback/details/389165/sql-server-management-studio-gets-confused-dealing-with-multiple-displays/>

* **Bug fixes in Always Encrypted experience. Fixed bug where Always Encrypted menu option was not enabled correctly for Stretch databases. Also fixed bug in the Always Encrypted wizard where it was not properly using the SafeNet (Luna SA) HSM provider.**

---
### SSMS April 2016 Preview 
Version number: 13.0.14000.36
  
* **Improvement in the SSMS installer to add human-readable error messages.**  
  
* **Improvement in the Stretch database wizard to add support for predicates**.  
  
* **Improvement in the AlwaysEncrypted Powershell commandlet to add key encryption APIs**.  
  
* **Bug fix to turn off IntelliSense in the SSMS toolbar if it has been disabled in the Tools,Options dialog.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2555163/sql-2016-rc2-turning-off-intellisense-from-options-does-not-turn-it-off-on-toolbar/>  
    
* **Improvements and bug fixes in the Showplan comparison user interface to reduce the spacing used by long query plans**.  
  
* **Bug fixes in SSMS to fix issues that caused SSMS to crash when exiting**.   
  
* **Bug fixes in the Always Encrypted wizard to retain user permissions during encryption and to allow database detach operations after the wizard is complete**.  
  
* **Bug fix in Always Encrypted New Column Master Key dialog to provide feedback on attempt to generate a key using an unsupported Cryptographic Algorithm (CNG) provider.**  
  
---  
### SSMS March 2016 Preview Refresh
Version number: 13.0.13000.55
  
* **SSMS now uses the Visual Studio 2015 Isolated Shell.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2390544/update-ssms-to-use-visual-studio-2015-dependencies/>  
  
* **New quick launch toolbar that helps you to quickly find menu items, and options. (VS 2015 Isolated shell)**  
  
* **Improvements in SSMS theming options to add support for an SSMS light theme. (VS 2015 Isolated shell)**  
  
* **Bug fix in SSMS tools menu option to correctly reset query shortcuts if the "Reset to Default" button is pressed.**  
  
* **Bug fix in SSMS new project templates to display easily readable template names.**  
  
* **Resolved error with viewing the SQL Agent job history in SSMS.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2458860/error-viewing-job-history-microsoft-datawarehouse-sqm/>  
    
* **Bug fix to allow off-line installation of SSMS. This allows you to install without the need for an Internet connection. (VS 2015 Isolated shell)**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2497178/cannot-install-ssms-when-server-has-no-internet-access/>  
    
* **Bug fix to keep user's current directory when SQL Server PowerShell (SQLPS) module is imported.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2434605/loading-sqlps-module-changes-current-directory-to-ps-sqlserver/>  
    
* **Bug fix in SQL Server PowerShell (SQLPS) module to use approved PowerShell verbs.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2432891/sqlps-module-uses-unapproved-powershell-verbs/>  
    
* **Bug fix in SQL Server Powershell (SQLPS) module to load module faster.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2429153/sqlps-module-is-slow-to-load/>  
    
* **Bug fix in SQL Agent Job Steps to allow modifying a job step.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2453996/issues-with-agent-in-ssms-2016-rc0-13-0-12000-65/>  
    
* **Bug fix in SSMS Object explorer to list tables alphabetically.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2424718/sql-server-2016-ssms-table-list-confusing/>  
    
* **Bug fix in 'available databases' drop down to show accurate list of database names when a SQL Server connection is changed.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2513420/available-databases-drop-down-box-does-not-update-when-connection-changes-in-ssms/>  
    
* **Bug fix in SSMS Keyboard shortcuts to move focus to 'available databases' dropdown if 'CTRL+U' keystroke pressed**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2534820/ssms-ctrl-u-doesnt-work/>  
  
---  
### SSMS March 2016 Preview 
Version number: 13.0.12500.29 
  
* **Improvement in SSMS web installer to allow navigation using keyboard keys.**  
  
* **Improvement in AlwaysEncrypted wizard to support alias data types for encryption.**  
  
* **Bug Fix in AlwaysOn 'New Availability Group' wizard to display the correct number of maximum automatic failover targets.**  
*Linked customer bug requests:* \<https://connect.microsoft.com/SQLServer/feedback/details/2333670/ssms-is-showing-the-wrong-number-of-maximum-automatic-failover-targets/>  
    
* **Bug fix in SSMS web installer to fix errors affecting installation.**  
*Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2181548/sql-server-2016-ctp-3-2-management-studio-setup/>  
    
* **Bug fix in SSMS preview release to enable saving maintenance plans on SQL Server 2012 and below.**  
      
* **Bug fixes in Backup wizard to allow custom multiple backup names for striped backups, and to display appropriate backup file name if a new name is entered after a storage credential is selected.**  
  
---  
### SSMS February 2016 Preview 
Version number: 13.0.12000.65
  
* **Improvement in Activity monitor to display text options when high contrast settings are enabled in SSMS.**  
  
* **Improvement in the Always Encrypted wizard dialog to display a warning if the collation for a column will be changed during the encryption process.**  
  
* **Improvement in policy management to add support for creating conditions on Column Encryption Keys, Column Encryption Key Values, and Column Master keys.**  
  
* **Bug fix to improve usability of Always Encrypted master key cleanup dialog and Always Encrypted error messages.**  
  
* **Bug fix to disable Always Encrypted column master key rotation if only one key exists.**  
  
* **Bug fix for 'type initializer' error that occurs if Always Encrypted dialog is launched using the SSMS January release or the SSMS release bundled with the SQL Server RC0 media.**  
  
---  
### SSMS January 2016 Preview 
Version number: 13.0.11000.78 
  
* **Bug fix in SSMS to allow the deletion of Extended Events (XEvent) sessions.**  
  
* **Bug fix to open properties dialog for a SQL Server 2014 availability group.**  
 *Linked customer bug requests:*  
 \<https://connect.microsoft.com/SQLServer/feedback/details/1609719/>  
     
* **Bug fix to enable the ability to add an Azure replica to an availability group.**  
 *Linked customer bug requests:*  
 \<https://connect.microsoft.com/SQLServer/feedback/details/2029135/>  
     
* **Bug fix to open properties dialog for SQL Server 2014 databases.**  
 *Linked customer bug requests:*  
 \<https://connect.microsoft.com/SQLServer/feedback/details/2080209/>  
     
* **Bug fix to remove duplicate columns that appear for each table when connected to an Azure SQL database.**  
 *Linked customer bug requests:*  
 \<https://connect.microsoft.com/SQLServer/feedback/details/2103116/>  
---  
### SSMS December 2015 Preview 
Version number: 13.0.900.73
  
* **Improvements to Showplan comparison to enable comparison of the current query execution plan with one saved in a file.**  
  
* **Improved IntelliSense support for inline columnstore indexes in SSMS.**  
  
* **Bug fix in Extended Events session wizard to enable selection of templates when connected to an Azure V12 server.**  
  
* **New tab-stops in the "Create Audit" and "New Login" dialogs under the Security folder to enable easier keyboard navigation.**  
  
* **Bug fix to enable functionality to "Switch to results tab after query execution" if SSMS is set to display results in grid format.**   
 *Linked customer bug requests:*  
  \<https://connect.microsoft.com/SQLServer/feedback/details/1390296/switch-to-results-tab-after-query-execution-grid-mode-in-ssms-2016>  
  
* **Bug fix to display un-truncated column headers if SSMS is set to display results in grid format.**  
 *Linked customer bug requests:*  
  \<https://connect.microsoft.com/SQLServer/feedback/details/2004111/bugbash-column-headers-in-grid-mode-truncated-with-courier-new-8>  
      
* **Bug fixes to allow proper installation of SSMS web installer.**  
 *Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/2003865/ssms-october-preview-incoherent-error-message>  
\<https://connect.microsoft.com/SQLServer/feedback/details/2079557/unable-to-instal-sql-server-update-13-0-800-111-over-13-0-700-242-error-code-2711>  
  
---  
### SSMS November 2015 Preview
Version number: 13.0.800.111
  
* **Bitmap scaling support for High-DPI displays in SSMS.**  
  
* **Improvements to the user-interface of AlwaysEncrypted dialogs and wizards to simplify the process of creating database encryption keys.**  
  
* **New right-click context menu option in "Processes" list in Activity monitor to view Live Query Statistics.**  
  
* **Bug fix to enable proper uninstall of SSMS preview releases on client machines.**  
  *Linked customer bug requests:*  
  \<http://connect.microsoft.com/SQLServer/feedback/details/1868474/ssms-2016-preview-can-be-installed-but-not-uninstalled>  
  
* **Bug fix to allow editing of job steps in SQL Job Agent even when a file is missing**.  
  *Linked customer bug requests:*  
  \<https://connect.microsoft.com/SQLServer/feedback/details/1769778/management-studio-2016-sql-job-agent>  
    \<https://connect.microsoft.com/SQLServer/feedback/details/1502100/ssms-preview-error>  
      
* **Bug fix in "View Target Data" menu option for an Extended Events Session on a database running in an Azure virtual machine.**  
  *Linked customer bug requests*:  
  \<https://connect.microsoft.com/SQLServer/feedback/details/1769778/management-studio-2016-sql-job-agent>  
***  

### SSMS October 2015 Preview 
Version number: 13.0.700.242  
* **New modernized lightweight web installer that simplifies the SSMS download and install process.**  
  
* **New Always Encrypted column encryption wizard that enables client-side encryption and decryption of selected columns.**  
  
* **New Column Master Key (CMK) rotation dialog for Always Encrypted databases that simplifies the process of rotating encryption keys to keep data secure.**  
  
* **New stretch database monitor that allows you to troubleshoot and monitor the migration status of data to the Azure cloud.**  
  
* **Improvements to the Stretch database wizard to support choosing a Microsoft Azure server that is not in the default Microsoft Azure subscription.**  
  *Linked customer bug requests:*  
  \<https://connect.microsoft.com/SQLServer/feedback/details/1687063/cannot-choose-from-multiple-microsoft-azure-subscriptions>  
* **Bug fix to allow proper display of live execution plan in SSMS.**  
  *Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/1774446/viewing-live-execution-plan-from-activity-monitor-crashes-ssms>    
* **Bug fix to remove invalid options in SSMS scripting of database snapshots**  
  *Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/1515168/ssms-scripting-of-database-snapshots-includes-invalid-options>  
* **Bug fix in Query Data Store UI to show details in the "Top Resource Consuming Queries" pane.**  
  *Linked customer bug requests:*  
\<https://connect.microsoft.com/SQLServer/feedback/details/1737185/sql-server-2016-overall-resource-consumption-query-store-pane-issue>  
***  

### SSMS September 2015 Preview 
Version number: 13.0.600.65  
* **New firewall rule dialog that streamlines the process of connecting to an Azure SQL database.**      
    
* **Updated "New index" dialog allowing the creation of non-clustered rowstore indexes even when a clustered columnstore index is present. This functionality is available for SQL 2016 and beyond.**      
  *Linked customer bug requests:*    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1552617/creation-of-nc-index-when-clustered-columnstore-index>  
      
* **Bug fix to allow viewing and editing SQL Agent job steps in SSMS preview releases running on Windows 7.**      
  *Linked customer bug requests:*    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1548140/cannot-view-or-edit-any-sql-agent-job-step>,    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1626895/unable-to-load-dll-dts>,    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1576662/error-creating-new-job-step>     
      
* **Bug fix to display trigger nodes in SSMS for SQL Server 2014 and later.**      
  *Linked customer bug requests:*    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1617533/trigger-node-missing>   
      
* **Bug fixes in database and server standard report user interface to exclude version information from header.**      
  *Linked customer bug requests:*    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1387471/report-headings-wrongly-named>  
      
* **Bug fix to prevent a Live Query Statistics node from displaying as complete when it's incomplete.**      
  *Linked customer bug requests:*    
  \<https://connect.microsoft.com/SQLServer/feedback/details/1589096/live-query-statistics-node-shows-as-completed>  
  
***      
### SSMS August 2015 Preview 
Version number: 13.0.500.53
  
* **Object explorer updates to reduce loading delay when there are a large number of databases.**  
  
* **Improvements for installation of SSMS on Windows 10 machines.**  
  
* **Bug fixes and updates to SQL Server Configuration manager, and SSMS user reports user interface**    
***  
  
### SSMS July 2015 Preview
Version number: 13.0.400.91
  
* **Database diagrams for Azure SQL Database (V12).**  
  
* **Improved IntelliSense support for new temporal table syntax.**  
  
* **Updated DacFx library to support latest Azure SQL databases features including row-level security and Azure Active directory authentication.**  
  
* **Bug fixes (updated 'check for update' UI, UI fix in 'compatibility level' list and more).**  
***  
  
### SSMS June 2015 Preview 
Version number: 13.0.300.44
  
* **New SSMS light-weight web installer.**  
  
* **Automatic check for updates.**  
  
* **SSMS now has full-text-search support for Azure SQL Database (V12).**  
  
* **Top customer requests addressed:**  
  * 'Edit Top 200 Rows' enabled for tables and views in Object Explorer.  
  * Table designer enabled for Azure SQL Database (V12).  
  * Database and table property dialogs enabled for Azure SQL Database (V12).  
    
 * **New option to skip prompt to save T-SQL files.**  
   
 * **Import/Export wizard support for new Azure SQL Database service tiers (Basic, Standard, Premium).**  
   
 * **Numerous bug fixes (scripting scenarios, enabling change tracking for SQL databases, and more).**   
     
  
  
  
  
  
  
    
