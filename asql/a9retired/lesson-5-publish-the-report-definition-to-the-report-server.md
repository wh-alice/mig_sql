---
title: "Lesson 5: Publish the Report Definition to the Report Server | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 57fab70f-4a72-4413-a0ad-d0525caca3f7
caps.latest.revision: 17
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Lesson 5: Publish the Report Definition to the Report Server
The last step for updating the report definition is to publish it back to the report server.  
  
### To publish the report to the report catalog  
  
1.  Replace the code for the **PublishReportDefinition()** method in your Program.cs file (Module1.vb for [!INCLUDE[vbprvb](../a9retired/includes/vbprvb-md.md)]) with the following code:  
  
    ```c#  
    private void PublishReportDefinition()  
    {  
        System.Console.WriteLine("Publishing Report Definition");  
  
        string reportPath =  
            "/AdventureWorks 2012 Sample Reports/Company Sales 2012";  
  
        XmlSerializer serializer =  
            new XmlSerializer(typeof(Report));  
  
        using (MemoryStream stream = new MemoryStream())  
        {  
            // Serialize the report into the MemoryStream  
            serializer.Serialize(stream, _report);  
            stream.Position = 0;  
  
            byte[] bytes = stream.ToArray();  
  
            // Update the report on the report server  
            Warning[] warnings =   
                _reportService.SetItemDefinition(reportPath, bytes, null);  
        }  
    }  
    ```  
  
    ```vb#  
    Private Sub PublishReportDefinition()  
  
        System.Console.WriteLine("Publishing Report Definition")  
  
        Dim reportPath As String = _  
            "/AdventureWorks 2012 Sample Reports/Company Sales 2012"  
        Dim serializer As XmlSerializer = _  
            New XmlSerializer(GetType(Report))  
  
        Using stream As MemoryStream = New MemoryStream  
  
            'Serialize the report into the MemoryStream  
            serializer.Serialize(stream, m_report)  
            stream.Position = 0  
  
            'Update the report on the report server  
            Dim bytes As Byte() = stream.ToArray  
            Dim warnings As Warning() = _  
                m_reportService.SetItemDefinition(reportPath, bytes, Nothing)  
  
        End Using  
  
    End Sub  
    ```  
  
## Next Lesson  
In the next lesson, you will compile and run the **SampleRDLSchema** application. See [Lesson 6: Run the RDL Schema Application &#40;VB - C&#35;&#41;](../a9retired/lesson-6-run-the-rdl-schema-application-vb-csharp.md).  
  
## See Also  
[Updating Reports Using Classes Generated from the RDL Schema &#40;SSRS Tutorial&#41;](../a9retired/updating-reports-using-classes-generated-from-the-rdl-schema-ssrs-tutorial.md)  
[Report Definition Language &#40;SSRS&#41;](../reporting-services/reports/report-definition-language-ssrs.md)  
  
  
  
