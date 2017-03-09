---
title: "Configure the Report Server Service Account (SSRS Configuration Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-18"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f880c623-67c8-4167-b98b-ace17e800faa
caps.latest.revision: 14
ms.author: "asaxton"
manager: "erikre"
---
# Configure the Report Server Service Account (SSRS Configuration Manager)
  [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] is implemented as a single service that contains a Report Server Web service, [!INCLUDE[ssRSWebPortal-Non-Markdown](../../../database-engine/availability-groups/windows/includes/ssrswebportal-non-markdown-md.md)], and a background processing application that is used for scheduled report processing and subscription delivery. This topic explains how the service account is initially configured and how to modify the account or password using the Reporting Services Configuration tool.  
  
## Initial Configuration  
 The Report Server service account is defined during Setup. You can run the service under a domain user account, or a built-in account such as **Virtual Service Account**. There is no default account; whatever account you specify in the **Service Accounts** page of the Installation Wizard becomes the initial account of the Report Server service.  
  
> [!IMPORTANT]  
>  Although the Report Server Web service and [!INCLUDE[ssRSWebPortal-Non-Markdown](../../../database-engine/availability-groups/windows/includes/ssrswebportal-non-markdown-md.md)] are separate [!INCLUDE[vstecasp](../../../database-engine/configure/windows/includes/vstecasp-md.md)] applications, they run under a single service architecture within the same Report Server process identity.  
  
> [!NOTE]  
>  Built-in Windows service accounts (Local Service or Network Service) are not supported as report server service accounts on a computer that is a domain controller.  
  
## Changing the Service Account  
 To view and reconfigure service account information, always use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager. Service identity information is stored internally in multiple locations. Using the tool ensures that all references are updated accordingly whenever you change the account or password. The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager performs the following additional steps to ensure the report server remains available:  
  
-   Automatically adds the new account to the report server group created on the local computer. This group is specified in the access control lists (ACLs) that secure [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] files.  
  
