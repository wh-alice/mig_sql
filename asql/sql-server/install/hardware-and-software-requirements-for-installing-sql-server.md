---
title: "Hardware and Software Requirements for Installing SQL Server 2016 | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-01-18"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Setup [SQL Server], software"
  - "software [SQL Server]"
  - "installing SQL Server, software"
  - "operating systems [SQL Server], SQL Server requirements"
  - "Setup [SQL Server], cross-language support"
  - "operating systems [SQL Server], cross-language support"
  - "network connections [SQL Server], requirements"
  - "disk space [SQL Server], SQL Server installations"
  - "WOW [SQL Server]"
  - "Setup [SQL Server], hardware"
  - "dependencies [SQL Server], SQL Server installations"
  - "cluster hardware requirements [SQL Server]"
  - "endpoints [SQL Server], SQL Server installations"
  - "Internet [SQL Server], SQL Server installations"
  - "hardware [SQL Server]"
  - "Windows on Windows [SQL Server]"
  - "installing SQL Server, hardware"
  - "Setup Configuration Checker"
  - "SCC [SQL Server]"
  - "operating systems [SQL Server]"
  - "space [SQL Server], SQL Server installations"
  - "system configuration checker"
  - "installing SQL Server, cross-language support"
  - "Internet [SQL Server]"
  - "space [SQL Server]"
  - "extended system support [SQL Server]"
  - "64-bit edition [SQL Server]"
  - "failover clustering [SQL Server]"
  - "failover clustering [SQL Server], hardware requirements"
  - "32-bit edition [SQL Server]"
  - "locales [SQL Server], SQL Server installations"
  - "cross-language support"
  - "disk space [SQL Server]"
  - "localized SQL Server versions"
ms.assetid: 09bcf20b-0a40-4131-907f-b61479d5e4d8
caps.latest.revision: 333
ms.author: "mikeray"
manager: "jhubbard"
---
# Hardware and Software Requirements for Installing SQL Server
  The topic lists the minimum hardware and software requirements to install and run [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].  
  
 **Try it out:**  
  
