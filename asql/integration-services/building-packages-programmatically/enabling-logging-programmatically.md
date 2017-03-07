---
title: "Enabling Logging Programmatically | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
dev_langs: 
  - "VB"
  - "CSharp"
helpviewer_keywords: 
  - "SQL Server Integration Services packages, logs"
  - "SSIS packages, logs"
  - "Integration Services packages, logs"
  - "SSIS logging"
  - "log providers [Integration Services]"
  - "logs [Integration Services], enabling"
  - "LoggingMode property"
  - "LogProvider object"
  - "packages [Integration Services], logs"
ms.assetid: 3222a1ed-83eb-421c-b299-a53b67bba740
caps.latest.revision: 50
ms.author: "douglasl"
manager: "jhubbard"
---
# Enabling Logging Programmatically
  The run-time engine provides a collection of <xref:Microsoft.SqlServer.Dts.Runtime.LogProvider> objects that enable event-specific information to be captured during package validation and execution. <xref:Microsoft.SqlServer.Dts.Runtime.LogProvider> objects are available to <xref:Microsoft.SqlServer.Dts.Runtime.DtsContainer> objects, including the <xref:Microsoft.SqlServer.Dts.Runtime.TaskHost>, <xref:Microsoft.SqlServer.Dts.Runtime.Package>, <xref:Microsoft.SqlServer.Dts.Runtime.ForLoop>, and <xref:Microsoft.SqlServer.Dts.Runtime.ForEachLoop> objects. Logging is enabled on individual containers, or on the whole package.  
  
 There are several types of log providers that are available for a container to use. This provides the flexibility to create and store log information in many formats. Enlisting a container object in logging is a two-step process: first logging is enabled, and then a log provider is selected. The <xref:Microsoft.SqlServer.Dts.Runtime.DtsContainer.LoggingOptions%2A> and <xref:Microsoft.SqlServer.Dts.Runtime.DtsContainer.LoggingMode%2A> properties of the container are used to specify the logged events and to select the log provider.  
  
## Enabling Logging  
 The <xref:Microsoft.SqlServer.Dts.Runtime.DtsContainer.LoggingMode%2A> property, found in each container that can perform logging, determines whether the container's event information is recorded to the event log. This property is assigned a value from the <xref:Microsoft.SqlServer.Dts.Runtime.DTSLoggingMode> structure, and is inherited from the container's parent by default. If the container is a package, and therefore has no parent, the property uses the <xref:Microsoft.SqlServer.Dts.Runtime.DTSLoggingMode.UseParentSetting>, which defaults to **Disabled**.  
  
### Selecting a Log Provider  
 After the <xref:Microsoft.SqlServer.Dts.Runtime.DtsContainer.LoggingMode%2A> property is set to **Enabled**, a log provider is added to the <xref:Microsoft.SqlServer.Dts.Runtime.SelectedLogProviders> collection of the container to complete the process. The <xref:Microsoft.SqlServer.Dts.Runtime.SelectedLogProviders> collection is available on the <xref:Microsoft.SqlServer.Dts.Runtime.LoggingOptions> object, and contains the log providers selected for the container. The <xref:Microsoft.SqlServer.Dts.Runtime.SelectedLogProviders.Add%2A> method is called to create a provider and add it to the collection. The method then returns the log provider that was added to the collection. Each provider has configuration settings that are unique to that provider, and these properties are set using the <xref:Microsoft.SqlServer.Dts.Runtime.LogProvider.ConfigString%2A> property.  
  
 The following table lists the available log providers, their description, and their <xref:Microsoft.SqlServer.Dts.Runtime.LogProvider.ConfigString%2A> information.  
  
|Provider|Description|ConfigString property|  
|--------------|-----------------|---------------------------|  
|SQL Server Profiler|Generates SQL traces that may be captured and viewed in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Profiler. The default file name extension for this provider is .trc.|No configuration is required.|  
|SQL Server|Writes event log entries to the **sysssislog** table in any [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database.|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provider requires that the connection to the database be specified, and also the target database name.|  
|Text File|Writes event log entries to ASCII text files in a comma-separated value (CSV) format. The default file name extension for this provider is .log.|The name of a file connection manager.|  
|Windows Event Log|Logs to standard Windows Event Log on the local computer in the Application log.|No configuration is required.|  
|XML File|Writes event log entries to XML formatted file. The default file name extension for this provider is .xml|The name of a file connection manager.|  
  
 Events are included in or excluded from the event log by setting the **EventFilterKind** and the **EventFilter** properties of the container. The **EventFilterKind** structure contains two values, **ExclusionFilter** and **InclusionFilter**, that indicate whether the events that are added to the **EventFilter** are included in the event log. The **EventFilter** property is then assigned a string array that contains the names of the events that are the subject of the filtering.  
  
 The following code enables logging on a package, adds the log provider for Text files to the <xref:Microsoft.SqlServer.Dts.Runtime.SelectedLogProviders> collection, and specifies a list of events to include in the logging output.  
  
## Sample  
  
```c#  
using System;  
using Microsoft.SqlServer.Dts.Runtime;  
  
namespace Microsoft.SqlServer.Dts.Samples  
{  
  class Program  
  {  
    static void Main(string[] args)  
    {  
      Package p = new Package();  
  
      ConnectionManager loggingConnection = p.Connections.Add("FILE");  
      loggingConnection.ConnectionString = @"C:\SSISPackageLog.txt";  
  
      LogProvider provider = p.LogProviders.Add("DTS.LogProviderTextFile.2");  
      provider.ConfigString = loggingConnection.Name;  
      p.LoggingOptions.SelectedLogProviders.Add(provider);  
      p.LoggingOptions.EventFilterKind = DTSEventFilterKind.Inclusion;  
      p.LoggingOptions.EventFilter = new String[] { "OnPreExecute",   
         "OnPostExecute", "OnError", "OnWarning", "OnInformation" };  
      p.LoggingMode = DTSLoggingMode.Enabled;  
  
      // Add tasks and other objects to the package.  
  
    }  
  }  
}  
```  
  
```vb#  
Imports Microsoft.SqlServer.Dts.Runtime  
  
Module Module1  
  
  Sub Main()  
  
    Dim p As Package = New Package()  
  
    Dim loggingConnection As ConnectionManager = p.Connections.Add("FILE")  
    loggingConnection.ConnectionString = "C:\SSISPackageLog.txt"  
  
    Dim provider As LogProvider = p.LogProviders.Add("DTS.LogProviderTextFile.2")  
    provider.ConfigString = loggingConnection.Name  
    p.LoggingOptions.SelectedLogProviders.Add(provider)  
    p.LoggingOptions.EventFilterKind = DTSEventFilterKind.Inclusion  
    p.LoggingOptions.EventFilter = New String() {"OnPreExecute", _  
       "OnPostExecute", "OnError", "OnWarning", "OnInformation"}  
    p.LoggingMode = DTSLoggingMode.Enabled  
  
    ' Add tasks and other objects to the package.  
  
  End Sub  
  
End Module  
```  
  
||  
|-|  
|![Integration Services icon (small)](../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Logging](../../integration-services/performance/integration-services-ssis-logging.md)  
  
  