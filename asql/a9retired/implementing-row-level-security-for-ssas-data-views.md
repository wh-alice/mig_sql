---
title: "Implementing Row-Level Security for SSAS Data Views | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d4c4c830-154f-488f-b138-fe83ba52b0b7
caps.latest.revision: 5
ms.author: "asaxton"
robots: noindex,nofollow
---
# Implementing Row-Level Security for SSAS Data Views
[!INCLUDE[PRODUCT_NAME](../a9retired/includes/server-product-name.md)] supports row-level security for SQL Server Analysis Services (SSAS) data views in a Windows domain environment via the *EffectiveUserName* connection string property.  For general information about [!INCLUDE[PRODUCT_NAME](../a9retired/includes/server-product-name.md)] data personalization, see [Configuring Personalized Data Views](../a9retired/configuring-personalized-data-views.md).  
  
## Configuring Core Service and Data Acquisition Service credentials  
  
In order to utilize row-level security for SSAS, the Core Service and Data Acquisition Service must be configured to run under a domain account that has administrative privileges on the target SSAS instance.  
  
If these credentials were *not* configured during [server installation](Installing%20Datazen%20Enterprise%20Server.md), they can be configured through the Windows Services manager:  
  
<div class="image">  
  <img src="images/rowsec_service_account.png"  />  
  <p></p>  
</div>  
  
## Configuring SSAS security  
  
The service credentials for Core Service and Data Acquisition Service can be added as a SSAS administrator with the SSAS Management Studio.  
  
<div class="image">  
  <img src="images/rowsec_ssas_admin.png"  />  
  <p></p>  
</div>  
  
Every user that will have access to a personalized data connection must have access to the SSAS instance, either as an administrator or defined in a role.  
  
<div class="image">  
  <img src="images/rowsec_ssas_role_membership.png"  />  
  <p></p>  
</div>  
  
Roles can then be used to secure SSAS data appropriately. Securing cube data with roles is outside the scope of this document.  
  
## Creating personalized data connections  
  
In the [!INCLUDE[PRODUCT_NAME](../a9retired/includes/short-server-product-name.md)] Control Panel, under *Data Sources*, create a new Analysis Services connection, check *Personalize with Effective User*, and provide the connection string.  
  
<div class="image">  
  <img src="images/rowsec_cp_dataconnection.png"  />  
  <p></p>  
</div>  
  
When [!INCLUDE[PRODUCT_NAME](../a9retired/includes/short-product-name.md)] connects to Analysis Services, it will automatically append *EffectiveUserName={{ username }}* to the connection string.  When any data view that belongs to this data connection is executed, it will run in the context of the specified user account.  
  
**Note:** If you require more granularity over this setting in your connection string, you can manually set the EffectiveUserName property:    
  
    Provider=MSOLAP; Data Source=10.0.0.86; Initial Catalog=Adventure Works DW 2008R2 SE;EffectiveUserName=MYDOMAIN{{ username }}  
  
## Creating personalized data views  
  
For further personalization, select *Personalize for each member* on the data view itself.  In the query, any instance of the *{{ username }}* token will be substituted with the specific user's username.    
  
<div class="image">  
  <img src="images/rowsec_cp_dataview.png"  />  
  <p></p>  
</div>  
  
Implementing a user dimension in your cube is outside the scope of this document.  
