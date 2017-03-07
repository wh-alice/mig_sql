---
title: "Logging in the Script Task | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "SQL Server Integration Services packages, logs"
  - "SSIS packages, logs"
  - "logs [Integration Services], scripts"
  - "Integration Services packages, logs"
  - "Log method"
  - "SSIS Script task, logs"
  - "Script task [Integration Services], logs"
  - "packages [Integration Services], logs"
ms.assetid: 2e11fc15-df18-4309-bd2d-fc58aa4b9b7a
caps.latest.revision: 57
ms.author: "douglasl"
manager: "jhubbard"
---
# Logging in the Script Task
  The use of logging in [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] packages lets you record detailed information about execution progress, results, and problems by recording predefined events or user-defined messages for later analysis. The Script task can use the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Log%2A> method of the **Dts** object to log user-defined data. If logging is enabled, and the **ScriptTaskLogEntry** event is selected for logging on the **Details** tab of the **Configure SSIS Logs** dialog box, a single call to the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Log%2A> method stores the event information in all the log providers configured for the task.  
  
> [!NOTE]  
>  Although you can perform logging directly from your Script task, you may want to consider implementing events rather than logging. When using events, not only can you enable the logging of event messages, but you can also respond to the event with default or user-defined event handlers.  
  
 For more information about logging, see [Integration Services &#40;SSIS&#41; Logging](../../../integration-services/performance/integration-services-ssis-logging.md).  
  
## Logging Example  
 The following example demonstrates logging from the Script task by logging a value that represents the number of rows processed.  
  
```vb#  
Public Sub Main()  
  
    Dim rowsProcessed As Integer = 100  
    Dim emptyBytes(0) As Byte  
  
    Try  
        Dts.Log("Rows processed: " & rowsProcessed.ToString, _  
            0, _  
            emptyBytes)  
        Dts.TaskResult = ScriptResults.Success  
    Catch ex As Exception  
        'An error occurred.  
        Dts.Events.FireError(0, "Script Task Example", _  
            ex.Message & ControlChars.CrLf & ex.StackTrace, _  
            String.Empty, 0)  
        Dts.TaskResult = ScriptResults.Failure  
    End Try  
  
End Sub  
```  
  
```c#  
using System;  
using System.Data;  
using Microsoft.SqlServer.Dts.Runtime;  
  
public class ScriptMain  
{  
  
    public void Main()  
        {  
            //  
            int rowsProcessed = 100;  
            byte[] emptyBytes = new byte[0];  
  
            try  
            {  
                Dts.Log("Rows processed: " + rowsProcessed.ToString(), 0, emptyBytes);  
                Dts.TaskResult = (int)ScriptResults.Success;  
            }  
            catch (Exception ex)  
            {  
                //An error occurred.  
                Dts.Events.FireError(0, "Script Task Example", ex.Message + "\r" + ex.StackTrace, String.Empty, 0);  
                Dts.TaskResult = (int)ScriptResults.Failure;  
            }  
  
        }  
```  
  
 }  
  
## External Resources  
  
-   Blog entry, [Logging custom events for Integration Services tasks](http://go.microsoft.com/fwlink/?LinkId=165644), on dougbert.com  
  
||  
|-|  
|![Integration Services icon (small)](../../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Logging](../../../integration-services/performance/integration-services-ssis-logging.md)  
  
  