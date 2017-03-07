---
title: "Managing Data Providers | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 545c0f63-c867-4871-a5b2-d0e2874726d1
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Managing Data Providers
Many [data providers](Data%20Source%20Types.md) are available for use within [!INCLUDE[PRODUCT_NAME](../a9retired/includes/product-name.md)]. The set of *built-in* data providers can be extended by providing additional *custom* data providers. Also, specific data providers can be administratively disabled so that they will not be available to data connection authors.  
  
## Implementing custom data providers  
  
To create a custom data provider, a schema definition file representing the custom data provider should be created in the *\service\dataproviderschemas* folder (or a sub-folder thereof) of the installation folder.    
  
The schema definition file is an XML document in the following format:  
  
    <dataproviderschema>  
        <id>string</id>  
        <enabled>true|*false*</enabled>  
        <name>string</name>  
        <type>sql|sqlazure|ssas|odbc|oledb</type>  
        <properties>  
            <property>  
                <name>string</name>  
                <aliases>  
                    <alias>string</alias>  
                    <alias>...</alias>  
                </aliases>  
                <value>string</value>  
                <type>*string*|number|boolean</type>  
                <readonly>true|*false*</readonly>        
                <optional>true|*false*</optional>  
                <masked>true|*false*</masked>  
                <maskedForNonOwner>true|*false*</maskedForNonOwner>  
                <allowPathTraversal>true|*false*</allowPathTraversal>  
                <startsWith>string</startsWith>  
                <pattern>regexp</pattern>        
                <options>  
                    <option>string</option>  
                    <option>...</option>  
                </options>  
            </property>  
            <property>  
                ...  
            </property>  
        </properties>  
    </dataproviderschema>  
  
### id  
  
The unique id of the data provider.  If more than one schema definition file has the same *id*, the last one loaded will be used (according to the alphanumerically sorted full path and file name of the schema definition file). It is recommended that the format of the *id* start with the underlying data provider driver type and optionally include the driver name and/or the intended audience (e.g. `ODBC.SQLITE`, or `MSSQL.FINANCEDEPT`).  This element is required.  
  
Location:  
  
    <dataproviderschema>  
        <id>[string]</id>  
  
### enabled  
  
Determines whether the data provider is visible in the Control Panel. To disable a built-in data provider, use the *id* of the built-in data provider (as listed in the table below) and set *enabled* to `false`.  This element is required.  
  
Location:  
  
    <dataproviderschema>  
        <enabled>[true|false]</enabled>  
  
### name  
  
The name of the data provider as it appears in the Control Panel.  This element is required when *enabled* is `true`.  
  
Location:  
  
    <dataproviderschema>  
        <name>[string]</name>  
  
### type  
  
The underlying driver type of the data provider.  This element is required when *enabled* is `true`.  
  
Location:  
  
    <dataproviderschema>  
        <type>[sql|sqlazure|ssas|odbc|oledb]</type>  
  
### properties  
  
A collection of *property* nodes that define the components of the connection string.  This element is required when *enabled* is `true`.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            ....  
  
### property name  
  
The name of the property.  Example: `Data Source`, or `Server`.  This element is required.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <name>[string]</name>  
  
### property aliases  
  
A collection of *alias* nodes that define alternate names for the property. Example: `Database`.   
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <aliases>  
                    <alias>[string]</alias>  
                    ...  
  
### property value  
  
The default value of the property.  When *readonly* is `true` and *optional* is `false` this value becomes mandatory in the data connection.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <value>[string]</value>  
  
### property type  
  
The data type of the property.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <type>[boolean|number|string]</type>  
  
Default value: `string`  
  
### property readonly  
  
Marks this property as read-only.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <readonly>[true|false]</readonly>  
  
Default value: `false`  
        
### property optional  
  
Optional properties can be added or removed when constructing a data connection.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <optional>[true|false]</optional>  
  
Default value: `false`  
  
### property masked  
  
Whether the property will be masked in the Control Panel.  Masked properties are protected as password-style inputs only when *type* is `string`. Unless *readonly* is set to `true`, new values may still be set.   
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <masked>[true|false]</masked>  
  
Default value: `false`  
  
### property maskedForNonOwner  
  
Whether the property will be masked in the Control Panel for users that are not a hub owner.  Masked properties are protected as password-style inputs only when *type* is `string`.   
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <maskedForNonOwner>[true|false]</maskedForNonOwner>  
  
Default value: `false`  
  
### property allowPathTraversal  
  
