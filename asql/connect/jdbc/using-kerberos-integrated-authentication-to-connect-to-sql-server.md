---
title: "Using Kerberos Integrated Authentication to Connect to SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 687802dc-042a-4363-89aa-741685d165b3
caps.latest.revision: 30
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# Using Kerberos Integrated Authentication to Connect to SQL Server
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  Beginning in Microsoft JDBC Driver 4.0 for SQL Server, an application can use the **authenticationScheme** connection property to indicate that it wants to connect to a database using type 4 Kerberos integrated authentication. See [Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md) for more information on connection properties. For more information on Kerberos, see [Kerberos Technical Supplement for Windows](http://go.microsoft.com/fwlink/?LinkId=101449) and [Microsoft Kerberos](http://go.microsoft.com/fwlink/?LinkID=100758).  
  
 When using integrated authentication with the Java **Krb5LoginModule**, you can configure the module using [Class Krb5LoginModule](https://docs.oracle.com/javase/8/docs/jre/api/security/jaas/spec/com/sun/security/auth/module/Krb5LoginModule.html).  
  
 The Microsoft JDBC Driver for SQL Server sets the following properties for IBM Java VMs:  
  
-   **useDefaultCcache = true**  
  
-   **moduleBanner = false**  
  
 The Microsoft JDBC Driver for SQL Server sets the following properties for all other Java VMs:  
  
-   **useTicketCache = true**  
  
-   **doNotPrompt = true**  
  
## Remarks  
 Prior to Microsoft JDBC Driver 4.0 for SQL Server, applications could specify integrated authentication (using Kerberos or NTLM, depending on which is available) by using the **integratedSecurity** connection property and by referencing **sqljdbc_auth.dll**, as described in [Building the Connection URL](../../connect/jdbc/building-the-connection-url.md).  
  
 Beginning in Microsoft JDBC Driver 4.0 for SQL Server, an application can use the **authenticationScheme** connection property to indicate that it wants to connect to a database using Kerberos integrated authentication using the pure Java Kerberos implementation:  
  
-   If you want integrated authentication using **Krb5LoginModule**, you must still specify the **integratedSecurity=true** connection property. You would then also specify the **authenticationScheme=JavaKerberos** connection property.  
  
-   To continue using integrated authentication with **sqljdbc_auth.dll**, just specify **integratedSecurity=true** connection property (and optionally **authenticationScheme=NativeAuthentication**).  
  
-   If you specify **authenticationScheme=JavaKerberos** but do not also specify **integratedSecurity=true**, the driver will ignore the **authenticationScheme** connection property and it will expect to find user name and password credentials in the connection string.  
  
 When using a datasource to create connections, you can programmatically set the authentication scheme using setAuthenticationScheme and (optionally) set the SPN for Kerberos connections using **setServerSpn**.  
  
 A new logger has been added to support Kerberos authentication: com.microsoft.sqlserver.jdbc.internals.KerbAuthentication. For more information, see [Tracing Driver Operation](../../connect/jdbc/tracing-driver-operation.md).  
  
 The following guidelines will help you to configure Kerberos:  
  
1.  Set **AllowTgtSessionKey** to 1 in the registry for Windows. For more information, see [Kerberos protocol registry entries and KDC configuration keys in Windows Server 2003](http://support.microsoft.com/kb/837361).  
  
2.  Make sure that the Kerberos configuration (krb5.conf in UNIX environments), points to the correct realm and KDC for your environment.  
  
3.  Initialize the TGT cache by using kinit or logging into the domain.  
  
4.  When an application that uses **authenticationScheme=JavaKerberos** runs on the Windows Vista or Windows 7 operating systems, you should use a standard user account. However if you run the application under an administrator’s account, the application must run with administrator privileges.  
  
> [!NOTE]  
>  The serverSpn connection attribute is only supported by Microsoft JDBC Drivers 4.2 and higher.  
  
## Service Principal Names  
 A service principal name (SPN) is the name by which a client uniquely identifies an instance of a service.  
  
 You can specify the SPN using the **serverSpn** connection property, or simply let the driver build it for you (the default).  This property is in the form of: “MSSQLSvc/fqdn:port@REALM” where fqdn is the fully-qualified domain name, port is the port number, and REALM is the Kerberos realm of the SQL Server in upper-case letters.  The realm portion of this property is optional if your Kerberos configuration’s default realm is the same realm as that of the Server and is not included by default.  If you wish to support a cross-realm authentication scenario where the default realm in the Kerberos configuration is different than the realm of the Server, then you must set the SPN with the serverSpn property.  
  
 For example, your SPN might look like: “MSSQLSvc/some-server.zzz.corp.contoso.com:1433@ZZZZ.CORP.CONTOSO.COM”  
  
 For more information about service principal names (SPNs), see:  
  
-   [How to use Kerberos authentication in SQL Server](http://support.microsoft.com/kb/319723)  
  
-   [Using Kerberos with SQL Server](http://go.microsoft.com/fwlink/?LinkId=207814)  
  
## Creating a Login Module Configuration File  
 You can optionally specify a Kerberos configuration file. If a configuration file is not specified, the following settings are in effect:  
  
 Sun JVM  
 com.sun.security.auth.module.Krb5LoginModule required useTicketCache=true doNotPrompt=true;  
  
 IBM JVM  
 com.ibm.security.auth.module.Krb5LoginModule required useDefaultCcache = true moduleBanner = false;  
  
 If you decide to create a login module configuration file, the file must follow this format:  
  
```  
<name> {  
    <LoginModule> <flag> <LoginModule options>;  
    <optional_additional_LoginModules, flags_and_options>;  
};  
```  
  
 A login configuration file consists of one or more entries, each specifying which underlying authentication technology should be used for a particular application or applications. For example,  
  
```  
SQLJDBCDriver {  
   com.sun.security.auth.module.Krb5LoginModule required useTicketCache=true doNotPrompt=true;  
};  
```  
  
 So, each login module configuration file entry consists of a name followed by one or more LoginModule-specific entries, where each LoginModule-specific entry is terminated by a semicolon and the entire group of LoginModule-specific entries is enclosed in braces. Each configuration file entry is terminated by a semicolon.  
  
 In addition to allowing the driver to acquire Kerberos credentials using the settings specified in the login module configuration file, the driver can use existing credentials. This can be useful when your application needs to create connections using more than one user’s credentials.  
  
 The driver will attempt to use existing credentials if they are available, before attempting to login using the specified login module. Thus, when using the Subject.doAs method for executing code under a specific context, a connection will be created with the credentials passed to the Subject.doAs call.  
  
 For more information, see [JAAS Login Configuration File](https://docs.oracle.com/javase/8/docs/technotes/guides/security/jgss/tutorials/LoginConfigFile.html) and [Class Krb5LoginModule](https://docs.oracle.com/javase/8/docs/jre/api/security/jaas/spec/com/sun/security/auth/module/Krb5LoginModule.html).  
  
## Creating a Kerberos Configuration File  
 For more information about Kerberos configuration files, see [Kerberos Requirements](https://docs.oracle.com/javase/8/docs/technotes/guides/security/jgss/tutorials/KerberosReq.html).  
  
 This is a sample domain configuration file, where YYYY and ZZZZ are domain names at your site.  
  
```  
[libdefaults]  
default_realm = YYYY.CORP.CONTOSO.COM  
dns_lookup_realm = false  
dns_lookup_kdc = true  
ticket_lifetime = 24h  
forwardable = yes  
  
[domain_realm]  
.yyyy.corp.contoso.com = YYYY.CORP.CONTOSO.COM  
.zzzz.corp.contoso.com = ZZZZ.CORP.CONTOSO.COM  
  
[realms]  
        YYYY.CORP.CONTOSO.COM = {  
  kdc = krbtgt/YYYY.CORP. CONTOSO.COM @ YYYY.CORP. CONTOSO.COM  
  default_domain = YYYY.CORP. CONTOSO.COM  
}  
  
        ZZZZ.CORP. CONTOSO.COM = {  
  kdc = krbtgt/ZZZZ.CORP. CONTOSO.COM @ ZZZZ.CORP. CONTOSO.COM  
  default_domain = ZZZZ.CORP. CONTOSO.COM  
}  
  
```  
  
## Enabling the Domain Configuration File and the Login Module Configuration File  
 You can enable a domain configuration file with -Djava.security.krb5.conf. You can enable a login module configuration file with **-Djava.security.auth.login.config**.  
  
 For example, when you start your application, you could use this command line:  
  
```  
Java.exe -Djava.security.auth.login.config=SQLJDBCDriver.conf -Djava.security.krb5.conf=krb5.ini <APPLICATION_NAME>  
  
```  
  
## Verifying that SQL Server Can be Accessed via Kerberos  
 Run the following query in SQL Server Management Studio:  
  
 **select auth_scheme from sys.dm_exec_connections where session_id=@@spid**  
  
 Make sure that you have the necessary permission to run this query.  
  
## See Also  
 [Connecting to SQL Server with the JDBC Driver](../../connect/jdbc/connecting-to-sql-server-with-the-jdbc-driver.md)  
  
  