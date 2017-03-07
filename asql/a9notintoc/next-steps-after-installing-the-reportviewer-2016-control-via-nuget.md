---
title: "Next steps after installing the ReportViewer 2016 control via NuGet | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-21"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 636aa0c4-e6e6-4981-9e04-f8a98170344e
caps.latest.revision: 5
ms.author: "asaxton"
manager: "erikre"
---
# Next steps after installing the ReportViewer 2016 control via NuGet
The ReportViewer 2016 control has been added to your project. Learn how you can use that control. You can use the control in a new project, or update existing projects.

Send feedback to the Reporting Services team via the [MSDN forums](https://social.msdn.microsoft.com/Forums/sqlserver/home?forum=sqlreportingservices) or by emailing [RVCFeedback@microsoft.com](mailto:RVCFeedback@microsoft.com).

## Using the ReportViewer control to a new project

1. Add a new .aspx page to the project and register the ReportViewer control assembly for use within the page.

    ```
    <%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
    ```
    
2. Add a **ScriptManagerControl** to the page.

3. Add the ReportViewer control to the page. The snippet below can be updated to reference a report hosted on a remote report server.

    ```
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote">
      <ServerReport ReportPath="" ReportServerUrl="" />
    </rsweb:ReportViewer>
    ```

The final page should look like the following.

```
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sample" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>        
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote">
            <ServerReport ReportPath="/LatestSales" ReportServerUrl="http://AContosoDepartment/ReportServer" />
        </rsweb:ReportViewer>
    </form>
</body>
</html>

```

## Updating an existing project to use the ReportViewer control

To make use of the ReportViewer 2016 control in an existing project, add the control via Nuget and update the assembly references to version *13.0.0.0*. This will include updating the project's web.config and all .aspx pages that reference the ReportViewer control.

### Sample web.config changes

```
<?xml version="1.0"?>
<!--
  For more information on how to configure your ASP.NET application, please visit
  http://go.microsoft.com/fwlink/?LinkId=169433
  -->
<configuration>
  <system.web>
    <compilation debug="true" targetFramework="4.5.2">
      <assemblies>
        <!-- All assemblies updated to version 13.0.0.0. -->
        <add assembly="Microsoft.ReportViewer.Common, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
        <add assembly="Microsoft.ReportViewer.DataVisualization, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
        <add assembly="Microsoft.ReportViewer.Design, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
        <add assembly="Microsoft.ReportViewer.ProcessingObjectModel, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
        <add assembly="Microsoft.ReportViewer.WebDesign, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
        <add assembly="Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
        <add assembly="Microsoft.ReportViewer.WinForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
      </assemblies>
      <buildProviders>
        <!-- Version updated to 13.0.0.0. -->
        <add extension=".rdlc"
          type="Microsoft.Reporting.RdlBuildProvider, Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
      </buildProviders>
    </compilation>
    <httpRuntime targetFramework="4.5.2"/>
    <httpHandlers>
      <!-- Version updated to 13.0.0.0 -->
      <add path="Reserved.ReportViewerWebControl.axd" verb="*"
        type="Microsoft.Reporting.WebForms.HttpHandler, Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"
        validate="false"/>
    </httpHandlers>
  </system.web>
  <system.webServer>
    <validation validateIntegratedModeConfiguration="false"/>
    <modules runAllManagedModulesForAllRequests="true"/>
    <handlers>
      <!-- Version updated to 13.0.0.0 -->
      <add name="ReportViewerWebControlHandler" verb="*" path="Reserved.ReportViewerWebControl.axd" preCondition="integratedMode"
        type="Microsoft.Reporting.WebForms.HttpHandler, Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91"/>
    </handlers>
  </system.webServer>
</configuration>
```

### Sample .aspx

```
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SampleAspx" %>

<!-- Update version to 13.0.0.0 -->
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>
```

## Common issues

- If SQL Server Data Tools (SSDT) or SQL Server Management Studio for SQL 2016 are installed, make sure you have the latest version. Earlier versions of of SSDT incorrectly GAC'ed certain dlls which conflict with the ReportViewer control. 

- Design time and control on the canvas experience for Visual Studio 2015 and Visual Studio "15" are not yet supported. You will most likely see the message below if you use the new report control runtime.

    `Error Creating Control - ReportViewer1.`
    
    `Failed to create designer 'Microsoft.Reporting.WebForms.ReportViewer, Microsoft.ReportViewer.WebForms, Version=13.0.0.0, Culture=neutral, PublicKeyToken=########`
    
- The ReportViewer 2016 control is designed to be used with modern browsers. The control may not function if browsers render the web page in an IE compatibility mode. Intranet sites may require a meta tag to override setting which encourage rendering intranet pages in compatibility mode.

    ```
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    ```

