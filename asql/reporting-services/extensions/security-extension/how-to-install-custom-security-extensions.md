---
title: "How to install custom security extensions | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: bfa0a35b-ccfb-4279-bae6-106c227c5f16
caps.latest.revision: 3
ms.author: "asaxton"
manager: "jhubbard"
---
# How to install custom security extensions
Reporting Services 2016 introduced a new web portal in order to host new Odata APIs and also host new report workloads such as mobile reports and KPIS. This new portal relies on newer technologies and is isolated from the familiar ReportingServicesService by running in a separate process. This process is not an ASP.NET hosted application and as such breaks assumptions from existing custom security extensions. Moreover, the current interfaces for custom security extensions don't allow for any external context to be passed-in, leaving implementers with the only choice to inspect well-known global ASP.NET Objects, this required some changes to the interface.

## What Changed?

A new interface was introduced that can be implemented which provides an IRSRequestContext providing the more common properties used by extensions to make decisions related to authentication.
	
In previous versions, Report Manager was the front-end and could be configured with its own custom login page. In Reporting Services 2016, only one page hosted by reportserver is supported and should authenticate to both applications.

## Implementation
In previous versions, extensions could rely on a common assumption that ASP.NET objects would be readily available. Since the new portal does not run in ASP.NET, the extension might hit issues with objects being NULL.
	
The most generic example is accessing HttpContext.Current to read request information such as headers and cookies. In order to allow extensions to make the same decisions we introduced a new method in the extension that provides request information and is called when authenticating from the portal. 
	
Extensions have to implement the <xref:Microsoft.ReportingServices.Interfaces.IAuthenticationExtension2> interface in order to leverage this. The extensions will need to implement both versions of <xref:Microsoft.ReportingServices.Interfaces.IAuthenticationExtension.GetUserInfo%2A> method, as is called by the reportserver context and other used in webhost process. The sample below shows one of the simple implementations for the portal where the identity resolved by the reportserver is the one used.

```	
	  public void GetUserInfo(IRSRequestContext requestContext, out IIdentity userIdentity, out IntPtr userId)
      {
           userIdentity = null;
           if (requestContext.User != null)
           {
               userIdentity = requestContext.User;
           }

          // initialize a pointer to the current user id to zero
           userId = IntPtr.Zero;
      }
```

## Deployment and Configuration
The basic configurations needed for custom security extension are the same as previous releases. Changes are needed for web.config and rsreportserver.config: For more information, see [Configure Custom or Forms Authentication on the Report Server](../../../reporting-services/security/configure-custom-or-forms-authentication-on-the-report-server.md).
	
There is no longer a separate web.config for the Report Manager, the portal will inherit the same settings as the reportserver endpoint.

## Machine Keys
	
For the case of Forms authentication which requires the decryption of the Authentication cookie, both processes need to be configured with the same machine key and decryption algorithm. This was a step familiar to those who had previously setup SSRS to work on scale-out environments, but now is a requirement even for deployments on a single machine..
	
For example:
	
**\ReportServer\web.config**

Add under `<system.web>`.
	
```
	    <machineKey
	validationKey="00A2CEAEF8A91B29F63399CBEE18F272159F114991EA7CF2FD78BC5D9BB0821825C7332C4A4C1698FA58E39634365A97DA8F720377B84F471A3A166CFCDD31DF" decryptionKey="009CA6A1D48DC4DB59E54865C470DFB75FBC1B73AA4833523C9795B1FA88CBE3"
	validation="AES" decryption="AES" />
```

**\ReportServer\Microsoft.ReportingServices.Portal.WebHost.exe.config**

Add under `<configuration>`.

```
	<system.web>
	    <machineKey
	validationKey="00A2CEAEF8A91B29F63399CBEE18F272159F114991EA7CF2FD78BC5D9BB0821825C7332C4A4C1698FA58E39634365A97DA8F720377B84F471A3A166CFCDD31DF" decryptionKey="009CA6A1D48DC4DB59E54865C470DFB75FBC1B73AA4833523C9795B1FA88CBE3"
	validation="AES" decryption="AES" />
	</system.web>
```

You should use a validation key specific for you deployment, there are several tools to generate the keys that can be found on the internet.

## Configure Passthrough cookies

The new portal and the reportserver communicate using internal soap APIs for some of its operations (similar to the previous version of the Report Manager). When additional cookies are required to be passed from the portal to the server the PassThroughCookies properties is still available. For more information, see [Configure Report Manager to Pass Custom Authentication Cookies](https://msdn.microsoft.com/library/ms345241(v=sql.120).aspx).

```
<UI>
   <CustomAuthenticationUI>
      <PassThroughCookies>
         <PassThroughCookie>sqlAuthCookie</PassThroughCookie>
      </PassThroughCookies>
   </CustomAuthenticationUI>
</UI>
```

## See also

[Configure Custom or Forms Authentication on the Report Server](../../../reporting-services/security/configure-custom-or-forms-authentication-on-the-report-server.md)  
[Configure Report Manager to Pass Custom Authentication Cookies](https://msdn.microsoft.com/library/ms345241(v=sql.120).aspx)