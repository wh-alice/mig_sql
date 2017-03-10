---
title: "Step 9: Testing the Lesson 1 Tutorial Package | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 9aee7acf-797b-46f2-830d-80ab64a9f0b6
caps.latest.revision: 28
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 1-9 - Testing the Lesson 1 Tutorial Package
In this lesson, you have done the following tasks:  
  
-   Created a new [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] project.  
  
-   Configured the connection managers that the package needs to connect to the source and destination data.  
  
-   Added a data flow that takes the data from a flat file source, performs the necessary Lookup transformations on the data, and configures the data for the destination.  
  
Your package is now complete! It is time to test your package.  
  
## Checking the Package Layout  
Before you test the package you should verify that the control and data flows in the Lesson 1 package contain the objects shown in the following diagrams.  
  
**Control Flow**  
  
![Control flow in package](../../integration-services/tutorials/media/task9lesson1control.gif "Control flow in package")  
  
**Data Flow**  
  
![Data flow in package](../../integration-services/tutorials/media/task9lesson1data.gif "Data flow in package")  
  
### To run the Lesson 1 tutorial package  
  
1.  On the **Debug** menu, click **Start Debugging**.  
  
    The package will run, resulting in 1097 rows successfully added into the **FactCurrency** fact table in **AdventureWorksDW2012**.  
  
2.  After the package has completed running, on the **Debug** menu, click **Stop Debugging**.  
  
## Next Lesson  
[Lesson 2: Adding Looping with SSIS](../../integration-services/tutorials/lesson-2-adding-looping-with-ssis.md)  
  
## See Also  
[Execution of Projects and Packages](https://msdn.microsoft.com/library/ms141708(v=sql.110).aspx) 
  
  
  
