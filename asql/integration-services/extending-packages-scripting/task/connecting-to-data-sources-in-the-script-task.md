---
title: "Connecting to Data Sources in the Script Task | Microsoft Docs"
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
  - "connections [Integration Services], scripts"
  - "Integration Services packages, connections"
  - "connection managers [Integration Services], scripts"
  - "scripts [Integration Services], connections"
  - "SSIS packages, connections"
  - "packages [Integration Services], connections"
  - "Script task [Integration Services], connections"
  - "Connections property"
  - "SQL Server Integration Services packages, connections"
  - "SSIS Script task, connections"
ms.assetid: 9c008380-715b-455b-9da7-22572d67c388
caps.latest.revision: 59
ms.author: "douglasl"
manager: "jhubbard"
---
# Connecting to Data Sources in the Script Task
  Connection managers provide access to data sources that have been configured in the package. For more information, see [Integration Services &#40;SSIS&#41; Connections](../../../integration-services/connection-manager/integration-services-ssis-connections.md).  
  
 The Script task can access these connection managers through the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Connections%2A> property of the **Dts** object. Each connection manager in the <xref:Microsoft.SqlServer.Dts.Runtime.Connections> collection stores information about how to connect to the underlying data source.  
  
 When you call the <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager.AcquireConnection%2A> method of a connection manager, the connection manager connects to the data source, if it is not already connected, and returns the appropriate connection or connection information for you to use in your Script task code.  
  
> [!NOTE]  
>  You must know the type of connection returned by the connection manager before calling **AcquireConnection**. Because the Script task has **Option Strict** enabled, you must cast the connection, which is returned as type **Object**, to the appropriate connection type before you can use it.  
  
 You can use the <xref:Microsoft.SqlServer.Dts.Runtime.Connections.Contains%2A> method of the <xref:Microsoft.SqlServer.Dts.Runtime.Connections> collection returned by the <xref:Microsoft.SqlServer.Dts.Tasks.ScriptTask.ScriptObjectModel.Connections%2A> property to look for an existing connection before using the connection in your code.  
  
> [!IMPORTANT]  
>  You cannot call the AcquireConnection method of connection managers that return unmanaged objects, such as the OLE DB connection manager and the Excel connection manager, in the managed code of a Script task. However, you can read the ConnectionString property of these connection managers, and connect to the data source directly in your code by using the connection string with an **OledbConnection** from the **System.Data.OleDb** namespace.  
>   
>  If you must call the AcquireConnection method of a connection manager that returns an unmanaged object, use an [!INCLUDE[vstecado](../../../analysis-services/data-mining/includes/vstecado-md.md)] connection manager. When you configure the [!INCLUDE[vstecado](../../../analysis-services/data-mining/includes/vstecado-md.md)] connection manager to use an OLE DB provider, it connects by using the [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] Data Provider for OLE DB. In this case, the AcquireConnection method returns a **System.Data.OleDb.OleDbConnection** instead of an unmanaged object. To configure an [!INCLUDE[vstecado](../../../analysis-services/data-mining/includes/vstecado-md.md)] connection manager for use with an Excel data source, select the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] OLE DB Provider for Jet, specify an Excel file, and enter `Excel 8.0` (for Excel 97 and later) as the value of **Extended Properties** on the **All** page of the **Connection Manager** dialog box.  
  
## Connections Example  
 The following example demonstrates how to access connection managers from within the Script task. The sample assumes that you have created and configured an [!INCLUDE[vstecado](../../../analysis-services/data-mining/includes/vstecado-md.md)] connection manager named **Test ADO.NET Connection** and a Flat File connection manager named **Test Flat File Connection**. Note that the [!INCLUDE[vstecado](../../../analysis-services/data-mining/includes/vstecado-md.md)] connection manager returns a **SqlConnection** object that you can use immediately to connect to the data source. The Flat File connection manager, on the other hand, returns only a string that contains the path and file name. You must use methods from the **System.IO** namespace to open and work with the flat file.  
  
```vb#  
Public Sub Main()  
  
    Dim myADONETConnection As SqlClient.SqlConnection  
    myADONETConnection = _  
        DirectCast(Dts.Connections("Test ADO.NET Connection").AcquireConnection(Dts.Transaction), _  
        SqlClient.SqlConnection)  
    MsgBox(myADONETConnection.ConnectionString, _  
        MsgBoxStyle.Information, "ADO.NET Connection")  
  
    Dim myFlatFileConnection As String  
    myFlatFileConnection = _  
        DirectCast(Dts.Connections("Test Flat File Connection").AcquireConnection(Dts.Transaction), _  
        String)  
    MsgBox(myFlatFileConnection, MsgBoxStyle.Information, "Flat File Connection")  
  
    Dts.TaskResult = ScriptResults.Success  
  
End Sub  
```  
  
```c#  
using System;  
using System.Data.SqlClient;  
using Microsoft.SqlServer.Dts.Runtime;  
using System.Windows.Forms;  
  
public class ScriptMain  
{  
  
        public void Main()  
        {  
            SqlConnection myADONETConnection = new SqlConnection();  
            myADONETConnection = (SqlConnection)(Dts.Connections["Test ADO.NET Connection"].AcquireConnection(Dts.Transaction)as SqlConnection);  
            MessageBox.Show(myADONETConnection.ConnectionString, "ADO.NET Connection");  
  
            string myFlatFileConnection;  
            myFlatFileConnection = (string)(Dts.Connections["Test Flat File Connection"].AcquireConnection(Dts.Transaction) as String);  
            MessageBox.Show(myFlatFileConnection, "Flat File Connection");  
  
            Dts.TaskResult = (int)ScriptResults.Success;  
  
        }  
  
}  
  
```  
  
||  
|-|  
|![Integration Services icon (small)](../../../integration-services/building-packages-programmatically/media/dts-16.gif "Integration Services icon (small)")  **Stay Up to Date with Integration Services**<br /> For the latest downloads, articles, samples, and videos from Microsoft, as well as selected solutions from the community, visit the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] page on MSDN:<br /><br /><br /><br /> [Visit the Integration Services page on MSDN](http://go.microsoft.com/fwlink/?LinkId=136655)<br /><br /> For automatic notification of these updates, subscribe to the RSS feeds available on the page.|  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Connections](../../../integration-services/connection-manager/integration-services-ssis-connections.md)   
 [Create Connection Managers](http://msdn.microsoft.com/library/6ca317b8-0061-4d9d-b830-ee8c21268345)  
  
  