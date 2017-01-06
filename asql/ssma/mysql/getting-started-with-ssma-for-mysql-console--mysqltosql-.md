---
title: "Getting Started with SSMA for MySQL Console (MySQLToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
helpviewer_keywords: 
  - "MySQL Console, launching console"
  - "MySQL Console, output conventions"
ms.assetid: 218d502c-059f-4d48-9aea-61e553d74303
caps.latest.revision: 23
ms.author: "lonnyb"
manager: "lonnyb"
---
# Getting Started with SSMA for MySQL Console (MySQLToSQL)
This section describes the procedure to launch and get started with the MySQL console application. Also listed, herein, are the conventions used in a typical SSMA Console output window.  
  
## Launching SSMA Console  
Use the following steps to start the SSMA console application:  
  
1.  Go to **Start** and point to **All Programs**.  
  
2.  Click the **SQL Server Migration Assistant for MySQL Command Prompt** shortcut.  
  
    It displays the SSMA Console usage menu and `(/? Help)`, to help you get started with the console application.  
  
## Procedure for Using the SSMA Console  
After the console is successfully launched on your Windows system, you could use the following steps to work on it:  
  
1.  Configure SSMA Console through the script files. For more information on this section, see [Creating Script Files &#40;MySQLToSQL&#41;](../../ssma/mysql/creating-script-files--mysqltosql-.md) .  
  
2.  [Creating Variable Value Files &#40;MySQLToSQL&#41;](../../ssma/mysql/creating-variable-value-files--mysqltosql-.md)  
  
3.  [Creating the Server Connection Files &#40;MySQLToSQL&#41;](../../ssma/mysql/creating-the-server-connection-files--mysqltosql-.md)  
  
4.  [Executing the SSMA Console &#40;MySQLToSQL&#41;](../../ssma/mysql/executing-the-ssma-console--mysqltosql-.md) based on your project needs  
  
Additional features:  
  
1.  [Securing Password](http://msdn.microsoft.com/en-us/4ffbc587-ea3f-49ad-bc42-a654f672325e) and export/ import it onto other Window machines  
  
2.  [Generate Reports](http://msdn.microsoft.com/en-us/1c0202e8-546d-4cb3-a37f-1d2e35d53839) to view the detailed xml output reports for assessment /conversion and data migration. Detailed error reports can also be generated for refresh and synchronization commands.  
  
## SSMA Console Output Conventions  
Upon executing the SSMA script commands and options, the console program displays the results and messages (information, error, etc.) to the user on the console or if required, redirects to an xml output file. Each type of message in the output is signified by a unique color. For example, the text message in white color denotes script file commands; the one in green color represents a prompt for user-input, and so on.  
  
![SSMAConsoleOutput_MySQL](../../ssma/mysql/media/ssmaconsoleoutput_mysql.jpg "SSMAConsoleOutput_MySQL")  
  
Color-interpretation of the console output in the following table:  
  
|Color|Description|  
|---------|---------------|  
|Red|Fatal error during execution|  
|Gray|Date and Time stamp, message to the user|  
|White|Script file commands, message type|  
|Yellow|Warning|  
|Green|Prompt for user-input|  
|Cyan|Start, Finish and Result of an operation|  
  
## See Also  
[Installing SSMA for MySQL](http://msdn.microsoft.com/en-us/e89b45bd-59c1-4d23-8bd7-3dafc1947448)  
  
