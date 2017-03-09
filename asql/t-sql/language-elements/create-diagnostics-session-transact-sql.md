---
title: "CREATE DIAGNOSTICS SESSION (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 662d019e-f217-49df-9e2f-b5662fa0342d
caps.latest.revision: 9
ms.author: "barbkess"
manager: "jhubbard"
---
# CREATE DIAGNOSTICS SESSION (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Diagnostics sessions allow you to save detailed, user-defined diagnostic information on system or query performance.  
  
 Diagnostics sessions are typically used to debug performance for a specific query, or to monitor the behavior of a specific appliance component during appliance operation.  
  
> [!NOTE]  
>  You should be familiar with XML in order to use diagnostics sessions.  
  
## Syntax  
  
```  
-- Syntax for Parallel Data Warehouse  
  
Creating a new diagnostics session:  
CREATE DIAGNOSTICS SESSION diagnostics_name AS N’{<session_xml>}’;  
  
<session_xml>::  
<Session>  
   [ <MaxItemCount>max_item_count_num</MaxItemCount> ]  
   <Filter>  
      { <Event Name=”event_name”/>  
         [ <Where><filter_property_name Name=”value” ComparisonType="comp_type"/></Where> ] [ ,...n ]  
      } [ ,...n ]  
   </Filter> ]   
   <Capture>  
      <Property Name=”property_name”/> [ ,...n ]  
   </Capture>  
<Session>  
  
Retrieving results for a diagnostics session:  
SELECT * FROM master.sysdiag.diagnostics_name ;  
  
Removing results for a diagnostics session:  
DROP DIAGNOSTICS SESSION diagnostics_name ;  
```  
  