-   Automatically updates the login permissions on the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] instance used to host the report server database. The new account will be added to the **RSExecRole**.  
  
     The database login for the old account will not be removed automatically. Be sure to remove accounts that are no longer in use. For more information, see [Administer a Report Server Database &#40;SSRS Native Mode&#41;](../../../reporting-services/report-server/administer-a-report-server-database-ssrs-native-mode.md) in SQL Server Books Online.  
  
     Granting database permissions to a new service account only occurs if you configured the report server database connection to use the service account in the first place. If you configured the report server database connection to use a domain user account or a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database login, the connection information is not affected by the service account update.  
  
-   Automatically updates the encryption key to include the profile information of the new account.  
  
    > [!NOTE]  
    >  If the report server is part of the scale-out deployment, only the report server that you are updating is affected. The encryption keys for other report servers in the deployment are unaffected by the service account change.  
      
## To configure the Report Server service account  
  
1.  Start the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration manager and connect to the report server.  
  
2.  On the Service Account page, select the option that describes the type of account you want to use.  
  
3.  If you selected a Windows user account, specify the new account and password. The account cannot be more than 20 characters.  
  
     If the report server is deployed in a network that supports Kerberos authentication, you must register the report server Service Principal Name (SPN) with the domain user account you just specified. For more information, see [Register a Service Principal Name &#40;SPN&#41; for a Report Server](../../../reporting-services/report-server/register-a-service-principal-name-spn-for-a-report-server.md).  
  
4.  Click **Apply**.  
  
5.  When prompted to back up the symmetric key, type a file name and location for the symmetric key backup, type a password to lock and unlock the file, and then click **OK**.  
  
6.  If the report server uses the service account to connect to the report server database, the connection information will be updated to use the new account or password. Updating the connection information requires that you connect to the database. If the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] **Database Connection** dialog box appears, enter credentials that have permission to connect to the database, and then click **OK**.  
  
7.  When prompted to restore the symmetric key, type the password you specified in step 5, and then click **OK**.  
  
8.  Review the status messages in the Results pane to verify all tasks completed successfully.  
  
## Choosing an Account  
 For best results, specify an account that has network connection permissions, with access to network domain controllers and corporate SMTP servers or gateways. The following table summarizes the accounts and provides recommendations for using them.  
  
|Account|Explanation|  
|-------------|-----------------|  
|Domain user accounts|If you have a Windows domain user account that has the minimum permissions required for report server operations, you should use it.<br /><br /> A domain user account is recommended because it isolates the Report Server service from other applications. Running multiple applications under a shared account, such as Network Service, increases the risk of a malicious user taking control of the report server because a security breach for any one application can easily extend to all applications that run under the same account.<br /><br /> Note that if you use a domain user account, you will have to change the password periodically if your organization enforces a password expiration policy. You might also need to register the service with the user account. For more information, see [Register a Service Principal Name &#40;SPN&#41; for a Report Server](../../../reporting-services/report-server/register-a-service-principal-name-spn-for-a-report-server.md).<br /><br /> Avoid using a local Windows user account. Local accounts typically do not have sufficient permission to access resources on other computers. For more information about how using a local account limits report server functionality, see [Considerations for Using Local Accounts](#localaccounts) in this topic.|  
|**Virtual Service Account**|**Virtual Service Account** represents the windows service. It is a built-in least-privilege account that has network logon permissions. This account is recommended if you do not have a domain user account available or if you want to avoid any service disruptions that might occur as a result of password expiration policies.|  
|**Network Service**|**Network Service** is a built-in least-privilege account that has network logon permissions. <br /><br /> If you select **Network Service**, try to minimize the number of other services that run under the same account. A security breach for any one application will compromise the security of all other applications that run under the same account.|  
|**Local Service**|**Local Service** is a built-in account that is like an authenticated local Windows user account. Services that run as the **Local Service** account access network resources as a null session with no credentials. This account is not appropriate for intranet deployment scenarios where the report server must connect to a remote report server database or a network domain controller to authenticate a user prior to opening a report or processing a subscription.|  
|**Local System**|**Local System** is a highly privileged account that is not required for running a report server. Avoid this account for report server installations. Choose a domain account or **Network Service** instead.|  
  
##  <a name="localaccounts"></a> Considerations for Using Local Accounts  
 The primary consideration for using local accounts is whether the report server requires access to remote database servers, mail servers, and domain controllers. If you configure the report server to run as a local Windows user account, Local Service, or Local System, you introduce considerations that must be factored into how you set other configuration settings, and on subscription creation and delivery:  
  
-   Running the service under a local account will limit your options later if you configure a connection to a remote report server database. Specifically, if you are using a remote report server database, you will have to configure the connection to use a domain user account or [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database user that has permission to log on to the remote [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance.  
  
-   Running the service under a local account will introduce new requirements on subscription creation. The report server stores information about the user who creates the subscription. If the user creates the subscription while logged on under a domain account, the Report Server service will try to connect to a domain controller to authenticate the user when the subscription is processed. If the service runs under a local account, the authentication request will fail when the report server tries to send the request to a remote domain controller. To work around this limitation, you can use a custom forms-based authentication extension or have all users connect to a report server under a local user account.  
  
-   Running the service under a local account will introduce new requirements for subscription delivery. Some delivery extensions have user account information in the subscription definition. If you are sending reports to e-mail addresses that are based on domain user accounts and you run the Report Server service under a local account, it cannot access a remote domain controller to resolve the target e-mail account.  
  
-   Built-in Windows service accounts (Local Service or Network Service) are not supported as report server service accounts on a computer that is a domain controller.  
  
The following guidelines and links in this section can help you decide on an approach that is best for your deployment.  
  
-   [Configure Windows Service Accounts and Permissions](../../../database-engine/configure/windows/configure-windows-service-accounts-and-permissions.md) in SQL Server Books Online.  
  
-   [The Services and Service Accounts Security Planning Guide](http://go.microsoft.com/fwlink/?LinkId=69155) on MSDN.  
  
## Updating an Expired Password  
 If the Report Server service runs under a domain account and the password expires before you can update it in the Reporting Services Configuration Manager, the service will not start until you specify a new password.  
  
 If the service account password for the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] expires, the **rsReportServerDatabaseUnavailable** error occurs when you try to connect to the report server. Resetting the password resolves this error.  
  
## Troubleshooting Service Identity Update Errors  
 Changing the service identity initiates a series of events that include restarting the service, updating the password-protected encryption key, updating URL reservations, and updating the report server database connection information if you are using the service account to connect to the report server database. You can monitor the status of these events by viewing the notifications in the Results panel at the bottom of the page. If errors occur during this process, you can try to resolve them using the following techniques:  
  
-   If the symmetric key cannot be restored, you can try to restore it manually by using **Restore** in the Encryption Keys page. If that does not work, consider deleting the encrypted content. You will have to re-create data source connection information and subscriptions, but the rest of your content will still be available. For more information, see [Back Up and Restore Reporting Services Encryption Keys](../../../reporting-services/install/windows/ssrs-encryption-keys-back-up-and-restore-encryption-keys.md).  
  
-   If the service will not start, restart it manually by using the Services console application in Administrator Tools.  
  
-   URL reservation errors can occur when you update the service account. Each URL reservation includes a security descriptor that includes a Discretionary Access Control List (DACL) that grants permission to the service account to accept requests on the URL. When you update the account, the URL must be recreated to update the DACL with the new account information. If the URL reservation cannot be recreated, and you know the account to be valid, try to restart the computer. If the error persists, try to use a different account.  
  
## See Also  
 [Configure Report Server URLs  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-report-server-urls-ssrs-configuration-manager.md)   
 [Reporting Services Configuration Manager &#40;Native Mode&#41;](../../../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md)