When *type* is `string`, the property *value* is validated against potential path traversal attacks.  When *allowPathTraversal* is `false`, any value with `..\`, or `../`, will be rejected.  **It is strongly recommended that *allowPathTraversal* be set to `false`.**   
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <allowPathTraversal>[true|false]</allowPathTraversal>  
  
Default value: `false`  
  
### property startsWith  
  
A string that the property *value* must start with.  Any value that does not start with the specified string will be rejected.  
  
For example, if the property is a location to store log files, a file path starting with `c:\logs\` can be enforced.  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <startsWith>[string]</startsWith>  
  
### property pattern   
  
A regular expression that the property *value* must match.  Any value that does not match the specified pattern will be rejected.  
  
For example, if the property *value* must start with either `c:\logs\` or `\\logserver\logs\` and end with `.log`, *pattern* would be `^(c:\\logs\\|\\\\logserver\\logs\\)\w+\.log$`  
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <pattern>[regular expression]</pattern>  
  
### property options  
  
A collection of *option* elements that define acceptable values for the property. If set, the property *value* must match one of the values in the collection, otherwise it will be rejected.    
  
Location:  
  
    <dataproviderschema>  
        <properties>  
            <property>  
                <options>  
                    <option>[string]</option>  
                    ...  
  
Note: All other validation rules are still applied when *options* are specified.    
  
## Built-in data providers  
  
The following table describes the built-in data provider schemas:  
  
| ID                       | Type     | Description                            |  
|--------------------------|----------|----------------------------------------|  
| MSSQL                    | sql      | Microsoft SQL Server                   |  
| MSSQLAZURE               | sqlazure | Microsoft Azure SQL Database           |  
| MSSSAS                   | ssas     | Microsoft SQL Server Analysis Services |  
| ODBC.DSN                 | odbc     | Generic ODBC DSN                       |  
| ODBC.MYSQL               | odbc     | MySQL ODBC Driver                      |  
| ODBC.ORACLE              | odbc     | Oracle ODBC Driver                     |  
| ODBC.POSTGRES            | odbc     | PostgreSQL ODBC Driver                 |  
| OLEDB.ORACLE.ORAOLEDB    | oledb    | Oracle Provider for OLE DB             |  
| OLEDB.POSTGRES.PGNP      | oledb    | PGNP OLE DB Provider for PostgreSQL    |  
  
### Overriding built-in data providers  
  
It is possible to override a built-in data provider by creating a custom schema definition file with the same *id* as a built-in data provider. Overridden data providers should be used to include new properties, modify existing properties, or remove existing properties.  
  
  
### Disabling built-in data providers  
  
To disable a built-in data provider, create a custom schema definition file with the same *id* of the built-in data provider and set the *enabled* value to `false`.   
  
For example, to disable the built-in Microsoft SQL Server Analysis Services data provider, create a custom schema definition file with the following XML:  
  
    <dataproviderschema>  
        <id>MSSSAS</id>  
        <enabled>false</enabled>  
    </dataproviderschema>  
  
## Locking down data providers  
  
If the server administrator wishes to lock down the set of data providers so that data connection authors may only select a provider from a predefined set, disable each built-in data provider and create a schema definition file for each specific data connection scenario.    
  
For example, to create a data provider for MS SQL Server to a specific database:  
  
    <dataproviderschema>  
        <id>MSSQL.FINANCEDEPT</id>  
        <enabled>true</enabled>  
        <name>Accounting Database</name>  
        <type>sql</type>  
        <properties>  
            <property>  
                <name>Data Source</name>  
                <value>finance.corp.domain.com</value>  
                <masked>true</masked>  
                <readonly>true</readonly>  
            </property>  
            <property>  
                <name>Initial Catalog</name>  
                <value>Accounting</value>  
                <masked>true</masked>  
                <readonly>true</readonly>  
            </property>  
            <property>  
                <name>User ID</name>  
                <value>uacct</value>  
                <masked>true</masked>  
                <readonly>true</readonly>  
            </property>  
            <property>  
                <name>Password</name>  
                <value>Pa$$w0rd</value>  
                <masked>true</masked>  
                <readonly>true</readonly>  
            </property>  
            <property>  
                <name>Encrypt</name>  
                <type>boolean</type>  
                <value>true</value>  
                <readonly>true</readonly>  
            </property>  
        </properties>  
    </dataproviderschema>  
  
Because every property is masked and read-only, a data connection author will not be able to see or edit the property values when creating a new connection with this provider.   
