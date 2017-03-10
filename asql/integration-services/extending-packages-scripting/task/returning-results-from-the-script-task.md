---
title: "Returning Results from the Script Task | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
dev_langs: 
  - "VB"
helpviewer_keywords: 
  - "Script task [Integration Services], status information"
  - "ExecutionValue property"
  - "status information [Integration Services]"
  - "TaskResult property"
  - "SSIS Script task, status information"
ms.assetid: ac06805b-c2db-44bd-af5c-5a0debe36dd7
caps.latest.revision: 36
ms.author: "douglasl"
manager: "jhubbard"
---
# Returning Results from the Script Task
  The Script task uses the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.TaskResult%2A> and the optional <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.ExecutionValue%2A> properties to return status information to the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] runtime that can be used to determine the path of the workflow after the Script task has finished.  
  
## TaskResult  
 The <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.TaskResult%2A> property reports whether the task succeeded or failed. For example:  
  
 `Dts.TaskResult = ScriptResults.Success`  
  
## ExecutionValue  
 The <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.ExecutionValue%2A> property optionally returns a user-defined object that quantifies or provides more information about the success or failure of the Script task. For example, the FTP task uses the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.ExecutionValue%2A> property to return the number of files transferred. The Execute SQL task returns the number of rows affected by the task. The <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.ExecutionValue%2A> can also be used to determine the path of the workflow. For example:  
  
 `Dim rowsAffected as Integer`  
  
 `...`  
  
 `rowsAffected = 1000`  
  
 `Dts.ExecutionValue = rowsAffected`  
  
||  
|-|  
|![Integration Services icon (small)](../../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
  