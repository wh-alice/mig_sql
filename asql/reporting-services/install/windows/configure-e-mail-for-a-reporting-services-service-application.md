---
title: "Configure E-mail for a Reporting Services Service Application (SharePoint 2013 and SharePoint 2016) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 38fc34a6-aae7-4dde-9ad2-f1eee0c42a9f
caps.latest.revision: 13
ms.author: "asaxton"
manager: "erikre"
---
# Configure E-mail for a Reporting Services Service Application
  [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] data alerting sends alerts in e-mail messages. To send e-mail you may need to configure your [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] service application and you may need to modify the e-mail delivery extension for the service application. The e-mail settings are also required if you plan to use the e-mail delivery extension for the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] subscription feature.  
  
||  
|-|  
|[!INCLUDE[applies](../../../analysis-services/includes/applies-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] SharePoint mode &#124; SharePoint 2013 and SharePoint 2016.|  
  
### To configure e-mail for the shared service  
  
1.  In SharePoint Central Administration, click the **Application Management**.  
  
2.  In the **Service Applications** group, click **Manage service applications**.  
  
3.  In the **Name** list, click the name of your [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] service application.  
  
4.  Click **E-mail Settings** on the **Manage Reporting Services Application** page.  
  
5.  Select **Use SMTP server**.  
  
6.  In the **Outbound SMTP server** box, type the name of an SMTP server.  
  
7.  In the **From address** box, type an e-mail address.  
  
     This address is the sender of all alert e-mail messages.  
  
     The account of the user specified in **From address** must be a managed account that you specified when you configured the application pool for the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] service application. If you have permission, you can view a list of existing managed accounts on the Service Accounts page in SharePoint Central Administration.  
  
8.  [!INCLUDE[clickOK](../../../analysis-services/data-mining/includes/clickok-md.md)]  
  
### NTLM Authentication  
  
1.  If your email environment requires NTLM authentication and does not allow anonymous access, you need to modify the e-mail delivery extension configuration for your [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] service applications. For example, if you see the following message in the for the **Last Results** on the **Manage Subscriptions** page:subscriptions.  
  
    -   Failure sending mail: The SMTP server requires a secure connection or the client was not authenticated. The server response was: 5.7.1 Client was not authenticatedMail will not be resent.  
  
     Change the **SMTPAuthenticate** to use a value of “2”. This value cannot be changed from the user interface. The following PowerShell script example, updates the full configuration for the report server e-mail delivery extension for the service application named “SSRS_TESTAPPLICATION”. Note some of the nodes listed in the script can also be set from the user interface, for example the “From” address.  
  
    ```  
    $app=get-sprsserviceapplication |where {$_.name -like "SSRS_TESTAPPLICATION *"}  
    $emailCfg = Get-SPRSExtension -identity $app -ExtensionType "Delivery" -name "Report Server Email" | select -ExpandProperty ConfigurationXml   
    $emailXml = [xml]$emailCfg   
    $emailXml.SelectSingleNode("//SMTPServer").InnerText = “your email server name"  
    $emailXml.SelectSingleNode("//SendUsing").InnerText = "2"  
    $emailXml.SelectSingleNode("//SMTPAuthenticate").InnerText = "2"  
    $emailXml.SelectSingleNode("//From").InnerText = “your FROM email address”  
    Set-SPRSExtension -identity $app -ExtensionType "Delivery" -name "Report Server Email" -ExtensionConfiguration $emailXml.OuterXml  
    ```  
  
2.  If you need to verify the name of your service application, run the **Get-SPRSServiceApplication cmdlet**.  
  
    ```  
    get-sprsserviceapplication  
    ```  
  
3.  The following example will return the current values of the e-mail extension for the service application named “SSRS_TESTAPPLICATION”.  
  
    ```  
    $app=get-sprsserviceapplication |where {$_.name -like "SSRSTEST_APPLICATION*"}  
    Get-SPRSExtension -identity $app -ExtensionType "Delivery" -name "Report Server Email" | select -ExpandProperty ConfigurationXml  
    ```  
  
4.  The following example will create a new file named “emailconfig.txt” with the current values of the e-mail extension for the service application named “SSRS_TESTAPPLICATION”  
  
    ```  
    $app=get-sprsserviceapplication |where {$_.name -like "SSRS_TESTAPPLICATION*"}  
    Get-SPRSExtension -identity $app -ExtensionType "Delivery" -name "Report Server Email" | select -ExpandProperty ConfigurationXml | out-file c:\emailconfig.txt  
    ```  
  
  