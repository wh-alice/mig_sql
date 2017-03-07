---
title: "Extending the Package with the Script Task | Microsoft Docs"
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
  - "scripts [Integration Services]"
  - "SSIS Script task"
  - "tasks [Integration Services], scripts"
  - "Script task [Integration Services], about Script task"
  - "scripts [Integration Services], about Script task with packages"
  - "SSIS Script task, about Script task"
ms.assetid: 911e6d26-a6fd-4fc3-a111-bf5f048e9bff
caps.latest.revision: 57
ms.author: "douglasl"
manager: "jhubbard"
---
# Extending the Package with the Script Task
  The Script task extends the run-time capabilities of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] packages with custom code written in [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Visual Basic or [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Visual C# that is compiled and executed at package run time. The Script task simplifies the development of a custom run-time task when the tasks included with [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] do not fully satisfy your requirements. The Script task writes all the required infrastructure code for you, letting you focus exclusively on the code that is required for your custom processing.  
  
 A Script task interacts with the containing package through the global **Dts** object, an instance of the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel> class that is exposed in the scripting environment. You can write code in a Script task that modifies the values stored in [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] variables; later, the package can use those updated values to determine the path of its workflow. The Script task can also use the [!INCLUDE[vbprvb](../../../a9retired/includes/vbprvb-md.md)] namespace and the [!INCLUDE[dnprdnshort](../../../a9retired/includes/dnprdnshort-md.md)] class library, as well as custom assemblies, to implement custom functionality.  
  
 The Script task and the infrastructure code that it generates for you simplify significantly the process of developing a custom task. However, to understand how the Script task works, you may find it useful to read the section [Developing a Custom Task](../../../integration-services/extending-packages-custom-objects/task/developing-a-custom-task.md) to understand the steps that are involved in developing a custom task.  
  
 If you are creating a task that you plan to reuse in multiple packages, you should consider developing a custom task instead of using the Script task. For more information, see [Comparing Scripting Solutions and Custom Objects](../../../integration-services/extending-packages-scripting/comparing-scripting-solutions-and-custom-objects.md).  
  
## In This Section  
 The following topics provide more information about the Script task.  
  
 [Configuring the Script Task in the Script Task Editor](../../../integration-services/extending-packages-scripting/task/configuring-the-script-task-in-the-script-task-editor.md)  
 Explains how the properties that you configure in the **Script Task Editor** affect the capabilities and the performance of the code in the Script task.  
  
 [Coding and Debugging the Script Task](../../../integration-services/extending-packages-scripting/task/coding-and-debugging-the-script-task.md)  
 Explains how to use [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vsprvs](../../../a9retired/includes/vsprvs-md.md)] Tools for Applications (VSTA) to develop the scripts that are contained in the Script task.  
  
 [Using Variables in the Script Task](../../../integration-services/extending-packages-scripting/task/using-variables-in-the-script-task.md)  
 Explains how to use variables through the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Variables%2A> property.  
  
 [Connecting to Data Sources in the Script Task](../../../integration-services/extending-packages-scripting/task/connecting-to-data-sources-in-the-script-task.md)  
 Explains how to use connections through the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Connections%2A> property.  
  
 [Raising Events in the Script Task](../../../integration-services/extending-packages-scripting/task/raising-events-in-the-script-task.md)  
 Explains how to raise events through the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Events%2A> property.  
  
 [Logging in the Script Task](../../../integration-services/extending-packages-scripting/task/logging-in-the-script-task.md)  
 Explains how to log information through the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Log%2A> method.  
  
 [Returning Results from the Script Task](../../../integration-services/extending-packages-scripting/task/returning-results-from-the-script-task.md)  
 Explains how to return results through the property <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.TaskResult%2A> and the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.ExecutionValue%2A> property.  
  
 [Script Task Examples](../../../integration-services/extending-packages-scripting-task-examples/script-task-examples.md)  
 Provides simple examples that demonstrate several possible uses for a Script task.  
  
||  
|-|  
|![Integration Services icon (small)](../../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)], as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Script Task](../../../integration-services/control-flow/script-task.md)   
 [Comparing the Script Task and the Script Component](../../../integration-services/extending-packages-scripting/comparing-the-script-task-and-the-script-component.md)  
  
  