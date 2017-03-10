---
title: "Debugging Control Flow | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "progress reporting [Integration Services]"
  - "breakpoints [Integration Services]"
  - "debugging [Integration Services], control flow"
  - "control flow [Integration Services], debugging"
  - "color-coded progress reporting [Integration Services]"
  - "Set Breakpoints dialog box"
ms.assetid: 54a458cc-9f4f-4b48-8cf2-db2e0fa7756c
caps.latest.revision: 54
ms.author: "douglasl"
manager: "jhubbard"
---
# Debugging Control Flow
  [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] and [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] include features and tools that you can use to troubleshoot the control flow in an [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package.  
  
-   [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] supports breakpoints on containers and tasks.  
  
-   [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer provides progress reporting at run time.  
  
-   [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] provides debug windows.  
  
## Breakpoints  
 [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer provides the **Set Breakpoints** dialog box, in which you can set breakpoints by enabling break conditions and specifying the number of times a breakpoint can occur before the execution of the package is suspended. Breakpoints can be enabled at the package level, or at the level of the individual component. If break conditions are enabled at the task or container level, the breakpoint icon appears next to the task or container on the design surface of the **Control Flow** tab. If the break conditions are enabled on the package, the breakpoint icon appears on the label of the **Control Flow** tab.  
  
 When a breakpoint is hit, the breakpoint icon changes to help you identify the source of the breakpoint. You can add, delete, and change breakpoints when the package is running.  
  
 [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] provides ten break conditions that you can enable on all tasks and containers. In the **Set Breakpoints** dialog box, you can enable breakpoints on the following conditions:  
  
|Break condition|Description|  
|---------------------|-----------------|  
|When the task or container receives the **OnPreExecute** event.|Called when a task is about to execute. This event is raised by a task or a container immediately before it runs.|  
|When the task or container receives the **OnPostExecute** event.|Called immediately after the execution logic of the task finishes. This event is raised by a task or container immediately after it runs.|  
|When the task or container receives the **OnError** event.|Called by a task or container when an error occurs.|  
|When the task or container receives the **OnWarning** event.|Called when the task is in a state that does not justify an error, but does warrant a warning.|  
|When the task or container receives the **OnInformation** event.|Called when the task is required to provide information.|  
|When the task or container receives the **OnTaskFailed** event.|Called by the task host when it fails.|  
|When the task or container receives the **OnProgress** event.|Called to update progress about task execution.|  
|When the task or container receives the **OnQueryCancel** event.|Called at any time in task processing when you can cancel execution.|  
|When the task or container receives the **OnVariableValueChanged** event.|Called by the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] runtime when the value of a variable changes. The RaiseChangeEvent of the variable must be set to **true** to raise this event.<br /><br /> **\*\* Warning \*\*** The variable associated with this breakpoint must be defined at the **container** scope. If the variable is defined at the package scope, the breakpoint does not get hit.|  
|When the task or container receives the **OnCustomEvent** event.|Called by tasks to raise custom task-defined events.|  
  
 In addition to the break conditions available to all tasks and containers, some tasks and containers include special break conditions for setting breakpoints. For example, you can enable a break condition on the For Loop container that sets a breakpoint that suspends execution at the start of each iteration of the loop.  
  
 To add flexibility and power to a breakpoint, you can modify the behavior of a breakpoint by specifying the following options:  
  
-   The hit count, or the maximum number of times that a break condition occurs before the execution is suspended.  
  
-   The hit count type, or the rule that specifies when the break condition triggers the breakpoint.  
  
 The hit count types, except for the Always type, are further qualified by the hit count. For example, if the type is "Hit count equals" and the hit count is 5, execution is suspended on the sixth occurrence of the break condition.  
  
 The following table describes the hit count types.  
  
|Hit count type|Description|  
|--------------------|-----------------|  
|Always|Execution is always suspended when the breakpoint is hit.|  
|Hit count equals|Execution is suspended when the number of times the breakpoint has occurred is equal to the hit count.|  
|Hit count greater than or equal to|Execution is suspended when the number of times the breakpoint has occurred is equal to or greater than the hit count.|  
|Hit count multiple|Execution is suspended when a multiple of the hit count occurs. For example, if you set this option to 5, execution is suspended every fifth time.|  
  
#### To set breakpoints  
  
-   [Debug a Package by Setting Breakpoints on a Task or a Container](../../integration-services/troubleshooting/debug-a-package-by-setting-breakpoints-on-a-task-or-a-container.md)  
  
## Progress Reporting  
 [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer includes two types of progress reporting: color-coding on the design surface of the **Control Flow** tab, and progress messages on the **Progress** tab.  
  
 When you run a package, [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer depicts execution progress by displaying each task or container using a color that indicates execution status. You can tell by its color whether the element is waiting to run, currently running, has completed successfully, or has ended unsuccessfully. After you stop package execution, the color-coding disappears.  
  
 The following table describes the colors that are used to depict execution status.  
  
|Color|Execution status|  
|-----------|----------------------|  
|Gray|Waiting to run|  
|Yellow|Running|  
|Green|Ran successfully|  
|highlighted|Ran with errors|  
  
 The **Progress** tab lists tasks and containers in execution order and includes the start and finish times, warnings, and error messages. After you stop package execution, the progress information remains available on the **Execution Results** tab.  
  
> [!NOTE]  
>  To enable or disable the display of messages on the **Progress** tab, toggle the **Debug Progress Reporting** option on the **SSIS** menu.  
  
 The following diagram shows the **Progress** tab.  
  
 ![Progress tab of SSIS Designer](../../integration-services/troubleshooting/media/mw-dtsflow04.gif "Progress tab of SSIS Designer")  
  
## Debug Windows  
 [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] includes many windows that you can use to work with breakpoints, and to debug packages that contain breakpoints. To learn more about each window, open the window, and then press F1 to display Help for the window.  
  
 To open these windows in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], click the **Debug** menu, point to **Windows**, and then click **Breakpoints**, **Output**, or **Immediate**.  
  
 The following table describes the windows.  
  
|Window|Description|  
|------------|-----------------|  
|Breakpoints|Lists the breakpoints in a package and provides options to enable and delete breakpoints.|  
|Output|Displays status messages for features in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)].|  
|Immediate|Used to debug and evaluate expressions and print variable values.|  
  
## See Also  
 [Troubleshooting Tools for Package Development](../../integration-services/troubleshooting/troubleshooting-tools-for-package-development.md)  
  
  