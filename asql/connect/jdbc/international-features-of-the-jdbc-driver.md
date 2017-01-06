---
title: "International Features of the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: bbb74a1d-9278-401f-9530-7b5f45aa79de
caps.latest.revision: 40
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# International Features of the JDBC Driver
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The internationalization features of the Microsoft JDBC Driver for SQL Server include the following:  
  
-   Support for a fully localized experience in the same languages as SQL Server  
  
-   Support for the Java language conversions for locale sensitive SQL Server data  
  
-   Support for international languages, regardless of operating system  
  
-   Support for international domain names (starting with Microsoft JDBC Driver 6.0 for SQL Server)  
  
## Handling of Character Data  
 Character data in Java is handled as Unicode by default; the Java **String** object represents Unicode character data. In the JDBC driver, the only exception to this rule is the ASCII stream getter and setter methods, which are special cases because they use byte streams with the implicit assumption of single well-known code pages (ASCII).  
  
 In addition, the JDBC driver provides the **sendStringParametersAsUnicode** connection string property. This property can be used to specify that prepared parameters for character data are sent as ASCII or Multi-byte Character Set (MBCS) instead of Unicode. For more information about the **sendStringParametersAsUnicode** connection string property, see [Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md).  
  
### Driver Incoming Conversions  
 Unicode text data coming from the server does not have to be converted. It is passed directly as Unicode. Non-Unicode data coming from the server is converted from the code page for the data, at the database or column level, to Unicode. The JDBC driver uses the Java Virtual Machine (JVM) conversion routines to perform these conversions. These conversions are performed on all typed String and Character stream getter methods.  
  
 If the JVM does not have the proper code page support for the data from the database, the JDBC driver throws a "XXX codepage not supported by the Java environment" exception. To solve this problem, you should install the full international character support required for that JVM. For an example, see the Supported Encodings documentation on Sun Microsystems Web site.  
  
### Driver Outgoing Conversions  
 Character data going from the driver to the server can be ASCII or Unicode. For example, the new JDBC 4.0 national character methods, such as setNString, setNCharacterStream, and setNClob methods of [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) and [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) classes, always send their parameter values to the server in Unicode.  
  
 On the other hand, the non-national character API methods, such as setString, setCharacterStream, and setClob methods of [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) and [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) classes send their values to the server in Unicode only when the **sendStringParametersAsUnicode** property is set to "true", which is the default value.  
  
## Non-Unicode Parameters  
 For optimal performance with **CHAR**, **VARCHAR** or **LONGVARCHAR** type of non-Unicode parameters, set the **sendStringParametersAsUnicode** connection string property to "false" and use the non-national character methods.  
  
## Formatting Issues  
 For date, time, and currencies, all formatting with localized data is performed at the Java language level using the Locale object; and the various formatting methods for **Date**, **Calendar**, and **Number** data types. In the rare case where the JDBC driver must pass along locale sensitive data in a localized format, the proper formatter is used with the default JVM locale.  
  
## Collation Support  
 The JDBC Driver 3.0 supports all the collations supported by SQL Server 2000, SQL Server 2005, and the new collations or new versions of Windows collation names introduced in SQL Server 2008.  
  
 For more information on the collations, see [Collation and Unicode Support](http://go.microsoft.com/fwlink/?LinkId=131366) and [Windows Collation Name (Transact-SQL)](http://go.microsoft.com/fwlink/?LinkId=131367) in SQL Server Books Online.  
  
## Using International Domain Names (IDN)  
 The JDBC Driver 6.0 for SQL Server supports the use of Internationalized Domain Names (IDNs) and can convert a Unicode serverName to ASCII compatible encoding (Punycode) when required during a connection.  If the IDNs are stored in the Domain Name System (DNS) as ASCII strings in the Punycode format (specified by RFC 3490), enable the conversion of the Unicode server name by setting the serverNameAsACE property to true.  Otherwise, if the DNS service is configured to allow the use of Unicode characters, set the serverNameAsACE property as false (the default).  For older versions of the JDBC driver, it is also possible to convert the serverName to Punycode using [Java’s IDN.toASCII](http://docs.oracle.com/javase/8/docs/api/java/net/IDN.html) methods before setting that property for a connection.  
  
> [!NOTE]  
>  Most resolver software written for non-Windows platforms is based on the Internet DSN standards and is therefore most likely to use the Punycode format for IDNs, while a Windows-based DNS Server on a private network can be configured to allow the use of UTF-8 characters on a per-server basis.  For more details, see [Unicode character support](https://technet.microsoft.com/library/cc738403(v=ws.10).aspx).  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  