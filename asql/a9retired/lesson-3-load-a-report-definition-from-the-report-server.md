---
title: "Lesson 3: Load a Report Definition from the Report Server | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 5ad8b31c-43b0-4481-a31b-090cbed4a438
caps.latest.revision: 16
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Lesson 3: Load a Report Definition from the Report Server
After you have created your project and generated the classes from the RDL schema, you are ready to load a report definition from the report server.  
  
### To load a report definition  
  
1.  Add a private field at the top of the **ReportUpdater** class (module if you are using [!INCLUDE[vbprvb](../a9retired/includes/vbprvb-md.md)]) for the **Report** class. This field will be used to maintain a reference to report that is loaded from the report server for the life of the application.  
  
    ```c#  
    private Report _report;  
    ```  
  
    ```vb#  
    Private m_report As Report  
    ```  
  
2.  Replace the code for the **LoadReportDefinition()** method in the Program.cs file (Module1.vb for [!INCLUDE[vbprvb](../a9retired/includes/vbprvb-md.md)]) with the following code:  
  
    ```c#  
    private void LoadReportDefinition()  
    {  
        System.Console.WriteLine("Loading Report Definition");  
  
        string reportPath =   
            "/AdventureWorks 2012 Sample Reports/Company Sales 2012";  
  
        // Retrieve the report defintion   
        // from the report server  
        byte[] bytes =   
            _reportService.GetItemDefinition(reportPath);  
  
        if (bytes != null)  
        {  
            XmlSerializer serializer =   
                new XmlSerializer(typeof(Report));  
  
            // Load the report bytes into a memory stream  
            using (MemoryStream stream = new MemoryStream(bytes))  
            {  
                // Deserialize the report stream to an   
                // instance of the Report class  
                _report = (Report)serializer.Deserialize(stream);  
            }  
        }  
    }  
    ```  
  
    ```vb#  
    Private Sub LoadReportDefinition()  
  
        System.Console.WriteLine("Loading Report Definition")  
  
        Dim reportPath As String = _  
            "/AdventureWorks 2012 Sample Reports/Company Sales 2012"  
  
        'Retrieve the report defintion   
        'from the report server  
        Dim bytes As Byte() = _  
            m_reportService.GetItemDefinition(reportPath)  
  
        If Not (bytes Is Nothing) Then  
  
            Dim serializer As XmlSerializer = _  
                New XmlSerializer(GetType(Report))  
  
            'Load the report bytes into a memory stream  
            Using stream As MemoryStream = New MemoryStream(bytes)  
  
                'Deserialize the report stream to an   
                'instance of the Report class  
                m_report = CType(serializer.Deserialize(stream), _  
                                 Report)  
  
            End Using  
  
        End If  
  
    End Sub  
    ```  
  
## Next Lesson  
In the next lesson, you will write code to update the report definition that was loaded from the report server. See [Lesson 4: Update the Report Definition Programmatically](../a9retired/lesson-4-update-the-report-definition-programmatically.md).  
  
## See Also  
[Updating Reports Using Classes Generated from the RDL Schema &#40;SSRS Tutorial&#41;](../a9retired/updating-reports-using-classes-generated-from-the-rdl-schema-ssrs-tutorial.md)  
[Report Definition Language &#40;SSRS&#41;](../reporting-services/reports/report-definition-language-ssrs.md)  
  
  
  
