---
title: "Processing XML on the Client Side (SQLXML Managed Classes) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "processing XML on client side [SQLXML]"
  - "client-side XML formatting"
  - "Managed Classes [SQLXML], client-side XML formatting"
  - "SQLXML Managed Classes, client-side XML formatting"
  - "ClientSideXml property"
ms.assetid: 5e7ecf18-66fc-49ff-bc50-83635cd7ac0b
caps.latest.revision: 21
ms.author: "douglasl"
manager: "jhubbard"
---
# Processing XML on the Client Side (SQLXML Managed Classes)
  This example illustrates the use of the ClientSideXml property. The application executes a stored procedure on the server. The result of the stored procedure (a two-column rowset) is processed on the client side to produce an XML document.  
  
 The following GetContacts stored procedure returns **FirstName** and **LastName** of employees in the Person.Contact table in the AdventureWorks database.  
  
```  
USE AdventureWorks  
CREATE PROCEDURE GetContacts @LastName varchar(20)  
AS  
SELECT FirstName, LastName  
FROM   Person.Contact  
WHERE LastName = @LastName  
Go  
```  
  
 This C# application executes the stored procedure and specifies the FOR XML AUTO option in specifying the CommandText value. In the application, the ClientSideXml property of the SqlXmlCommand object is set to true. This allows you to execute preexisting stored procedures that return a rowset and apply an XML transformation to it on the client.  
  
> [!NOTE]  
>  In the code, you must provide the name of the instance of Microsoft [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in the connection string.  
  
```  
using System;  
using Microsoft.Data.SqlXml;  
using System.IO;  
class Test  
{  
    static string ConnString = "Provider=SQLOLEDB;Server=(local);database=AdventureWorks;Integrated Security=SSPI";  
      public static int testParams()  
      {  
         //Stream strm;  
         SqlXmlParameter p;  
         SqlXmlCommand cmd = new SqlXmlCommand(ConnString);  
         cmd.ClientSideXml = true;  
         cmd.CommandText = "EXEC GetContacts ? FOR XML NESTED";  
         p = cmd.CreateParameter();  
         p.Value = "Achong";  
         using (Stream strm = cmd.ExecuteStream())   
         {  
            using (StreamReader sr = new StreamReader(strm))  
                  {  
               Console.WriteLine(sr.ReadToEnd());  
            }  
         }  
         return 0;  
      }  
  
public static int Main(String[] args)  
{  
    testParams();  
    return 0;  
}  
}  
```  
  
 To test this example, you must have the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] .NET Framework installed on your computer.  
  
### To test the application  
  
1.  Create the stored procedure.  
  
2.  Save the C# code (DocSample.cs) that is provided in this example in a folder. Edit the code to specify appropriate login and password information.  
  
3.  Compile the code. To compile the code at the command prompt, use:  
  
    ```  
    csc /reference:Microsoft.Data.SqlXML.dll DocSample.cs  
    ```  
  
     This creates an executable (DocSample.exe).  
  
4.  At the command prompt, execute DocSample.exe.  
  
  