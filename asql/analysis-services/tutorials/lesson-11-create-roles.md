---
title: "Lesson 12: Create Roles | Microsoft Docs"
ms.custom: ""
ms.date: "03/10/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 984face4-00fc-46d3-8ae1-9755bf737bdf
caps.latest.revision: 16
ms.author: "owend"
manager: "erikre"
---
# Lesson 11: Create Roles
In this lesson, you will create roles. Roles provide model database object and data security by limiting access to only those Windows users which are role members. Each role is defined with a single permission: None, Read, Read and Process, Process, or Administrator. Roles can be defined during model authoring by using the Role Manager dialog box in SSDT. After a model has been deployed, you can manage roles by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]. To learn more, see [Roles](../../analysis-services/tabular-models/roles-ssas-tabular.md).  
  
> [!NOTE]  
> Creating roles is not necessary to complete this tutorial. By default, the account you are currently logged in with will have Administrator privileges on the model. However, to allow other users in your organization to browse the model by using a reporting client, you must create at least one role with Read permissions and add those users as members.  
  
You will create three roles:  
  
-   **Sales Manager** – This role can include users in your organization for which you want to have Read permission to all model objects and data.  
  
-   **Sales Analyst US** – This role can include users in your organization for which you want only to be able to browse data related to sales in the US (United States). For this role, you will use a DAX formula to define a *Row Filter*, which restricts members to browse data only for the United States.  
  
-   **Administrator** – This role can include users for which you want to have Administrator permission, which allows unlimited access and permissions to perform administrative tasks on the model database.  
  
Because Windows user and group accounts in your organization are unique, you can add accounts from your particular organization to members. However, for this tutorial, you can also leave the members blank. You will still be able to test the effect of each role later in Lesson 12: Analyze in Excel.  
  
Estimated time to complete this lesson: **15 minutes**  
  
## Prerequisites  
This topic is part of a tabular modeling tutorial, which should be completed in order. Before performing the tasks in this lesson, you should have completed the previous lesson.  
  
## Create roles  
  
#### To create a Sales Manager user role  
  
1.  In Tabular Model Explorer, right-click **Roles**, and then click **Roles**.  
  
2.  In Role Manager, click **New**.  
  
3.  Click on the new role, and then in the **Name** column, rename the role to **Sales Manager**.  
  
4.  In the **Permissions** column, click the dropdown list, and then select the **Read** permission. 

    ![as-tabular-lesson11-new-role](../../analysis-services/tutorials/media/as-tabular-lesson11-new-role.png) 
  
5.  Optional: Click the **Members** tab, and then click **Add**. In the **Select Users or Groups** dialog box, enter the Windows users or groups from your organization you want to include in the role.  
  
#### To create a Sales Analyst US user role  
  
1.  In Role Manager, click **New**.    
  
2.  Rename the role to **Sales Analyst US**.  
  
3.  In the **Permissions** column, click the dropdown list, and then select the **Read** permission.  
  
4.  Click on the Row Filters tab, and then for the **DimGeography** table only, in the DAX Filter column, type the following formula:  
  
    ```
    =DimGeography[CountryRegionCode] = "US" 
    ```
    
    A Row Filter formula must resolve to a Boolean (TRUE/FALSE) value. With this formula, you are specifying that only rows with the Country Region Code value of “US” be visible to the user.  
    ![as-tabular-lesson11-role-filter](../../analysis-services/tutorials/media/as-tabular-lesson11-role-filter.png) 
  
6.  Optional: Click on the **Members** tab, and then click **Add**. In the **Select Users or Groups** dialog box, enter the Windows users or groups from your organization you want to include in the role.  
  
#### To create an Administrator user role  
  
1.  In Role Manager, click **New**.  
  
2.  Click on the new role, and then in the **Name** column, rename the role to **Administrator Administrator**.  
  
3.  In the **Permissions** column, click the dropdown list, and then select the **Administrator** permission.  
  
4.  Optional: Click on the **Members** tab, and then click **Add**. In the **Select Users or Groups** dialog box, enter the Windows users or groups from your organization you want to include in the role. 
  
  

  
  
