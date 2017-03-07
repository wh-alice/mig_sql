---
title: "Install Distributed Replay Using a Configuration File | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 3259232c-6963-4c9c-9d10-ae42aa262eef
caps.latest.revision: 14
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Install Distributed Replay Using a Configuration File
  [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup provides the ability to generate a configuration file based on user input and system defaults. If you specify that you want the Management tools installed, you can use the configuration file to deploy the three Distributed Replay components (administration tool, Distributed Replay controller, and the Distributed Replay client). It supports Installing, repairing, and uninstalling of the Distributed Replay components.  
  
 Setup supports the use of the configuration file only through the command-line. The processing order of the parameters while using the configuration file is outlined below:  
  
-   The configuration file overwrites the defaults in a package  
  
-   Command-line values overwrite the values in the configuration file  
  
 For more information about how to use a configuration file, see [Install SQL Server 2016 Using a Configuration File](../database-engine/install/windows/install-sql-server-2016-using-a-configuration-file.md).  
  
> [!IMPORTANT]  
>  After you install Distributed Replay you must create firewall rules on the controller and client computers, and grant each client computer permissions on the target server. For more information, see [Complete the Post-Installation Steps](../tools/distributed-replay/complete-the-post-installation-steps.md).  
  
### To generate a configuration file  
  
1.  Follow the Setup wizard through to the **Ready to Install** page. The path to the configuration file is specified in the **Ready to Install** page in the configuration file path section.  
  
2.  Cancel the setup without actually completing the installation, to generate the INI file.  
  
### To Install Distributed Replay Using the Configuration File  
  
-   Run the installation through the command prompt and supply the ConfigurationFile.ini using the ConfigurationFile parameter.  
  
 **Sample Syntax**  
  
 Following is an example on how to specify the configuration file at the command prompt:  
  
```  
Setup.exe /CTLRSVCPASSWORD="ctlrsvcpswd" /CLTSVCPASSWORD="cltsvcpswd" / ConfigurationFile=ConfigurationFile.INI\  
```  
  
> [!NOTE]  
>  You must specify both passwords in the command line because you cannot configure them in the configuration file.  
  
  