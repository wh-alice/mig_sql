---
title: "Customer Experience Improvement Program for SQL Server Data Tools | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-21"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssdt"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: baf3a205-a6bb-4564-8b64-3a0475bb9273
caps.latest.revision: 11
ms.author: "sstein"
manager: "jhubbard"
---
# Customer Experience Improvement Program for SQL Server Data Tools
  Learn how the Customer Experience Improvement Program (CEIP) helps Microsoft identify ways to make our software better.  You can configure tools to opt in or out at any time.  
  
> [!NOTE]  
>  For an explanation of the user data collection and use practices for Microsoft SQL Server 2016 releases and any other products and services, please refer to this [privacy statement from Microsoft](https://www.microsoft.com/privacystatement/en-us/SQLServer/Default.aspx).  
  
## Opting in and out of CEIP for SQL Server Data Tools  
 The Customer Experience Improvement Program is a program designed to help Microsoft improve its products over time. This program collects information about computer hardware and how people use our product, without interrupting the users in their tasks at the computer. The information that is collected helps Microsoft identify which features to improve. In this document we will cover how to opt-in or out of CEIP for SQL Server Data Tools (SSDT) for both Visual Studio 2015 and Visual Studio 2013.  
  
### Choice and Control over  CEIP and SQL Server Data Tools for Visual Studio 2015  
 SSDT for Visual Studio 2015 is the data modeling tool that ships with SQL Server 2016. It uses the CEIP options  that are built into Visual Studio 2015. You can learn more about how to submit feedback through  CEIP in Visual Studio 2015 from this [help document from Visual Studio](http://go.microsoft.com/fwlink/?LinkId=517102).  
  
 For preview versions of SQL Server 2016, CEIP is turned on by default. You can turn it off, or back on again, by following the instructions below.  
  
 **In Visual Studio (applies to full language installations of Visual Studio 2015)**  
  
 If you run SSDT Setup on a computer that already has Visual Studio, only the SQL Server and Business Intelligence project templates are added. For this scenario, customer feedback options that Visual Studio provides can be used to opt in or out of CEIP.  
  
1.  Start Visual Studio.  
  
2.  From the Help menu, select **Send Feedback** > **Settings**.  
  
3.  To turn CEIP off, click **No, I would not like to participate**, and then click **OK**.  
  
     To turn CEIP on, click **Yes, I am willing to participate**, and then click **OK**.  
  

  
 **Use a registry-based policy or Group Policy**  
  
 If you run SSDT Setup on a computer that does not have Visual Studio 2015, only the Visual Studio Shell is installed. The shell doesn't provide customer feedback options. In this case, a registry update is the only option for configuring CEIP  
  
 Enterprise customers may construct Group Policy to opt in or out by setting a registry-based policy for SQL Server 2016.  
  
 The relevant registry key and settings are as follows:  
  
 Key = HKEY_CURRENT_USER\Software\Microsoft\VSCommon\14.0\SQM  
  
 RegEntry name = OptIn  
  
 Entry type DWORD:  
  
-   0 is opt out  
  
-   1 is opt in  
  
> [!CAUTION]  
>  Incorrectly editing the registry may severely damage your system. Before making changes to the registry, you should back up any valued data on the computer. You can also use the Last Known Good Configuration startup option if you encounter problems after manual changes have been applied.  
  
 For more information about the information collected, processed, or transmitted by CEIP, see the [Privacy Statement for the Microsoft Customer Experience Improvement Program](http://go.microsoft.com/fwlink/?LinkId=52143).  
  
### Choice and Control for CEIP and SQL Server Data Tools - BI (SSDT-BI)  
 If you are using SSDT-BI, you will be given an opportunity to participate in CEIP during installation. Later, CEIP configuration changes for SSDT-BI can be made through client tools or by editing registry settings.  
  
 **In SSDT and SSDT-BI for Visual studio 2013**  
  
1.  Start the tool and open a new or existing project for either Analysis Services or Integration Services.  
  
2.  From the Help menu, select **Microsoft SQL Server Customer Feedback Options**.  
  
3.  To turn CEIP off, click **No, I don't wish to participate**.  
  
     To turn CEIP on, click **Yes, I am willing to participate**.  
  
4.  Click **OK**.  
  
 **Use a registry-based policy or Group Policy**  
  
 Enterprise customers may construct Group Policy to opt in or out by setting a registry-based policy for SQL Server 2014.  
  
 The relevant registry key and settings are as follows:  
  
 Key = HKEY_CURRENT_USER\Software\Microsoft\Microsoft SQL Server\120  
  
 RegEntry name = CustomerFeedback  
  
 Entry type DWORD:  
  
-   0 is opt out  
  
-   1 is opt in  
  
  