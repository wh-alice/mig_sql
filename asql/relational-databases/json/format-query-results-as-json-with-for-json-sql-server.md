---
title: "Format Query Results as JSON with FOR JSON (SQL Server) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-01-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "FOR JSON"
  - "JSON, exporting"
  - "exporting JSON"
ms.assetid: 15b56365-58c2-496c-9d4b-aa2600eab09a
caps.latest.revision: 31
ms.author: "douglasl"
manager: "jhubbard"
---
# Format Query Results as JSON with FOR JSON (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

Format query results as JSON, or export data from SQL Server as JSON, by adding the **FOR JSON** clause to a **SELECT** statement. Use the **FOR JSON** clause to delegate the formatting of JSON output from client applications to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].
  
 When you use the **FOR JSON** clause, you can specify the structure of the output explicitly, or let the structure of the SELECT statement determine the output.  
  
-   Use **PATH** mode with the **FOR JSON** clause to maintain full control over the format of the JSON output. You can create wrapper objects and nest complex properties.  
  
-   Use **AUTO** mode with the **FOR JSON** clause to format the JSON output automatically based on the structure of the SELECT statement.  
  
Here's an example of a **SELECT** statement with the **FOR JSON** clause and its output.
  
 ![FOR JSON](../../relational-databases/json/media/jsonslides2forjson.png "FOR JSON")  
  
## Maintain control over JSON output with PATH mode  
In **PATH** mode, you can use the dot syntax – for example, `'Item.Price'` – to format nested output. The following example also uses the **ROOT** option to specify a named root element.  

Here's a sample query that uses **PATH** mode with the **FOR JSON** clause.
  
 ![Diagram of flow of FOR JSON output](../../relational-databases/json/media/forjson-example1.png "Diagram of flow of FOR JSON output")  

### More info
For more info and examples, see [Format Nested JSON Output with PATH Mode &#40;SQL Server&#41;](../../relational-databases/json/format-nested-json-output-with-path-mode-sql-server.md).

For syntax and usage, see [FOR Clause &#40;Transact-SQL&#41;](../Topic/FOR%20Clause%20\(Transact-SQL\).md).  

## Let the SELECT statement control JSON output with AUTO mode  
In **AUTO** mode, the structure of the SELECT statement determines the format of the JSON output. By default, **null** values are not included in the output. You can use the **INCLUDE_NULL_VALUES** to change this behavior.  

Here's a sample query that uses **AUTO** mode with the **FOR JSON** clause.
 
**Query:**  
  
```tsql  
SELECT name, surname  
FROM emp  
FOR JSON AUTO  
```  
  
 **Results**  
  
```json  
[{
	"name": "John"
}, {
	"name": "Jane",
	"surname": "Doe"
}]
```  
### More info
For more info and examples, see [Format JSON Output Automatically with AUTO Mode &#40;SQL Server&#41;](../../relational-databases/json/format-json-output-automatically-with-auto-mode-sql-server.md).

For syntax and usage, see [FOR Clause &#40;Transact-SQL&#41;](../Topic/FOR%20Clause%20\(Transact-SQL\).md).  
  
## Control other JSON output options  
 Control the output of the **FOR JSON** clause by using the following options.  
  
-   To add a single, top-level element to the JSON output, specify the **ROOT** option. If you don't specify the **ROOT** option, the JSON output doesn't have a root element. For more info, see [Add a Root Node to JSON Output with the ROOT Option &#40;SQL Server&#41;](../../relational-databases/json/add-a-root-node-to-json-output-with-the-root-option-sql-server.md).  
  
-   To include null values in the JSON output, specify the **INCLUDE_NULL_VALUES** option. If you don't specify this option, the output does not include JSON properties for NULL values in the query results. For more info, see[Include Null Values in JSON Output with the INCLUDE_NULL_VALUES Option &#40;SQL Server&#41;](../Topic/Include%20Null%20Values%20in%20JSON%20Output%20with%20the%20INCLUDE_NULL_VALUES%20Option%20\(SQL%20Server\).md).   

-   To remove the square brackets that surround the JSON output of the **FOR JSON** clause by default, specify the **WITHOUT_ARRAY_WRAPPER** option. Use this option to generate a single JSON object as output. If you don't specify this option, the JSON output is enclosed within square brackets. For more info, see [Remove Square Brackets from JSON Output with the WITHOUT_ARRAY_WRAPPER Option &#40;SQL Server&#41;](../Topic/Remove%20Square%20Brackets%20from%20JSON%20Output%20with%20the%20WITHOUT_ARRAY_WRAPPER%20Option%20\(SQL%20Server\).md). 
   
## Output of the FOR JSON clause  
 The output of the **FOR JSON** clause has the following characteristics.  
  
1.  The result set contains a single column. A small result set may contain a single row. A large result set contains multiple rows.  
  
     ![Example of FOR JSON output](../../relational-databases/json/media/forjson-example2.png "Example of FOR JSON output")  
  
2.  The results are formatted as an array of JSON objects.  
  
    -   The number of elements in the array is equal to the number of rows in the results.  
  
    -   Each row in the result set becomes a separate JSON object in the array.  
  
    -   Each column in the result set becomes a property of the JSON object.  
  
3.  Both the names of columns and their values are escaped according to JSON syntax. For more info, see [How FOR JSON escapes special characters and control characters &#40;SQL Server&#41;](../../relational-databases/json/how-for-json-escapes-special-characters-and-control-characters-sql-server.md).
  
 Here's an example that demonstrates the formatting of the JSON output.  
  
 **Query results**  
  
|||||  
|-|-|-|-|  
|**A**|**B**|**C**|**D**|  
|10|11|12|X|  
|20|21|22|Y|  
|30|31|32|Z|  
  
 **JSON output**  
  
```json  
[{
	"A": 10,
	"B": 11,
	"C": 12,
	"D": "X"
}, {
	"A": 20,
	"B": 21,
	"C": 22,
	"D": "Y"
}, {
	"A": 30,
	"B": 31,
	"C": 32,
	"D": "Z"
}] 
```  
 For more info about what you see in the output of the **FOR JSON** clause, see the following topics.  
-   [How FOR JSON converts SQL Server data types to JSON data types &#40;SQL Server&#41;](../../relational-databases/json/how-for-json-converts-sql-server-data-types-to-json-data-types-sql-server.md)  
The **FOR JSON** clause uses the rules described in this topic to convert SQL data types to JSON types in the JSON output.  

-   [How FOR JSON escapes special characters and control characters &#40;SQL Server&#41;](../../relational-databases/json/how-for-json-escapes-special-characters-and-control-characters-sql-server.md)  
 The **FOR JSON** clause escapes special characters and represents control characters in the JSON output as described in this topic.  

## Learn more about FOR JSON and built-in JSON support in SQL Server  
 [Blog posts by Microsoft Program Manager Jovan Popovic](http://blogs.msdn.com/b/sqlserverstorageengine/archive/tags/json/)  
  
## See Also  
 [FOR Clause &#40;Transact-SQL&#41;](../Topic/FOR%20Clause%20\(Transact-SQL\).md)   
 [Use FOR JSON output in SQL Server and in client apps &#40;SQL Server&#41;](../../relational-databases/json/use-for-json-output-in-sql-server-and-in-client-apps-sql-server.md)  
  
  