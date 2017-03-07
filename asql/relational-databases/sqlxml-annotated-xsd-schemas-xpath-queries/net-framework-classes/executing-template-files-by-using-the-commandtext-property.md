---
title: "Executing Template Files by Using the CommandText Property | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "Managed Classes [SQLXML], executing template files"
  - "SQLXML Managed Classes, executing template files"
  - "templates [SQLXML], SQLXML Managed Classes"
  - "executing template files [SQLXML]"
  - "CommandText property"
ms.assetid: f1b1278d-252d-4a06-836e-4ef77f338ef9
caps.latest.revision: 21
ms.author: "douglasl"
manager: "jhubbard"
---
# Executing Template Files by Using the CommandText Property
  This example illustrates how template files that consist of SQL or XPath queries can be specified by using the CommandTextproperty. Instead of specifying the SQL or XPath query as the value of CommandText, you can specify a file name as the value. In the following example, the CommandType property is specified as SqlXmlCommandType.TemplateFile.  
  
 The sample application executes this template:  
  
```  
<ROOT xmlns:sql="urn:schemas-microsoft-com:xml-sql">  
  <sql:query>  
    SELECT TOP 2 ContactID, FirstName, LastName   
    FROM   Person.Contact  
    FOR XML AUTO  
  </sql:query>  
</ROOT>  
```  
  
 This is the C# sample application. To test the application, save the template (TemplateFile.xml) and then execute the application.  
  
> [!NOTE]  
>  In the code, you must provide the name of the instance of Microsoft [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] in the connection string.  
  
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
         SqlXmlCommand cmd = new SqlXmlCommand(ConnString);  
         cmd.CommandType = SqlXmlCommandType.TemplateFile;  
         cmd.CommandText = "TemplateFile.xml";  
         using (Stream strm = cmd.ExecuteStream()){  
            using (StreamReader sr = new StreamReader(strm)){  
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
  
### To test the application  
  
1.  Make sure that you have the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] .NET Framework installed on your computer.  
  
2.  Save the XML template (TemplateFile.xml) that is provided in this example in a folder.  
  
3.  Save the C# code (DocSample.cs) that is provided in this example in the same folder in which the schema is stored. (If you store the files in a different folder, you will have to edit the code and specify the appropriate directory path for the mapping schema.)  
  
4.  Compile the code. To compile the code at the command prompt, use:  
  
    ```  
    csc /reference:Microsoft.Data.SqlXML.dll DocSample.cs  
    ```  
  
     This creates an executable (DocSample.exe).  
  
5.  At the command prompt, execute DocSample.exe.  
  
 If you pass a parameter to a template, the parameter name must begin with at sign (@); for example, p.Name="@ContactID", where p is a SqlXmlParameter object.  
  
 This is the updated template which takes one parameter.  
  
```  
<ROOT xmlns:sql="urn:schemas-microsoft-com:xml-sql">  
  <sql:header>  
     <sql:param name='ContactID'>1</sql:param>    
  </sql:header>  
  <sql:query>  
    SELECT ContactID, FirstName, LastName  
    FROM   Person.Contact  
    WHERE  ContactID=@ContactID  
    FOR XML AUTO  
  </sql:query>  
</ROOT>  
```  
  
 This is the updated code in which a parameter is passed in to execute the template.  
  
```  
public static int testParams()  
{  
  
   Stream strm;  
   SqlXmlParameter p;  
  
   SqlXmlCommand cmd = new SqlXmlCommand(ConnString);  
   cmd.CommandType = SqlXmlCommandType.TemplateFile;  
   cmd.CommandText = "TemplateFile.xml";  
   p = cmd.CreateParameter();  
   p.Name="@ContactID";  
   p.Value = "1";  
   strm = cmd.ExecuteStream();  
   StreamReader sw = new StreamReader(strm);  
   Console.WriteLine(sw.ReadToEnd());  
   return 0;        
}  
```  
  
  