## Arguments  
 *diagnostics_name*  
 The name of the diagnostics session. Diagnostics session names can include characters a-z, A-Z, and 0-9 only. Also, diagnostics session names must start with a character. *diagnostics_name* is limited to 127 characters.  
  
 *max_item_count_num*  
 The number of events to be persisted in a view. For example, if 100 is specified, the 100 most recent events matching the filter criteria will be persisted to the diagnostics session. If fewer than 100 matching events are found, the diagnostics session will contain less than 100 events. *max_item_count_num* must be at least 100 and less than or equal to 100,000.  
  
 *event_name*  
 Defines the actual events to be collected in the diagnostics session.  *event_name* is one of the events listed in [sys.pdw_diag_events](http://msdn.microsoft.com/en-us/d813aac0-cea1-4f53-b8e8-d26824bc2587) where `sys.pdw_diag_events.is_enabled='True'`.  
  
 *filter_property_name*  
 The name of the property on which to restrict results. For example, if you want to limit based on session id, *filter_property_name* should be *SessionId*. See *property_name* below for a list of potential values for *filter_property_name*.  
  
 *value*  
 A value to evaluate against *filter_property_name*. The value type must match the property type. For example, if the property type is decimal, the type of *value* must be decimal.  
  
 *comp_type*  
 The comparison type. Potential values are:Equals, EqualsOrGreaterThan, EqualsOrLessThan, GreaterThan, LessThan, NotEquals, Contains, RegEx  
  
 *property_name*  
 A property related to the event.  Property names can be part of the capture tag, or used as part of filtering criteria.  
  
|Property Name|Description|  
|-------------------|-----------------|  
|UserName|A user (login) name.|  
|SessionId|A session ID.|  
|QueryId|A query ID.|  
|CommandType|A command type.|  
|CommandText|Text within a command processed.|  
|OperationType|The operation type for the event.|  
|Duration|The duration of the event.|  
|SPID|The Service Process ID.|  
  
## Remarks  
 Each user is allowed a maximum of 10 concurrent diagnostics sessions. See [sys.pdw_diag_sessions](http://msdn.microsoft.com/en-us/ca111ddc-2787-4205-baf0-1a242c0257a9) for a list of your current sessions, and drop any unneeded sessions using `DROP DIAGNOSTICS SESSION`.  
  
 Diagnostics sessions will continue to collect metadata until dropped.  
  
## Permissions  
 Requires the **ALTER SERVER STATE** permission.  
  
## Locking  
 Takes a shared lock on the Diagnostic Sessions table.  
  
## Examples  
  
### A. Creating a diagnostics session  
 This example creates a diagnostics session to record metrics of the database engine performance. The example creates a diagnostics session that listens for Engine Query running/end events and a blocking DMS event. What is returned is the command text, machine name, request id (query id) and the session that the event was created on.  
  
```  
CREATE DIAGNOSTICS SESSION MYDIAGSESSION AS N'  
<Session>  
   <MaxItemCount>100</MaxItemCount>  
   <Filter>  
      <Event Name="EngineInstrumentation:EngineQueryRunningEvent" />  
      <Event Name="DmsCoreInstrumentation:DmsBlockingQueueEnqueueBeginEvent" />  
      <Where>  
         <SessionId Value="381" ComparisonType="NotEquals" />  
      </Where>  
   </Filter>  
   <Capture>  
      <Property Name="Query.CommandText" />  
      <Property Name="MachineName" />  
      <Property Name="Query.QueryId" />  
      <Property Name="Alias" />  
      <Property Name="Duration" />  
      <Property Name="Session.SessionId" />  
   </Capture>  
</Session>';  
```  
  
 After creation of the diagnostics session, run a query.  
  
```  
SELECT COUNT(EmployeeKey) FROM AdventureWorksPDW2012..FactSalesQuota;  
```  
  
 Then view the diagnostics session results by selecting from the sysdiag schema.  
  
```  
SELECT * FROM master.sysdiag.MYDIAGSESSION;  
```  
  
 Notice that the sysdiag schema contains a view that is named your diagnostics session name.  
  
 To see only the activity for your connection, add the `Session.SPID` property and add `WHERE [Session.SPID] = @@spid;` to the query.  
  
 When you are finished with the diagnostics session, drop it using the **DROP DIAGNOSTICS** command.  
  
```  
DROP DIAGNOSTICS SESSION MYDIAGSESSION;  
```  
  
### B. Alternative diagnostic session  
 A second example with slightly different properties.  
  
```  
-- Determine the session_id of your current session  
SELECT TOP 1 session_id();  
-- Replace <*session_number*> in the code below with the numbers in your session_id  
CREATE DIAGNOSTICS SESSION PdwOptimizationDiagnostics AS N'  
<Session>  
   <MaxItemCount>100</MaxItemCount>  
   <Filter>  
      <Event Name="EngineInstrumentation:MemoGenerationBeginEvent" />  
      <Event Name="EngineInstrumentation:MemoGenerationEndEvent" />  
      <Event Name="DSQLInstrumentation:OptimizationBeginEvent" />  
      <Event Name="DSQLInstrumentation:OptimizationEndEvent" />  
      <Event Name="DSQLInstrumentation:BuildRelOpContextTreeBeginEvent" />  
      <Event Name="DSQLInstrumentation:PostPlanGenModifiersEndEvent" />  
      <Where>  
         <SessionId Value="<*session_number*>" ComparisonType="Equals" />  
      </Where>  
   </Filter>  
   <Capture>  
      <Property Name="Session.SessionId" />  
      <Property Name="Query.QueryId" />  
      <Property Name="Query.CommandText" />  
      <Property Name="Name" />  
      <Property Name="DateTimePublished" />  
      <Property Name="DateTimePublished.Ticks" />  
  </Capture>  
</Session>';  
```  
  
 Run a query, such as:  
  
```  
USE ssawPDW;  
GO  
SELECT * FROM dbo.FactFinance;  
```  
  
 The following query returns the authorization timing:  
  
```  
SELECT *   
FROM master.sysdiag.PdwOptimizationDiagnostics   
ORDER BY DateTimePublished;  
```  
  
 When you are finished with the diagnostics session, drop it using the **DROP DIAGNOSTICS** command.  
  
```  
DROP DIAGNOSTICS SESSION PdwOptimizationDiagnostics;  
```  
  
  