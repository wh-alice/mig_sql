---
title: "Step 3: Modifying the Directory Property Configuration Value | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: ba2a091f-361c-4331-afe2-53b465164c36
caps.latest.revision: 29
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 5-3 - Modifying the Directory Property Configuration Value
In this task, you will modify the configuration setting, stored in the SSISTutorial.dtsConfig file, for the Value property of the package-level variable `User::varFolderName`. The variable updates the Directory property of the Foreach Loop container. The modified value will point to the **New Sample Data** folder that you created in the previous task. After you modify the configuration setting and run the package, the Directory property will be updated by the variable, using the value populated from the configuration file instead of the directory value originally configured in the package.  
  
### To modify the configuration setting of the Directory property  
  
1.  In Notepad or any other text editor, locate and open the SSISTutorial.dtsConfig configuration file that you created by using the Package Configuration Wizard in the previous task.  
  
2.  Change the value of the **ConfiguredValue** element to match the path of the **New Sample Data** folder that you created in the previous task. Do not surround the path in quotes. If the **New Sample Data** folder is at the root level of your drive (for example, C:\\), the updated XML should be similar to the following sample:  
  
    `<?xml version="1.0"?><DTSConfiguration><DTSConfigurationHeading><DTSConfigurationFileInfo GeneratedBy="DOMAIN\UserName" GeneratedFromPackageName="Lesson 5" GeneratedFromPackageID="{F4475E73-59E3-478F-8EB2-B10AFA61D3FA}" GeneratedDate="6/10/2012 8:16:50 AM"/></DTSConfigurationHeading><Configuration ConfiguredType="Property" Path="\Package.Variables[User::varFolderName].Properties[Value]" ValueType="String"><ConfiguredValue></ConfiguredValue></Configuration></DTSConfiguration>`  
  
    The heading information, **GeneratedBy**, **GeneratedFromPackageID**, and **GeneratedDate** will be different in your file, of course. The element to note is the **Configuration** element. The **Value** property of the variable, `User::varFolderName`, now contains C:\New Sample Data.  
  
3.  Save the change, and then close the text editor.  
  
## Next Task in Lesson  
[Step 4: Testing the Lesson 5 Tutorial Package](../Topic/Step%204:%20Testing%20the%20Lesson%205%20Tutorial%20Package.md)  
  
  
  