-   Download SQL Server from the [**Evaluation Center**.](https://www.microsoft.com/en-us/evalcenter/evaluate-sql-server-2016) 
  
-    Spin up a Virtual Machine with [**SQL Server 2016**](https://azure.microsoft.com/en-us/marketplace/partners/microsoft/sqlserver2016rtmenterprisewindowsserver2012r2/?wt.mc_id=sqL16_vm) already installed.  
  
 **The following considerations apply to all editions:**  
  
-   We recommend that you run [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] on computers with the NTFS or ReFS file formats. Installing [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] on a computer with FAT32 file system is supported but not recommended as it is less secure than the NTFS or ReFS file systems.  
  
-   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Setup will block installations on read-only, mapped, or compressed drives.  
  
-   Installation fails if you launch setup through Remote Desktop Connection with the media on a local resource in the RDC client. To install remotely the media must be on a network share or local to the physical or virtual machine. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] installation media may be either on a network share, a mapped drive, a local drive, or presented as an ISO to a virtual machine.  
  
-   [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] installation requires installing  .NET 4.6.1 as a pre-requisite. .NET 4.6.1 will be automatically installed by setup when [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] is selected.  
  
-   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Setup installs the following software components required by the product:  
  
    -   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client  
  
    -   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Setup support files  
  
-   For minimum version requirements to install [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] on [!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] or [!INCLUDE[win8](../../a9notintoc/includes/win8-md.md)], see [Installing SQL Server on Windows Server 2012 or Windows 8](http://support.microsoft.com/kb/2681562) (http://support.microsoft.com/kb/2681562).  
  
 This topic contains the following sections:  
  
-   [Hardware and Software Requirements](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#hwswr)  
  
-   [Processor, Memory, and Operating System Requirements](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#pmosr)  
  
-   [Cross-Language Support](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#CrossLanguageSupport)  
  
-   [Hard Disk Space Requirements](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#HardDiskSpace)  
  
-   [Storage Types for Data Files](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#StorageTypes)  
  
-   [Installing SQL Server on a Domain Controller](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#DC_support)  
  
##  <a name="hwswr"></a> Hardware and Software Requirements  
 The following requirements apply to all installations:  
  
|Component|Requirement|  
|---------------|-----------------|  
|.NET Framework|[!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] RC1 and later require [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] 4.6 for the Database Engine, Master Data Services, or  Replication. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] 2016 setup automatically installs [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)]. You can also manually install [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] from [Microsoft .NET Framework 4.6 (Web Installer) for Windows](http://support.microsoft.com/kb/3045560).<br/><br/> For more information, recommendations, and guidance about [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] 4.6 see [.NET Framework Deployment Guide for Developers](http://msdn.microsoft.com/library/ee942965\(v=vs.110\).aspx).<br/><br/>[!INCLUDE[winblue_client_2](../../a9notintoc/includes/winblue-client-2-md.md)], and [!INCLUDE[winblue_server_2](../../a9retired/includes/winblue-server-2-md.md)] require [KB2919355](http://support.microsoft.com/kb/2919355) before installing [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] 4.6.|  
|Network Software|Supported operating systems for [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] have built-in network software. Named and default instances of a stand-alone installation support the following network protocols: Shared memory, Named Pipes, TCP/IP and VIA.<br/><br/> Note: Shared memory and VIA are not supported on failover clusters.<br/><br/> Also note that the VIA protocol is deprecated. [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]<br/><br/> <br/><br/> For more information about Network Protocols and Network Libraries, see [Network Protocols and Network Libraries](../../sql-server/install/network-protocols-and-network-libraries.md).|  
|Hard Disk|[!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] requires a minimum of 6 GB of available hard-disk space.<br/><br/> Disk space requirements will vary with the [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] components you install. For more information, see [Hard Disk Space Requirements](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#HardDiskSpace) later in this topic. For information on supported storage types for data files, see [Storage Types for Data Files](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#StorageTypes).|  
|Drive|A DVD drive, as appropriate, is required for installation from disc.|  
|Monitor|[!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] requires Super-VGA (800x600) or higher resolution monitor.|  
|Internet|Internet functionality requires Internet access (fees may apply).|  
  
 Note: Running [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] on a virtual machine will be slower than running natively because of the overhead of virtualization.  
  
 There are additional hardware and software requirements for the PolyBase feature. For more information, see [Get started with PolyBase](../../relational-databases/polybase/get-started-with-polybase.md).  
  
##  <a name="pmosr"></a> Processor, Memory, and Operating System Requirements  
 The following memory and processor requirements apply to all editions of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]:  
  
|Component|Requirement|  
|---------------|-----------------|  
|Memory*|**Minimum:**<br/><br/> Express Editions: 512 MB<br/><br/> All other editions: 1 GB<br/><br/> **Recommended:**<br/><br/> Express Editions: 1 GB<br/><br/> All other editions: At least 4 GB and should be increased as database size increases to ensure optimal performance.|  
|Processor Speed|**Minimum:** x64 Processor: 1.4 GHz<br/><br/> **Recommended:** 2.0 GHz or faster|  
|Processor Type|x64 Processor: AMD Opteron, AMD Athlon 64, Intel Xeon with Intel EM64T support, Intel Pentium IV with EM64T support|  
  
> [!NOTE]  
>  Installation of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] is supported on x64 processors only. It is no longer supported on x86 processors.  
  
 *The minimum memory required for installing the [!INCLUDE[ssDQSServer](../../data-quality-services/includes/ssdqsserver-md.md)] component in [!INCLUDE[ssDQSnoversion](../../a9retired/includes/ssdqsnoversion-md.md)] (DQS) is 2 GB of RAM, which is different from the [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] minimum memory requirement. For information about installing DQS, see [Install Data Quality Services](../../data-quality-services/install/windows/install-data-quality-services.md).  
  
 **WOW64 Support:**  
  
 WOW64 (Windows 32-bit on Windows 64-bit) is a feature of 64-bit editions of Windows that enables 32-bit applications to run natively in 32-bit mode. Applications function in 32-bit mode, even though the underlying operating system is a 64-bit operating system. WOW64 is not supported for [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] installations. However, Management Tools are supported in WOW64.  
  
 **Operating System Support:**  
  
 The [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] editions are classified into the following:  
  
-   [Principal Editions of SQL Server 2016](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#TOP_Principal)  
  
-   [Breadth Editions of SQL Server 2016](../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md#TOP_Breadth)  
  
> [!NOTE]  
>  Exceptions to the operating system support noted in this section are the following Business Intelligence features, which can be installed on Windows Server 2008 R2 SP1 or later:  
  
-   [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] - SharePoint  
  
-   [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Add-in for SharePoint products  
  
### Features Supported on 32-bit Client Operating Systems  
 Windows client operating systems, for example Windows 10 and Windows 8.1 are available as 32-bit or 64-bit architectures.   All SQL Server features are supported on 64-bit client operating systems. On supported 32-bit client operating systems Microsoft supports the following features:  
  
-   Data Quality Client  
  
-   Client Tools Connectivity  
  
-   Integration Services  
  
-   Client Tools Backwards Compatibility  
  
-   Client Tools SDK  
  
-   Documentation Components  
  
-   Distributed Replay Components  
  
-   Distributed Replay Controller  
  
-   Distributed Replay Client  
  
-   SQL Client Connectivity SDK  
  
 [!INCLUDE[winserver2008r2](../../database-engine/configure/windows/includes/winserver2008r2-md.md)] and later server operating systems are not available as 32-bit architectures. All supported server operating systems are only available as 64-bit. All features are supported on 64-bit server operating systems.  
  
###  <a name="TOP_Principal"></a> Principal Editions of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  
 The following table shows the operating system requirements for the principal editions of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]:  
  
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Edition|Supported Operating System|  
|---------------------------------------|--------------------------------|  
|[!INCLUDE[ssEnterprise](../../analysis-services/data-mining/includes/ssenterprise-md.md)]|[!INCLUDE[winserver2016_datacenter_md](../../sql-server/install/includes/winserver2016-datacenter-md.md)]<br/><br/>[!INCLUDE[winserver2016_standard_md](../../sql-server/install/includes/winserver2016-standard-md.md)]<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Foundation<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Foundation|  
|[!INCLUDE[ssStandard](../../database-engine/database-mirroring/includes/ssstandard-md.md)]|[!INCLUDE[winserver2016_datacenter_md](../../sql-server/install/includes/winserver2016-datacenter-md.md)]<br/><br/>[!INCLUDE[winserver2016_standard_md](../../sql-server/install/includes/winserver2016-standard-md.md)]<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Foundation<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Foundation<br/><br/> Windows 10 Home<br/><br/> Windows 10 Professional<br/><br/> Windows 10 Enterprise<br/><br/>[!INCLUDE[winblue_client_2](../../a9notintoc/includes/winblue-client-2-md.md)]<br/><br/>[!INCLUDE[winblue_client_pro_2](../../sql-server/install/includes/winblue-client-pro-2-md.md)]<br/><br/>[!INCLUDE[winblue_client_ent_2](../../sql-server/install/includes/winblue-client-ent-2-md.md)]<br/><br/>[!INCLUDE[win8](../../a9notintoc/includes/win8-md.md)]<br/><br/>[!INCLUDE[win8_client_pro_2](../../sql-server/install/includes/win8-client-pro-2-md.md)]<br/><br/>[!INCLUDE[win8_client_ent_2](../../sql-server/install/includes/win8-client-ent-2-md.md)]|  
|[!INCLUDE[ssWeb](../../sql-server/install/includes/ssweb-md.md)]|[!INCLUDE[winserver2016_datacenter_md](../../sql-server/install/includes/winserver2016-datacenter-md.md)]<br/><br/>[!INCLUDE[winserver2016_standard_md](../../sql-server/install/includes/winserver2016-standard-md.md)]<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Foundation<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Foundation|  
  
###  <a name="TOP_Breadth"></a> Breadth Editions of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  
 The following table shows the operating system requirements for the breadth editions of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]:  
  
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Edition|Supported Operating System|  
|---------------------------------------|--------------------------------|  
|[!INCLUDE[ssDeveloper](../../sql-server/install/includes/ssdeveloper-md.md)]|[!INCLUDE[winserver2016_datacenter_md](../../sql-server/install/includes/winserver2016-datacenter-md.md)]<br/><br/>[!INCLUDE[winserver2016_standard_md](../../sql-server/install/includes/winserver2016-standard-md.md)]<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Foundation<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Foundation<br/><br/> Windows 10 Home<br/><br/> Windows 10 Professional<br/><br/> Windows 10 Enterprise<br/><br/>[!INCLUDE[winblue_client_2](../../a9notintoc/includes/winblue-client-2-md.md)]<br/><br/>[!INCLUDE[winblue_client_pro_2](../../sql-server/install/includes/winblue-client-pro-2-md.md)]<br/><br/>[!INCLUDE[winblue_client_ent_2](../../sql-server/install/includes/winblue-client-ent-2-md.md)]<br/><br/>[!INCLUDE[win8](../../a9notintoc/includes/win8-md.md)]<br/><br/>[!INCLUDE[win8_client_pro_2](../../sql-server/install/includes/win8-client-pro-2-md.md)]<br/><br/>[!INCLUDE[win8_client_ent_2](../../sql-server/install/includes/win8-client-ent-2-md.md)]|  
|[!INCLUDE[ssExpress](../../a9notintoc/includes/ssexpress-md.md)]|[!INCLUDE[winserver2016_datacenter_md](../../sql-server/install/includes/winserver2016-datacenter-md.md)]<br/><br/>[!INCLUDE[winserver2016_standard_md](../../sql-server/install/includes/winserver2016-standard-md.md)]<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] R2 Foundation<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Datacenter<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Standard<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Essentials<br/><br/>[!INCLUDE[win8srv](../../a9notintoc/includes/win8srv-md.md)] Foundation<br/><br/> Windows 10 Home<br/><br/> Windows 10 Professional<br/><br/> Windows 10 Enterprise<br/><br/>[!INCLUDE[winblue_client_2](../../a9notintoc/includes/winblue-client-2-md.md)]<br/><br/>[!INCLUDE[winblue_client_pro_2](../../sql-server/install/includes/winblue-client-pro-2-md.md)]<br/><br/>[!INCLUDE[winblue_client_ent_2](../../sql-server/install/includes/winblue-client-ent-2-md.md)]<br/><br/>[!INCLUDE[win8](../../a9notintoc/includes/win8-md.md)]<br/><br/>[!INCLUDE[win8_client_pro_2](../../sql-server/install/includes/win8-client-pro-2-md.md)]<br/><br/>[!INCLUDE[win8_client_ent_2](../../sql-server/install/includes/win8-client-ent-2-md.md)]|  
  
##  <a name="CrossLanguageSupport"></a> Cross-Language Support  
 For more information about cross-language support and considerations for installing [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] in localized languages, see [Local Language Versions in SQL Server](../../sql-server/install/local-language-versions-in-sql-server.md).  
  
##  <a name="HardDiskSpace"></a> Hard Disk Space Requirements  
 During installation of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)], Windows Installer creates temporary files on the system drive. Before you run Setup to install or upgrade [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], verify that you have at least 6.0 GB of available disk space on the system drive for these files. This requirement applies even if you install [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] components to a non-default drive.  
  
 Actual hard disk space requirements depend on your system configuration and the features that you decide to install. The following table provides disk space requirements for [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] components.  
  
|**Feature**|**Disk space requirement**|  
|-----------------|--------------------------------|  
|[!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] and data files, Replication, Full-Text Search, and Data Quality Services|1480 MB|  
|[!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] (as above) with R Services (In-Database)|2744 MB|  
|[!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] (as above) with PolyBase Query Service for External Data|4194 MB|  
|[!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] and data files|698 MB|  
|[!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)]|967 MB|  
|[!INCLUDE[rsql_platform](../../advanced-analytics/r-services/includes/rsql-platform-md.md)] (Standalone)|280 MB|  
|[!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] - SharePoint|1203 MB|  
|[!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Add-in for SharePoint Products|325 MB|  
|[!INCLUDE[ssDQSClient](../../a9retired/includes/ssdqsclient-md.md)]|121 MB|  
|Client Tools Connectivity|328 MB|  
|[!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)]|306 MB|  
|Client Components (other than [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Books Online components and Integration Services tools)|445 MB|  
|[!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)]|280 MB|  
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Books Online Components to view and manage help content*|27 MB|  
|All Features|8030 MB|  
  
 *The disk space requirement for downloaded Books Online content is 200 MB.  
  
##  <a name="StorageTypes"></a> Storage Types for Data Files  
 The supported storage types for data files are:  
  
-   Local Disk  
  
-   Shared Storage  

-   [Storage Spaces Direct \(S2D\)](https://technet.microsoft.com/windows-server-docs/storage/storage-spaces/storage-spaces-direct-overview)
  
-   SMB File Share  
  
    > [!NOTE]  
    >  SMB storage is not supported for [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] data files for either standalone or clustered installations. Use direct attached storage, a storage area network, or S2D instead.  
  
    > [!IMPORTANT]  
    >  SMB storage can be hosted by a Windows File Server or a third party SMB storage device. If Windows File Server is used, the Windows File Server version should be 2008 or later. For more information about installing [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] using SMB file share as a storage option, see [Install SQL Server with SMB Fileshare as a Storage Option](../../database-engine/install/windows/install-sql-server-with-smb-fileshare-as-a-storage-option.md).  
  
    > [!WARNING]  
    >  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] failover cluster installation supports Local Disk only for installing the tempdb files. Ensure that the path specified for the tempdb data and log files is valid on all the cluster nodes. During failover, if the tempdb directories are not available on the failover target node, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] resource will fail to come online.  
  
##  <a name="DC_support"></a> Installing [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] on a Domain Controller  
 For security reasons, we recommend that you do not install [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] on a domain controller. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Setup will not block installation on a computer that is a domain controller, but the following limitations apply:  
  
-   You cannot run [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services on a domain controller under a local service account.  
  
-   After [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is installed on a computer, you cannot change the computer from a domain member to a domain controller. You must uninstall [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] before you change the host computer to a domain controller.  
  
-   After [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is installed on a computer, you cannot change the computer from a domain controller to a domain member. You must uninstall [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] before you change the host computer to a domain member.  
  
-   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] failover cluster instances are not supported where cluster nodes are domain controllers.  
  
- [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is not supported on a read-only domain controller. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Setup cannot create security groups or provision [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] service accounts on a read-only domain controller. In this scenario, Setup will fail.  

- A [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] failover cluster instance is not not supported in an environment where only a read-only domain controller is accessible. 
  
## See Also  
 [Planning a SQL Server Installation](../../sql-server/install/planning-a-sql-server-installation.md)   
 [Security Considerations for a SQL Server Installation](../../sql-server/install/security-considerations-for-a-sql-server-installation.md)   
 [Product Specifications for SQL Server 2016](../../a9retired/product-specifications-for-sql-server-2016.md)  
  
  