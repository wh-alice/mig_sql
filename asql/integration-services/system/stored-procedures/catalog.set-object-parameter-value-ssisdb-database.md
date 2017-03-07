---
title: "catalog.set_object_parameter_value (SSISDB Database) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: fb887543-f92f-404d-9495-a1dd23a6716e
caps.latest.revision: 17
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.set_object_parameter_value (SSISDB Database)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Sets the value of a parameter in the [!INCLUDE[ssISnoversion](../../../a9notintoc/includes/ssisnoversion-md.md)] catalog. Associates the value to an environment variable or assigns a literal value that will be used by default if no other values are assigned.  
  
## Syntax  
  
```tsql  
set_object_parameter_value [ @object_type = ] object_type   
    , [ @folder_name = ] folder_name   
    , [ @project_name = ] project_name   
    , [ @parameter_name = ] parameter _name   
    , [ @parameter_value = ] parameter_value   
 [  , [ @object_name = ] object_name ]  
 [  , [ @value_type = ] value_type ]  
```  
  
## Arguments  
 [ @object_type = ] *object_type*  
 The type of parameter. Use the value `20` to indicate a project parameter or the value `30` to indicate a package parameter. The *object_type* is **smallInt**.  
  
 [ @folder_name = ] *folder_name*  
 The name of the folder that contains the parameter. The *folder_name* is **nvarchar(128)**.  
  
 [ @project_name = ] *project_name*  
 The name of the project that contains the parameter. The *project_name* is **nvarchar(128)**.  
  
 [ @parameter_name = ] *parameter_name*  
 The name of the parameter. The *parameter_name* is **nvarchar(128)**.  
  
 [ @parameter_value = ] *parameter_value*  
 The value of the parameter. The *parameter_value* is **sql_variant**.  
  
 [ @object_name = ] *object_name*  
 The name of the package. This argument required when the parameter is a package parameter. The *object_name* is **nvarchar(260)**.  
  
 [ @value_type = ] *value_type*  
 The type of parameter value. Use the character `V` to indicate that *parameter_value* is a literal value that will be used by default of no other values are assigned prior to execution. Use the character `R` to indicate that *parameter_value* is a referenced value and has been set to the name of an environment variable. This argument is optional, the character `V` is used by default. The *value_type* is **char(1)**.  
  
## Return Code Value  
 0 (success)  
  
## Result Sets  
 None  
  
## Permissions  
 This stored procedure requires one of the following permissions:  
  
-   READ and MODIFY permissions on the project  
  
-   Membership to the **ssis_admin** database role  
  
-   Membership to the **sysadmin** server role  
  
## Errors and Warnings  
 The following list describes some conditions that may cause the stored procedure to raise an error:  
  
-   The parameter type is not valid  
  
-   The project name is not valid  
  
-   For package parameters, the package name is not valid  
  
-   The value type is not valid  
  
-   The user does not have the appropriate permissions  
  
## Remarks  
  
-   If no *value_type* is specified, a literal value for *parameter_value* is used by default. When a literal value is used, the *value_set* in the [object_parameters](../../../integration-services/system/views/catalog.object-parameters-ssisdb-database.md) view is set to `1`. A NULL parameter value is not allowed.  
  
-   If *value_type* contains the character `R`, which denotes a referenced value, *parameter_value* refers to the name of an environment variable.  
  
-   The value `20` may be used for *object_type* to denote a project parameter. In this case, a value for *object_name* is not necessary, and any value specified for *object_name* is ignored. This value is used when the user wants to set a project parameter.  
  
-   The value `30` may be used for *object_type* to denote a package parameter. In this case, a value for *object_name* is used to denote the corresponding package. If *object_name* is not specified, the stored procedure returns an error and terminates.  
  
  