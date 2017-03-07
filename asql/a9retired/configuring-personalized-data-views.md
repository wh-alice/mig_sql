---
title: "Configuring Personalized Data Views | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 10e3a334-1008-42f2-911c-3670a0ec60a6
caps.latest.revision: 5
ms.author: "maggies"
robots: noindex,nofollow
---
# Configuring Personalized Data Views
All data views (with the exception of Excel documents), can be personalized based on the username of the currently loggen in user. The username is passed to the server using various methods depending on what is appropriate for the view type. [!INCLUDE[PRODUCT_NAME](../a9retired/includes/product-name.md)] supports personalized data views for both real time and cached views.  
  
**Important:** When caching personalized data views the related query is executed and cached for **every user** with [access](Managing%20Permissions.md) to the data view's data connection.  
  
<div class="image">  
  <img src="images/configuring_personalized_data_views_screen01.png" width="800" height="336" />  
  <p>An example of a personalized MDX query.</p>  
</div>  
  
The username of the user which is accessing a data view is provided as a token, `{{ username }}`, to be included in the relevant query body.  
  
## Personalized data view type     
  
## XML  
  
XML data views are queried through url parameters and therefore the current user will, in most cases, be passed as a querystring parameter:  
  
    http://mysoapserver.com/mysoapservice.aspx?user={{ username }}  
  
## OData  
  
OData queries can be personalized by including the username token in the query url, illustrated below in a filter parameter:  
  
    http://services.odata.org/Northwind/Northwind.svc/Customers?$filter=User%20eq%20%27{{ username }}%27  
  
## SQL Server, SQL Azure, ODBC and OLEDB  
  
In SQL-based personalized queries the username token is included directly in the text of the SQL query and can be used to provide a string comparison or an object key such as a table or column:  
  
    SELECT * FROM Table1 WHERE Username = "{{ username }}"  
  
## SSAS  
  
MDX queries can include the username token anywhere in the query, illustrated below by selecting a `MEMBER` by username:  
  
`MEMBER [USERNAME] AS "{{ username }}"`  
  
The username token can also be used, for example, in a `SET` statement.  
  
SSAS queries can also be personalized through the *EffectiveUser* method utilizing row-level security. This method can be used in conjunction with the MDX method outlined above. For more information see [Implementing Row-Level Security for SSAS Data Views](../a9retired/implementing-row-level-security-for-ssas-data-views.md).  
  
