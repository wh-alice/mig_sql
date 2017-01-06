---
title: "Generating Reports (MySQLToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
helpviewer_keywords: 
  - "Generating reports"
ms.assetid: 1c0202e8-546d-4cb3-a37f-1d2e35d53839
caps.latest.revision: 6
ms.author: "lonnyb"
manager: "lonnyb"
---
# Generating Reports (MySQLToSQL)
The reports of certain activities performed using commands are generated in SSMA Console at object tree level.  
  
Use the following procedure to generate reports:  
  
1.  Specify the **write-summary-report-to** parameter. The related report is stored as the file name (if specified) or in the folder you specify. The file name is system-predefined as mentioned in the table below where, **&lt;n&gt;** is the unique file number that increments with a digit with each execution of the same command.  
  
    The reports vis-à-vis commands are:  
  
    ||||  
    |-|-|-|  
    |**Sl. No.**|**Command**|**Report Title**|  
    |1|generate-assessment-report|AssessmentReport&lt;n&gt;.XML|  
    |2|convert-schema|SchemaConversionReport&lt;n&gt;.XML|  
    |3|migrate-data|DataMigrationReport&lt;n&gt;.XML|  
    |4|convert-sql-statement|ConvertSQLReport&lt;n&gt;.XML|  
    |5|synchronize-target|TargetSynchronizationReport&lt;n&gt;.XML|  
    |6|refresh-from-database|SourceDBRefreshReport&lt;n&gt;.XML|  
  
    > [!IMPORTANT]  
    > An output report is different from Assessment Report. The former is a report on the performance of an executed command while, the latter is an XML report for programmatic consumption.  
  
    For the command options for output reports (from Sl. No. 2-4 above), refer to the [Executing the SSMA Console &#40;MySQLToSQL&#41;](../../ssma/mysql/executing-the-ssma-console--mysqltosql-.md) section.  
  
2.  Indicate the extent of detail you desire in the output report using the Report Verbosity settings:  
  
    ||||  
    |-|-|-|  
    |**Sl. No.**|**Command and Parameter**|**Output Description**|  
    |1|verbose=”false”|Generates a summarized report of the activity.|  
    |2|verbose=”true”|Generates a summarized and detailed status report for each activity.|  
  
    > [!NOTE]  
    > The Report Verbosity Settings specified above are applicable for generate-assessment-report, convert-schema, migrate-data, convert-sql-statement commands.  
  
3.  Indicate the extent of detail you desire in the error reports using the Error Reporting settings:  
  
    ||||  
    |-|-|-|  
    |**Sl. No.**|**Command and Parameter**|**Output Description**|  
    |1|report-errors=”false”|No details on error/ warning/ info messages.|  
    |2|report-errors=”true”|Detailed error/ warning/ info messages.|  
  
    > [!NOTE]  
    > The Error Reporting Settings specified above are applicable for generate-assessment-report, convert-schema, migrate-data, convert-sql-statement commands.  
  
```xml  
<generate-assessment-report  
  
   object-name="<object-name>"  
  
   object-type="<object-type>"  
  
   verbose="<true/false>"  
  
   report-erors="<true/false>"  
  
   write-summary-report-to="<file-name/folder-name>"  
  
   assessment-report-folder="<folder-name>"  
  
   assessment-report-overwrite="<true/false>"  
  
/>  
```  
  
### synchronize-target:  
The command **synchronize-target** has **report-errors-to** parameter, which specifies the location of error report for the synchronization operation. Then, a file by name **TargetSynchronizationReport&lt;n&gt;.XML** is created at the specified location, where **&lt;n&gt;** is the unique file number that increments with a digit with each execution of the same command.  
  
**Note:** If the folder path is given, then ‘report-errors-to’ parameter becomes an optional attribute for the command ‘synchronize-target’.  
  
```xml  
<!-- Example: Synchronize target entire Database with all attributes-->  
  
<synchronize-target  
  
   object-name="<object-name>"  
  
   on-error="<report-total-as-warning/report-each-as-warning/fail-script>"  
  
   report-errors-to="<file-name/folder-name>"  
  
/>  
```  
**object-name:** Specifies the object(s) considered for synchronization (It can also have indivdual object names or a group object name).  
  
**on-error:** Specifies whether to specify synchronization errors as warnings or error. Available options for on-error:  
  
-   report-total-as-warning  
  
-   report-each-as-warning  
  
-   fail-script  
  
### refresh-from-database:  
The command **refresh-from-database** has **report-errors-to** parameter, which specifies the location of error report for the refresh operation. Then, a file by name **SourceDBRefreshReport&lt;n&gt;.XML** is created at the specified location, where **&lt;n&gt;** is the unique file number that increments with a digit with each execution of the same command.  
  
**Note:** If the folder path is given, then ‘report-errors-to’ parameter becomes an optional attribute for the command ‘synchronize-target’.  
  
```xml  
<!-- Example: Refresh entire Schema (with all attributes)-->  
  
<refresh-from-database  
  
   object-name="<object-name>"  
  
   object-type ="<object-type>"  
  
   on-error="<report-total-as-warning/report-each-as-warning/fail-script>"  
  
   report-errors-to="<file-name/folder-name>"  
  
/>  
```  
**object-name:** Specifies the object(s) considered for refresh (It can also have indivdual object names or a group object name).  
  
**on-error:** Specifies whether to specify refresh errors as warnings or error. Available options for on-error:  
  
-   report-total-as-warning  
  
-   report-each-as-warning  
  
-   fail-script  
  
## See Also  
[Executing the SSMA Console (MySQL)](http://msdn.microsoft.com/en-us/e3e9f7e4-0619-4861-a202-3d5d39953b26)  
  
