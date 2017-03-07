---
title: "Collation and Unicode Support | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "binary collations [SQL Server]"
  - "expression-level collations [SQL Server]"
  - "Windows collations [SQL Server]"
  - "globalization [SQL Server], about globalization"
  - "supplementary character support"
  - "code pages [SQL Server], about code pages"
  - "collations [SQL Server], about collations"
  - "Unicode [SQL Server], collations"
  - "database-level collations [SQL Server]"
  - "reading order"
  - "column-level collations"
  - "locales [SQL Server], about locales"
  - "locales [SQL Server]"
  - "code pages [SQL Server]"
  - "SQL Server collations"
  - "server-level collations [SQL Server]"
ms.assetid: 92d34f48-fa2b-47c5-89d3-a4c39b0f39eb
caps.latest.revision: 46
ms.author: "rickbyh"
manager: "jhubbard"
---
# Collation and Unicode Support
  Collations in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provide sorting rules, case, and accent sensitivity properties for your data. Collations that are used with character data types such as **char** and **varchar** dictate the code page and corresponding characters that can be represented for that data type. Whether you are installing a new instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], restoring a database backup, or connecting server to client databases, it is important that you understand the locale requirements, sorting order, and case and accent sensitivity of the data that you will be working with. To list the collations available on your instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [sys.fn_helpcollations &#40;Transact-SQL&#41;](../../relational-databases/system-functions/sys.fn-helpcollations-transact-sql.md).    
    
 When you select a collation for your server, database, column, or expression, you are assigning certain characteristics to your data that will affect the results of many operations in the database. For example, when you construct a query by using ORDER BY, the sort order of your result set might depend on the collation that is applied to the database or dictated in a COLLATE clause at the expression level of the query.    
    
 To best use collation support in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], you must understand the terms that are defined in this topic, and how they relate to the characteristics of your data.    
    
##  <a name="Terms"></a> Collation Terms    
    
