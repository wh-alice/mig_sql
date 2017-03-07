---
title: "Lesson 4: Update the Report Definition Programmatically | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 1f0a1d46-6d6d-4f67-b51e-06dbbbffacf9
caps.latest.revision: 20
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Lesson 4: Update the Report Definition Programmatically
Now that the report definition has been loaded from the report server and you have a reference to it using the report field, you need to update the report definition. For this example, you will update the **Description** property for the report.  
  
### To update the report definition  
  
1.  Replace the code for the UpdateReportDefinition() method in the Program.cs file (Module1.vb for [!INCLUDE[vbprvb](../a9retired/includes/vbprvb-md.md)]) with the following code:  
  
    ```c#  
    private void UpdateReportDefinition()  
    {  
        System.Console.WriteLine("Updating Report Definition");  
  
        // Create a list of the Items Choices for the Report. The   
        // ItemsChoiceType118 enum represents all the properties  
        // available in the report and the ItemsElementName   
        // represents the properties that exist in the current   
        // instance of the report.  
        List<ItemsChoiceType118> _reportItems =   
            new List<ItemsChoiceType118>(_report.ItemsElementName);  
  
        // Locate the index for the Description property  
        int index = _reportItems.IndexOf(  
            ItemsChoiceType118.Description);  
  
        // The Description item is of type StringLocIDType, so   
        // cast the item type first and then assign new value.  
        System.Console.WriteLine("- Old Description: " +   
            ((StringLocIDType)_report.Items[index]).Value );  
  
        // Update the Description for the Report  
        ((StringLocIDType)_report.Items[index]).Value =   
            "New Report Description";  
  
        System.Console.WriteLine("- New Description: " +   
            ((StringLocIDType)_report.Items[index]).Value );  
    }  
    ```  
  
    ```vb#  
    Private Sub UpdateReportDefinition()  
  
        System.Console.WriteLine("Updating Report Definition")  
  
        'Create a list of the Items Choices for the Report. The   
        'ItemsChoiceType118 enum represents all the properties  
        'available in the report and the ItemsElementName   
        'represents the properties that exist in the current   
        'instance of the report.  
        Dim reportItems As List(Of ItemsChoiceType118) = _  
            New List(Of ItemsChoiceType118)(m_report.ItemsElementName)  
  
        'Locate the index for the Description property  
        Dim index As Integer = _  
            reportItems.IndexOf(ItemsChoiceType118.Description)  
  
        'The Description item is of type StringLocIDType, so   
        'cast the item type first and then assign new value.  
        System.Console.WriteLine("- Old Description: " & _  
            DirectCast(m_report.Items(index), StringLocIDType).Value)  
  
        'Update the Description for the Report  
        DirectCast(m_report.Items(index), StringLocIDType).Value = _  
            "New Report Description"  
  
        System.Console.WriteLine("- New Description: " & _  
            DirectCast(m_report.Items(index), StringLocIDType).Value)  
  
    End Sub  
    ```  
  
## Next Lesson  
In the next lesson, you will save the updated report definition back to the report server. See [Lesson 5: Publish the Report Definition to the Report Server](../a9retired/lesson-5-publish-the-report-definition-to-the-report-server.md).  
  
## See Also  
[Updating Reports Using Classes Generated from the RDL Schema &#40;SSRS Tutorial&#41;](../a9retired/updating-reports-using-classes-generated-from-the-rdl-schema-ssrs-tutorial.md)  
  
  
  
