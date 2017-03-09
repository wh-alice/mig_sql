---
title: "Uninstall Report Builder | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 009538c6-4941-4393-b14b-9144cffdbdaf
caps.latest.revision: 10
ms.author: "maggies"
manager: "erikre"
---
# Uninstall Report Builder
  You can uninstall the stand-alone version of Report Builder from the control panel or the command line.  
  
 Uninstalling Report Builder from the command line uses syntax that is identical to the syntax you use to install Report Builder, except you use the /x option instead of the /i option. Command lines for uninstalling can also include the /quiet option and other standard options. If the Report Builder Windows Installer Package (ReportBuilder3_x86.msi) has been removed, you cannot use the command line easily to uninstall Report Builder. To learn more about how you might be able to remove Report Builder by using its GUID, see the documentation for the msiexec program in [Command-Line Options](https://msdn.microsoft.com/library/windows/desktop/aa367988.aspx).  
  
 If folders used by Report Builder include custom files, the folders and the files are preserved when Report Builder is removed. Only the Report Builder files are removed.  
  
### To uninstall Report Builder from the control panel  
  
1.  On the **Start** menu, click **Control Panel**.  
  
2.  In the Control Panel, click **Programs and Features**.  
  
3.  Locate [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Report Builder in the **Name** list and click it.  
  
4.  Click **Uninstall**.  
  
5.  If prompted to confirm the uninstall of Report Builder, click **Yes**.  
  
### To uninstall Report Builder from the command line  
  
1.  On the **Start** menu, click **Run**.  
  
2.  In the **Open** text box, type **cmd.**  
  
3.  In the command prompt window, navigate to the folder with ReportBuilder3_x86.msi.  
  
4.  Type a basic command line such as the following:  
  
 `msiexec /x ReportBuilder3_x86.msi /quiet /l*v install.log`  
  
 If you can to include logging, use a command line such as the following:  
  
 `msiexec /x ReportBuilder3_x86.msi /quiet /l*v c:\junk\install.log`  
  
1.  Press **Enter**.  
  
## See Also  
 [Install Report Builder](../../../reporting-services/install/windows/install-report-builder.md)  
  
  