-   [Collation](#Collation_Defn)    
    
-   [Locale](#Locale_Defn)    
    
-   [Code page](#Code_Page_Defn)    
    
-   [Sort order](#Sort_Order_Defn)    
    
###  <a name="Collation_Defn"></a> Collation    
 A collation specifies the bit patterns that represent each character in a data set. Collations also determine the rules that sort and compare data. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports storing objects that have different collations in a single database. For non-Unicode columns, the collation setting specifies the code page for the data and which characters can be represented. Data that is moved between non-Unicode columns must be converted from the source code page to the destination code page.    
    
 [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement results can vary when the statement is run in the context of different databases that have different collation settings. If it is possible, use a standardized collation for your organization. This way, you do not have to explicitly specify the collation in every character or Unicode expression. If you must work with objects that have different collation and code page settings, code your queries to consider the rules of collation precedence. For more information, see [Collation Precedence (Transact-SQL)](../../t-sql/statements/collation-precedence-transact-sql.md).    
    
 The options associated with a collation are case sensitivity, accent sensitivity, Kana-sensitivity, width sensitivity, variation-selector-sensitivity. These options are specified by appending them to the collation name. For example, this collation `Japanese_Bushu_Kakusu_100_CS_AS_KS_WS` is case-sensitive, accent-sensitive, Kana-sensitive, and width-sensitive. As another example, this collation `Japanese_Bushu_Kakusu_140_CI_AI_KS_WS_VSS` is case-insensitive, accent-insensitive, Kana-sensitive, width-sensitive, and variation-selector-sensitive.  The following table describes the behavior associated with these various options.    
    
|Option|Description|    
|------------|-----------------|    
|Case-sensitive (_CS)|Distinguishes between uppercase and lowercase letters. If selected, lowercase letters sort ahead of their uppercase versions. If this option is not selected, the collation will be case-insensitive. That is, SQL Server considers the uppercase and lowercase versions of letters to be identical for sorting purposes. You can explicitly select case insensitivity by specifying _CI.|    
|Accent-sensitive (_AS)|Distinguishes between accented and unaccented characters. For example, 'a' is not equal to 'ấ'. If this option is not selected, the collation will be accent-insensitive. That is, SQL Server considers the accented and unaccented versions of letters to be identical for sorting purposes. You can explicitly select accent insensitivity by specifying _AI.|    
|Kana-sensitive (_KS)|Distinguishes between the two types of Japanese kana characters: Hiragana and Katakana. If this option is not selected, the collation is Kana-insensitive. That is, SQL Server considers Hiragana and Katakana characters to be equal for sorting purposes. Omitting this option is the only method of specifying Kana-insensitivity.|    
|Width-sensitive (_WS)|Distinguishes between full-width and half-width characters. If this option is not selected, SQL Server considers the full-width and half-width representation of the same character to be identical for sorting purposes. Omitting this option is the only method of specifying width-insensitivity.|    
|Variation-selector-sensitive (_VSS) | Distinguishes between various ideographic variation selectors in Japanese collations Japanese_Bushu_Kakusu_140 and Japanese_XJIS_140 first introduced in [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)]. A variation sequence consists of a base character plus an additional variation selector. If this _VSS option is not selected, the collation is variation selector insensitive, and the variation selector is not considered in the comparison. That is, SQL Server considers characters built upon the same base character with  differing variation selectors to be identical for sorting purposes. See also  [Unicode Ideographic Variation Database](http://www.unicode.org/reports/tr37/). <br/><br/> Variation selector sensitive (_VSS) collations are not supported in Full-text search indexes. Full-text search indexes support only Accent-Sensitive (_AS), Kana-sensitive (_KS), and Width-sensitive (_WS) options. SQL Server XML and CLR engines do not support (_VSS) Variation selectors.
    
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports the following collation sets:    
    
 Windows collations    
 Windows collations define rules for storing character data that are based on an associated Windows system locale. For a Windows collation, comparison of non-Unicode data is implemented by using the same algorithm as Unicode data. The base Windows collation rules specify which alphabet or language is used when dictionary sorting is applied, and the code page that is used to store non-Unicode character data. Both Unicode and non-Unicode sorting are compatible with string comparisons in a particular version of Windows. This provides consistency across data types within [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], and it also lets developers sort strings in their applications by using the same rules that are used by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information, see [Windows Collation Name &#40;Transact-SQL&#41;](../../t-sql/statements/windows-collation-name-transact-sql.md).    
    
 Binary collations    
 Binary collations sort data based on the sequence of coded values that are defined by the locale and data type. They are case sensitive. A binary collation in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] defines the locale and the ANSI code page that will be used. This enforces a binary sort order. Because they are relatively simple, binary collations help improve application performance. For non-Unicode data types, data comparisons are based on the code points that are defined in the ANSI code page. For Unicode data types, data comparisons are based on the Unicode code points. For binary collations on Unicode data types, the locale is not considered in data sorts. For example, Latin_1_General_BIN and Japanese_BIN yield identical sorting results when they are used on Unicode data.    
    
 There are two types of binary collations in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]; the older **BIN** collations and the newer **BIN2** collations. In a **BIN2** collation all characters are sorted according to their code points. In a **BIN** collation only the first character is sorted according to the code point, and remaining characters are sorted according to their byte values. (Because the Intel platform is a little endian architecture, Unicode code characters are always stored byte-swapped.)    
    
 SQL Server collations    
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations (SQL_*) provide sort order compatibility with earlier versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. The dictionary sorting rules for non-Unicode data are incompatible with any sorting routine that is provided by Windows operating systems. However, sorting Unicode data is compatible with a particular version of Windows sorting rules. Because [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations use different comparison rules for non-Unicode and Unicode data, you will see different results for comparisons of the same data, depending on the underlying data type. For more information, see [SQL Server Collation Name &#40;Transact-SQL&#41;](../../t-sql/statements/sql-server-collation-name-transact-sql.md).    
    
> [!NOTE]    
>  When you upgrade an English-language instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations (SQL_*) can be specified for compatibility with existing instances of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Because the default collation for an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is defined during setup, make sure that you specify collation settings carefully when the following are true:    
>     
>  -   Your application code depends on the behavior of previous [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations.    
> -   You must store character data that reflects multiple languages.    
    
 Setting collations are supported at the following levels of an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:    
    
 Server-level collations    
 The default server collation is set during [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup, and also becomes the default collation of the system databases and all user databases. Note that Unicode-only collations cannot be selected during [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup because they are not supported as server-level collations.    
    
 After a collation has been assigned to the server, you cannot change the collation except by exporting all database objects and data, rebuilding the **master** database, and importing all database objects and data. Instead of changing the default collation of an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], you can specify the desired collation at the time that you create a new database or database column.    
    
 Database-level collations    
 When a database is created or modified, you can use the COLLATE clause of the CREATE DATABASE or ALTER DATABASE statement to specify the default database collation. If no collation is specified, the database is assigned the server collation.    
    
 You cannot change the collation of system databases except by changing the collation for the server.    
    
 The database collation is used for all metadata in the database, and is the default for all string columns, temporary objects, variable names, and any other strings used in the database. When you change the collation of a user database, there can be collation conflicts when queries in the database access temporary tables. Temporary tables are always stored in the **tempdb** system database, which will use the collation for the instance. Queries that compare character data between the user database and **tempdb** may fail if the collations cause a conflict in evaluating the character data. You can resolve this by specifying the COLLATE clause in the query. For more information, see [COLLATE &#40;Transact-SQL&#41;](../Topic/COLLATE%20\(Transact-SQL\).md).    
    
 Column-level collations    
 When you create or alter a table, you can specify collations for each character-string column by using the COLLATE clause. If no collation is specified, the column is assigned the default collation of the database.    
    
 Expression-level collations    
 Expression-level collations are set when a statement is run, and they affect the way a result set is returned. This enables ORDER BY sort results to be locale-specific. Use a COLLATE clause such as the following to implement expression-level collations:    
    
```    
SELECT name FROM customer ORDER BY name COLLATE Latin1_General_CS_AI;    
```    
    
###  <a name="Locale_Defn"></a> Locale    
 A locale is a set of information that is associated with a location or a culture. This can include the name and identifier of the spoken language, the script that is used to write the language, and cultural conventions. Collations can be associated with one or more locales. For more information, see [Locale IDs Assigned by Microsoft](http://msdn.microsoft.com/goglobal/bb964664.aspx).    
    
###  <a name="Code_Page_Defn"></a> Code Page    
 A code page is an ordered set of characters of a given script in which a numeric index, or code point value, is associated with each character. A Windows code page is typically referred to as a *character set* or *charset*. Code pages are used to provide support for the character sets and keyboard layouts that are used by different Windows system locales.     
###  <a name="Sort_Order_Defn"></a> Sort Order    
 Sort order specifies how data values are sorted. This affects the results of data comparison. Data is sorted by using collations, and it can be optimized by using indexes.    
    
##  <a name="Unicode_Defn"></a> Unicode Support    
 Unicode is a standard for mapping code points to characters. Because it is designed to cover all the characters of all the languages of the world, there is no need for different code pages to handle different sets of characters. If you store character data that reflects multiple languages, always use Unicode data types (**nchar**, **nvarchar**, and **ntext**) instead of the non-Unicode data types (**char**, **varchar**, and **text**).    
    
 Significant limitations are associated with non-Unicode data types. This is because a non-Unicode computer will be limited to use of a single code page. You might experience performance gain by using Unicode because fewer code-page conversions are required. Unicode collations must be selected individually at the database, column or expression level because they are not supported at the server level.    
    
 The code pages that a client uses are determined by the operating system settings. To set client code pages on the Windows operating system, use **Regional Settings** in Control Panel.    
    
 When you move data from a server to a client, your server collation might not be recognized by older client drivers. This can occur when you move data from a Unicode server to a non-Unicode client. Your best option might be to upgrade the client operating system so that the underlying system collations are updated. If the client has database client software installed, you might consider applying a service update to the database client software.    
    
 You can also try to use a different collation for the data on the server. Choose a collation that will map to a code page on the client.    
    
 To use the UTF-16 collations available in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)], you can select one of the supplementary characters `_SC` collations (Windows collations only) to improve searching and sorting of some Unicode characters.    
    
 To evaluate issues that are related to using Unicode or non-Unicode data types, test your scenario to measure performance differences in your environment. It is a good practice to standardize the collation that is used on systems across your organization, and deploy Unicode servers and clients wherever possible.    
    
 In many situations, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will interact with other servers or clients, and your organization might use multiple data access standards between applications and server instances. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] clients are one of two main types:    
    
-   **Unicode clients** that use OLE DB and Open Database Connectivity (ODBC) version 3.7 or a later version.    
    
-   **Non-Unicode clients** that use DB-Library and ODBC version 3.6 or an earlier version.    
    
 The following table provides information about using multilingual data with various combinations of Unicode and non-Unicode servers.    
    
|Server|Client|Benefits or Limitations|    
|------------|------------|-----------------------------|    
|Unicode|Unicode|Because Unicode data will be used throughout the system, this scenario provides the best performance and protection from corruption of retrieved data. This is the situation with ActiveX Data Objects (ADO), OLE DB, and ODBC version 3.7 or a later version.|    
|Unicode|Non-Unicode|In this scenario, especially with connections between a server that is running a newer operating system and a client that is running an older version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], or on an older operating system, there can be limitations or errors when you move data to a client computer. Unicode data on the server will try to map to a corresponding code page on the non-Unicode client to convert the data.|    
|Non-Unicode|Unicode|This is not an ideal configuration for using multilingual data. You cannot write Unicode data to the non-Unicode server. Problems are likely to occur when data is sent to servers that are outside the server's code page.|    
|Non-Unicode|Non-Unicode|This is a very limiting scenario for multilingual data. You can use only a single code page.|    
    
##  <a name="Supplementary_Characters"></a> Supplementary Characters    
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provides data types such as **nchar** and **nvarchar** to store Unicode data. These data types encode text in a format called *UTF-16*. The Unicode Consortium allocates each character a unique codepoint, which is a value in the range 0x0000 to 0x10FFFF. The most frequently used characters have codepoint values that will fit into a 16-bit word in memory and on disk, but characters with codepoint values larger than 0xFFFF require two consecutive 16-bit words. These characters are called *supplementary characters*, and the two consecutive 16-bit words are called *surrogate pairs*.    
    
 If you use supplementary characters:    
    
-   Supplementary characters can be used in ordering and comparison operations in collation versions 90 or greater.    
    
-   All _100 level collations support linguistic sorting with supplementary characters.    
    
-   Supplementary characters are not supported for use in metadata, such as in names of database objects.    
    
-   Introduced in [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)], a new family of supplementary character (SC) collations can be used with the data types **nchar**, **nvarchar** and **sql_variant**. For example: `Latin1_General_100_CI_AS_SC`, or if using a Japanese collation, `Japanese_Bushu_Kakusu_100_CI_AS_SC`.    
    
     The SC flag can be applied to:    
    
    -   Version 90 Windows collations    
    
    -   Version 100 Windows collations    
    
     The SC flag cannot be applied to:    
    
    -   Version 80 non-versioned Windows collations    
    
    -   The BIN or BIN2 binary collations    
    
    -   The SQL* collations    
    
 The following table compares the behavior of some string functions and string operators when they use supplementary characters with and without a SC collation.    
    
|String Function or Operator|With an SC Collation|Without an SC Collation|    
|---------------------------------|--------------------------|-----------------------------|    
|[CHARINDEX](../../t-sql/functions/charindex-transact-sql.md)<br /><br /> [LEN](../../t-sql/functions/len-transact-sql.md)<br /><br /> [PATINDEX](../../t-sql/functions/patindex-transact-sql.md)|The UTF-16 surrogate pair is counted as a single codepoint.|The UTF-16 surrogate pair is counted as two codepoints.|    
|[LEFT](../../t-sql/functions/left-transact-sql.md)<br /><br /> [REPLACE](../../t-sql/functions/replace-transact-sql.md)<br /><br /> [REVERSE](../../t-sql/functions/reverse-transact-sql.md)<br /><br /> [RIGHT](../../t-sql/functions/right-transact-sql.md)<br /><br /> [SUBSTRING](../../t-sql/functions/substring-transact-sql.md)<br /><br /> [STUFF](../../t-sql/functions/stuff-transact-sql.md)|These functions treat each surrogate pair as a single codepoint and work as expected.|These functions may split any surrogate pairs and lead to unexpected results.|    
|[NCHAR](../../t-sql/functions/nchar-transact-sql.md)|Returns the character corresponding to the specified Unicode codepoint value in the range 0 to 0x10FFFF. If the value specified lies in the range 0 through 0xFFFF, one character is returned. For higher values, the corresponding surrogate is returned.|A value higher than 0xFFFF returns NULL instead of the corresponding surrogate.|    
|[UNICODE](../../t-sql/functions/unicode-transact-sql.md)|Returns a UTF-16 codepoint in the range 0 through 0x10FFFF.|Returns a UCS-2 codepoint in the range 0 through 0xFFFF.|    
|[Match One Character Wildcard](../Topic/_%20\(Wildcard%20-%20Match%20One%20Character\)%20\(Transact-SQL\).md)<br /><br /> [Wildcard - Character(s) Not to Match](../Topic/\(Wildcard%20-%20Character\(s\)%20Not%20to%20Match\)%20\(Transact-SQL\).md)|Supplementary characters are supported for all wildcard operations.|Supplementary characters are not supported for these wildcard operations. Other wildcard operators are supported.|    
    
##  <a name="GB18030"></a> GB18030 Support    
 GB18030 is a separate standard used in the People's Republic of China for encoding Chinese characters. In GB18030, characters can be 1, 2, or 4 bytes in length. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provides support for GB18030-encoded characters by recognizing them when they enter the server from a client-side application and converting and storing them natively as Unicode characters. After they are stored in the server, they are treated as Unicode characters in any subsequent operations. You can use any Chinese collation, preferably the latest 100 version. All _100 level collations support linguistic sorting with GB18030 characters. If the data includes supplementary characters (surrogate pairs), you can use the SC collations available in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] to improve searching and sorting.    
    
##  <a name="Complex_script"></a> Complex Script Support    
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] can support inputting, storing, changing, and displaying complex scripts. Complex scripts include the following:    
    
-   Scripts that include the combination of both right-to-left and left-to-right text, such as a combination of Arabic and English text.    
    
-   Scripts whose characters change shape depending on their position, or when combined with other characters, such as Arabic, Indic, and Thai characters.    
    
-   Languages such as Thai that require internal dictionaries to recognize words because there are no breaks between them.    
    
 Database applications that interact with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must use controls that support complex scripts. Standard Windows form controls that are created in managed code are complex script-enabled.    

##  <a name="Japanese_Collations"></a> Japanese Collations added in  [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)]
 
Starting in [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)], two new Japanese collation families are supported, with the permutations of various options (_CS, _AS, _KS, _WS, _VSS, etc). 

To list these collations, you may query the SQL Server Database Engine:
``` 
SELECT Name, Description FROM fn_helpcollations()  
WHERE Name LIKE 'Japanese_Bushu_Kakusu_140%' OR Name LIKE 'Japanese_XJIS_140%'
``` 

These collations are supported in Database Engine indexes, memory-optimized tables, columnstore indexes, and natively compiled modules.
    
##  <a name="Related_Tasks"></a> Related Tasks    
    
|Task|Topic|    
|----------|-----------|    
|Describes how to set or change the collation of the instance of SQL Server.|[Set or Change the Server Collation](../../relational-databases/collations/set-or-change-the-server-collation.md)|    
|Describes how to set or change the collation of a user database.|[Set or Change the Database Collation](../../relational-databases/collations/set-or-change-the-database-collation.md)|    
|Describes how to set or change the collation of a column in the database.|[Set or Change the Column Collation](../../relational-databases/collations/set-or-change-the-column-collation.md)|    
|Describes how to return collation information at the server, database, or column level.|[View Collation Information](../../relational-databases/collations/view-collation-information.md)|    
|Describes how to write Transact-SQL statements that will make them more portable from one language to another, or support multiple languages more easily.|[Write International Transact-SQL Statements](../../relational-databases/collations/write-international-transact-sql-statements.md)|    
|Describes how to change the language of error messages and preferences for how date, time, and currency data are used and displayed.|[Set a Session Language](../../relational-databases/collations/set-a-session-language.md)|    
    
##  <a name="Related_Content"></a> Related Content    
 [SQL Server Best Practices Collation Change](http://go.microsoft.com/fwlink/?LinkId=113891)    
    
 ["SQL Server Best Practices Migration to Unicode"](http://go.microsoft.com/fwlink/?LinkId=113890)    
    
 [Unicode Consortium Web site](http://go.microsoft.com/fwlink/?LinkId=48619)    
    
## See Also    
 [Contained Database Collations](../../relational-databases/databases/contained-database-collations.md)     
 [Choose a Language When Creating a Full-Text Index](../../relational-databases/search/choose-a-language-when-creating-a-full-text-index.md)     
 [sys.fn_helpcollations &#40;Transact-SQL&#41;](../../relational-databases/system-functions/sys.fn-helpcollations-transact-sql.md)    
    
  