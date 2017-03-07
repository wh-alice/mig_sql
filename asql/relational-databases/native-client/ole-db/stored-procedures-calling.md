---
title: "Calling a Stored Procedure (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "calling stored procedures"
  - "RPC escape sequence"
  - "OLE DB, stored procedures"
  - "parameters [SQL Server Native Client], OLE DB"
  - "ODBC CALL escape sequence"
  - "stored procedures [OLE DB], calling"
  - "SQL Server Native Client OLE DB provider, stored procedures"
ms.assetid: 8e5738e5-4bbe-4f34-bd69-0c0633290bdd
caps.latest.revision: 39
ms.author: "jhubbard"
manager: "jhubbard"
---
# Stored Procedures - Calling
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  A stored procedure can have zero or more parameters. It can also return a value. When using the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider, parameters to a stored procedure can be passed by:  
  
-   Hard-coding the data value.  
  
-   Using a parameter marker (?) to specify parameters, bind a program variable to the parameter marker, and then place the data value in the program variable.  
  
> [!NOTE]  
>  When calling [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] stored procedures using named parameters with OLE DB, the parameter names must start with the '@' character. This is a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] specific restriction. The [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider enforces this restriction more strictly than MDAC.  
  
 To support parameters, the **ICommandWithParameters** interface is exposed on the command object. To use parameters, the consumer first describes the parameters to the provider by calling the **ICommandWithParameters::SetParameterInfo** method (or optionally prepares a calling statement that calls the **GetParameterInfo** method). The consumer then creates an accessor that specifies the structure of a buffer and places parameter values in this buffer. Finally, it passes the handle of the accessor and a pointer to the buffer to **Execute**. On later calls to **Execute**, the consumer places new parameter values in the buffer and calls **Execute** with the accessor handle and buffer pointer.  
  
 A command that calls a temporary stored procedure using parameters must first call **ICommandWithParameters::SetParameterInfo** to define the parameter information, before the command can be successfully prepared. This is because the internal name for a temporary stored procedure differs from the external name used by a client and SQLOLEDB cannot query the system tables to determine the parameter information for a temporary stored procedure.  
  
 These are the steps in the parameter binding process:  
  
1.  Fill in the parameter information in an array of DBPARAMBINDINFO structures; that is, parameter name, provider-specific name for the data type of the parameter or a standard data type name, and so on. Each structure in the array describes one parameter. This array is then passed to the **SetParameterInfo** method.  
  
2.  Call the **ICommandWithParameters::SetParameterInfo** method to describe parameters to the provider. **SetParameterInfo** specifies the native data type of each parameter. **SetParameterInfo** arguments are:  
  
    -   The number of parameters for which to set type information.  
  
    -   An array of parameter ordinals for which to set type information.  
  
    -   An array of DBPARAMBINDINFO structures.  
  
3.  Create a parameter accessor by using the **IAccessor::CreateAccessor** command. The accessor specifies the structure of a buffer and places parameter values in the buffer. The **CreateAccessor** command creates an accessor from a set of bindings. These bindings are described by the consumer by using an array of DBBINDING structures. Each binding associates a single parameter to the buffer of the consumer and contains information such as:  
  
    -   The ordinal of the parameter to which the binding applies.  
  
    -   What is bound (the data value, its length, and its status).  
  
    -   The offset in the buffer to each of these parts.  
  
    -   The length and type of the data value as it exists in the buffer of the consumer.  
  
     An accessor is identified by its handle, which is of type HACCESSOR. This handle is returned by the **CreateAccessor** method. Whenever the consumer finishes using an accessor, the consumer must call the **ReleaseAccessor** method to release the memory it holds.  
  
     When the consumer calls a method, such as **ICommand::Execute**, it passes the handle to an accessor and a pointer to a buffer itself. The provider uses this accessor to determine how to transfer the data contained in the buffer.  
  
4.  Fill in the DBPARAMS structure. The consumer variables from which input parameter values are taken and to which output parameter values are written are passed at run time to **ICommand::Execute** in the DBPARAMS structure. The DBPARAMS structure includes three elements:  
  
    -   A pointer to the buffer from which the provider retrieves input parameter data and to which the provider returns output parameter data, according to the bindings specified by the accessor handle.  
  
    -   The number of sets of parameters in the buffer.  
  
    -   The accessor handle created in Step 3.  
  
5.  Execute the command by using **ICommand::Execute**.  
  
## Methods of Calling a Stored Procedure  
 When executing a stored procedure in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider supports the:  
  
-   ODBC CALL escape sequence.  
  
-   Remote procedure call (RPC) escape sequence.  
  
-   [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] EXECUTE statement.  
  
### ODBC CALL Escape Sequence  
 If you know parameter information, call **ICommandWithParameters::SetParameterInfo** method to describe the parameters to the provider. Otherwise, when the ODBC CALL syntax is used in calling a stored procedure, the provider calls a helper function to find the stored procedure parameter information.  
  
 If you are not sure about the parameter information (parameter metadata), ODBC CALL syntax is recommended.  
  
 The general syntax for calling a procedure by using the ODBC CALL escape sequence is:  
  
 {[**?=**]**call***procedure_name*[**(**[*parameter*][**,**[*parameter*]]...**)**]}  
  
 For example:  
  
```  
{call SalesByCategory('Produce', '1995')}  
```  
  
### RPC Escape Sequence  
 The RPC escape sequence is similar to the ODBC CALL syntax of calling a stored procedure. If you will call the procedure multiple times, the RPC escape sequence provides most optimal performance among the three methods of calling a stored procedure.  
  
 When the RPC escape sequence is used to execute a stored procedure, the provider does not call any helper function to determine the parameter information (as it does in the case of ODBC CALL syntax). The RPC syntax is simpler than the ODBC CALL syntax, so the command is parsed faster, improving performance. In this case, you need to provide the parameter information by executing **ICommandWithParameters::SetParameterInfo**.  
  
 The RPC escape sequence requires you to have a return value. If the stored procedure does not return a value, the server returns a 0 by default. In addition, you cannot open a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] cursor on the stored procedure. The stored procedure is prepared implicitly and the call to **ICommandPrepare::Prepare** will fail. Because of the inability to prepare an RPC call, you can not query column metadata; IColumnsInfo::GetColumnInfo and IColumnsRowset::GetColumnsRowset will return DB_E_NOTPREPARED.  
  
 If you know all the parameter metadata, RPC escape sequence is the recommended way to execute stored procedures.  
  
 This is an example of RPC escape sequence for calling a stored procedure:  
  
```  
{rpc SalesByCategory}  
```  
  
 For a sample application that demonstrates an RPC escape sequence, see [Execute a Stored Procedure &#40;Using RPC Syntax&#41; and Process Return Codes and Output Parameters &#40;OLE DB&#41;](../../../relational-databases/native-client-ole-db-how-to/results/1eb60087-da67-433f-9b45-4028595e68ab.md).  
  
### Transact-SQL EXECUTE Statement  
 The ODBC CALL escape sequence and the RPC escape sequence are the preferred methods for calling a stored procedure rather than the [EXECUTE](../../../t-sql/language-elements/execute-transact-sql.md) statement. The [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider uses the RPC mechanism of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to optimize command processing. This RPC protocol increases performance by eliminating much of the parameter processing and statement parsing done on the server.  
  
 This is an example of the [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] **EXECUTE** statement:  
  
```  
EXECUTE SalesByCategory 'Produce', '1995'  
```  
  
## See Also  
 [Stored Procedures](../../../relational-databases/native-client/ole-db/stored-procedures.md)  
  
  