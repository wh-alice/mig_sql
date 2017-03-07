---
title: "Parameterized Data Views and Load on Demand | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4d0d905d-5bf2-4716-b20c-8b068a4bec2a
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Parameterized Data Views and Load on Demand
## Creating parameterized data views  
  
Start by creating a new data view inside a *Data Source* in the Control Panel. Currently, [parameterized views are supported only for SQL and MDX data types](Data%20Types.md).  
  
**Note:** You must be logged in as *admin* or the hub owner to configure data sources in a hub.  
  
Check the *Real Time* checkbox and then click on the *Define Parameters* link beside it.  Since parameterized queries are executed every time the view changes in a client application, they **must** be real time and cannot be [cached](Data%20Acquisition.md) in the Core Service Repository.  
  
We can configure all the parameters needed to pass from the mobile report into our query in order to optimize it. The example below uses a parameterized query to return only results within a  selected time range and only for a selected product.  
  
    SELECT * FROM [dbo].[ProductDataTable] WHERE [Month] BETWEEN  
      CAST('{{ @StarTime }}' AS DATETIME)   
      AND CAST('{{ @EndTime }}' AS DATETIME)   
      AND [Product] LIKE CASE '{{ @Product }}'   
      WHEN '' THEN '%' ELSE '{{ @Product }}'  
      END  
  
Note that for the *Product* parameter we use the *%* symbol as a default value.  This is a T-SQL wildcard that will match any string, meaning that we want all values returned when nothing is specified in the parameter.  
  
Click on *Done* to create our query.  
  
The SQL query can now make use of parameters by enclosing them in a set of double braces such as `{{ @ParamName }}`.  Note that the *Product* WHERE clause has a special case for the empty string.  The reason for this is that product selection will come from a Selection List control in a mobile report that has the *All* option enabled. When the user selects *All* the selection list will pass the empty string as a selection which we handle in our query to select all products.  
  
Click on *Next* to finish creating our query.  
  
## Creating mobile reports with load on demand data  
  
Creating mobile reports that load data on demand is a two-step process:  
  
1. Create the appropriate data views that allow parameters from the mobile reports to be passed into the queries.  
2. Connect the parameters to the appropriate filters in the mobile reports in order for the view to be properly used by the mobile report.  
  
## Using parameterized data views in a mobile report  
  
In the *Data View* section of the Mobile Report Designer parameterized data views can be imported from the server. Once imported a green *P* on the right of the data table's tab denotes that parameters are available to be configured for it.  Clicking on the gear icon beside the green *P* and selecting the *Param* option will display the parameter configuration screen.  
  
<div class="image">  
  <img src="images/parameterized_queries_and_load_on_demand_screen01.png" width="800" height="412" />  
  <p>Connecting data view parameters with navigators.</p>  
</div>  
  
The parameter configuration screen allows for the binding of the data view's query parameters to parameters available from elements currently on a mobile report, such as Selection Lists and Time Navigators.  
  
Once the parameter setup has been completed, each time one of the parameters changes through end user interaction with a mobile report, any data table with bound parameters will be refreshed, along with all the controls that use its data. With this approach, configuring filtering on the client in not needed since the filtering is done on the server through the parameters, and only the filtered results are returned.  
  
## Using parameterized data views with load on demand data  
  
Parameterized data views can be used to load data *on demand* by allowing the user to select filter parameters through the use of Selection Lists or Scorecard Grid, as well as allowing the user to select a time range by using a Time Navigator. Queries structured with *start* and *end* datetime parameters support load on demand data for any mobile reports with a Time Navigator bound to those start and end datetime parameters.  
  
  
