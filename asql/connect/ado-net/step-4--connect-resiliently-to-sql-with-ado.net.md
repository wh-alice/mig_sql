---
title: "Step 4: Connect resiliently to SQL with ADO.NET | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-01"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "CSharp"
ms.assetid: 9b608b0b-6b38-42da-bb83-79df8c170cd7
caps.latest.revision: 9
ms.author: "genemi"
manager: "jhubbard"
---
# Step 4: Connect resiliently to SQL with ADO.NET
[!INCLUDE[Driver_ADODotNet_Download](../../connect/ado-net/includes)]


- Previous article:&nbsp;&nbsp;&nbsp;[Step 3: Proof of concept connecting to SQL using ADO.NET](../../connect/ado-net/step-3--proof-of-concept-connecting-to-sql-using-ado.net.md)  

  
This topic provides a C# code sample that demonstrates custom retry logic. The retry logic provides reliability. The retry logic is designed to gracefully process temporary errors or *transient faults* which tend to go away if the program waits several seconds and retries.  
  
Sources of transient faults include:  
  
- A brief failure of the networking that supports the Internet.  
- A cloud system might be load balancing its resources at the moment you query sent.  
  
  
The ADO.NET classes for connecting to your local Microsoft SQL Server can also connect to Azure SQL Database. However, by themselves the ADO.NET classes cannot provide all the robustness and reliability necessary in production use. Your client program can encounter transient faults from which it should silently and gracefully recover and continue on its own.  
  
## Step 1: Identify transient errors  
  
Your program must distinguish between transient errors versus persistent errors. Transient faults are error conditions that may clear up within a short period of time, such as transient network problems.  An example of a persistent error would be, if your program has a misspelling of the target database name - in this case, the "No such database found" error would persist, and has no chance of clearing up within a short period of time.  
  
The list of error numbers that are categorized as transient faults is available at at [Error messages for SQL Database client applications](http://azure.microsoft.com/documentation/articles/sql-database-develop-error-messages/)  
  
## Step 2: Create and Run sample application  
  
This sample assumes .NET Framework 4.5.1 or later is installed.  The C# code sample consists of one file named Program.cs. Its code is provided in the next section.  
  
### Step 2.a: Capture and compile the code sample  
  
You can compile the sample with the following steps:  
  
1. In the [free Visual Studio Community edition](https://www.visualstudio.com/products/visual-studio-community-vs), create a new project from the C# Console Application template.  
    - File > New > Project > Installed > Templates > Visual C# > Windows > Classic Desktop > Console Application  
    - Name the project **RetryAdo2**.  
2. Open the Solution Explorer pane.  
    - See the name of your project.  
    - See the name of the Program.cs file.  
3. Open the Program.cs file.  
4. Entirely replace the contents of the Program.cs file with the code in the following code block.  
5. Click the menu Build > Build Solution.  
  
### Step 2.b: Copy and Paste sample code  
  
Paste this code into your **Program.cs** file.  
  
Then you must edit the strings for server name, password, and so on. You can find these strings in the method named **GetSqlConnectionStringBuilder**.  
  
NOTE: The connection string for server name is geared toward Azure SQL Database, because it includes the four character prefix of **tcp:**. But you can adjust the server string to connect to your Microsoft SQL Server.  
  
  
```CSharp  
    using System;  // C#  
    using CG = System.Collections.Generic;  
    using QC = System.Data.SqlClient;  
    using TD = System.Threading;  
        
    namespace RetryAdo2  
    {  
      public class Program  
      {  
        static public int Main(string[] args)  
        {  
          bool succeeded = false;  
          int totalNumberOfTimesToTry = 4;  
          int retryIntervalSeconds = 10;  
        
          for (int tries = 1;  
            tries <= totalNumberOfTimesToTry;  
            tries++)  
          {  
            try  
            {  
              if (tries > 1)  
              {  
                Console.WriteLine  
                  ("Transient error encountered. Will begin attempt number {0} of {1} max...",  
                  tries, totalNumberOfTimesToTry  
                  );  
                TD.Thread.Sleep(1000 * retryIntervalSeconds);  
                retryIntervalSeconds = Convert.ToInt32  
                  (retryIntervalSeconds * 1.5);  
              }  
              AccessDatabase();  
              succeeded = true;  
              break;  
            }  
        
            catch (QC.SqlException sqlExc)  
            {  
              if (TransientErrorNumbers.Contains  
                (sqlExc.Number) == true)  
              {  
                Console.WriteLine("{0}: transient occurred.", sqlExc.Number);  
                continue;  
              }  
              else  
              {  
                Console.WriteLine(sqlExc);  
                succeeded = false;  
                break;  
              }  
            }  
        
            catch (TestSqlException sqlExc)  
            {  
              if (TransientErrorNumbers.Contains  
                (sqlExc.Number) == true)  
              {  
                Console.WriteLine("{0}: transient occurred. (TESTING.)", sqlExc.Number);  
                continue;  
              }  
              else  
              {  
                Console.WriteLine(sqlExc);  
                succeeded = false;  
                break;  
              }  
            }  
        
            catch (Exception Exc)  
            {  
              Console.WriteLine(Exc);  
              succeeded = false;  
              break;  
            }  
          }  
        
          if (succeeded == true)  
          {  
            return 0;  
          }  
          else  
          {  
            Console.WriteLine("ERROR: Unable to access the database!");  
            return 1;  
          }  
        }  
        
        /// <summary>  
        /// Connects to the database, reads,  
        /// prints results to the console.  
        /// </summary>  
        static public void AccessDatabase()  
        {  
          //throw new TestSqlException(4060); //(7654321);  // Uncomment for testing.  
        
          using (var sqlConnection = new QC.SqlConnection  
              (GetSqlConnectionString()))  
          {  
            using (var dbCommand = sqlConnection.CreateCommand())  
            {  
              dbCommand.CommandText = @"  
    SELECT TOP 3  
        ob.name,  
        CAST(ob.object_id as nvarchar(32)) as [object_id]  
      FROM sys.objects as ob  
      WHERE ob.type='IT'  
      ORDER BY ob.name;";  
        
              sqlConnection.Open();  
              var dataReader = dbCommand.ExecuteReader();  
        
              while (dataReader.Read())  
              {  
                Console.WriteLine("{0}\t{1}",  
                  dataReader.GetString(0),  
                  dataReader.GetString(1));  
              }  
            }  
          }  
        }  
        
        /// <summary>  
        /// You must edit the four 'my' string values.  
        /// </summary>  
        /// <returns>An ADO.NET connection string.</returns>  
        static private string GetSqlConnectionString()  
        {  
          // Prepare the connection string to Azure SQL Database.  
          var sqlConnectionSB = new QC.SqlConnectionStringBuilder();  
        
          // Change these values to your values.  
          sqlConnectionSB.DataSource = "tcp:myazuresqldbserver.database.windows.net,1433"; //["Server"]  
          sqlConnectionSB.InitialCatalog = "MyDatabase"; //["Database"]  
        
          sqlConnectionSB.UserID = "MyLogin";  // "@yourservername"  as suffix sometimes.  
          sqlConnectionSB.Password = "MyPassword";  
          sqlConnectionSB.IntegratedSecurity = false;  
        
          // Adjust these values if you like. (ADO.NET 4.5.1 or later.)  
          sqlConnectionSB.ConnectRetryCount = 3;  
          sqlConnectionSB.ConnectRetryInterval = 10;  // Seconds.  
        
          // Leave these values as they are.  
          sqlConnectionSB.IntegratedSecurity = false;  
          sqlConnectionSB.Encrypt = true;  
          sqlConnectionSB.ConnectTimeout = 30;  
        
          return sqlConnectionSB.ToString();  
        }  
        
        static public CG.List<int> TransientErrorNumbers =  
          new CG.List<int> { 4060, 40197, 40501, 40613,  
          49918, 49919, 49920, 11001 };  
      }  
        
      /// <summary>  
      /// For testing retry logic, you can have method  
      /// AccessDatabase start by throwing a new  
      /// TestSqlException with a Number that does  
      /// or does not match a transient error number  
      /// present in TransientErrorNumbers.  
      /// </summary>  
      internal class TestSqlException : ApplicationException  
      {  
        internal TestSqlException(int testErrorNumber)  
        { this.Number = testErrorNumber; }  
        
        internal int Number  
        { get; set; }  
      }  
    }  
```  
  
###  Step 2.c: Run the program  
  
  
The **RetryAdo2.exe** executable inputs no parameters. To run the .exe:  
  
1. Open a console window to where you have compiled the RetryAdo2.exe binary.  
2. Run RetryAdo2.exe, with no input parameters.  
  
  
  
```  
    database_firewall_rules_table   245575913  
    filestream_tombstone_2073058421 2073058421  
    filetable_updates_2105058535    2105058535  
```  
  
  
  
## Step 3: Ways to test your retry logic  
  
There are a variety of ways you can simulate a transient error to test your retry logic.  
  
  
###  Step 3.a: Throw a test exception  
  
The code sample includes:  
  
- A small second class named **TestSqlException**, which a property named **Number**.  
- `//throw new TestSqlException(4060);` , which you can uncomment.  
  
If you uncomment the throw statement, and recompile, the next run of **RetryAdo2.exe** outputs something similar to the following.  
  
```  
    [C:\VS15\RetryAdo2\RetryAdo2\bin\Debug\]  
    >> RetryAdo2.exe  
    4060: transient occurred. (TESTING.)  
    Transient error encountered. Will begin attempt number 2 of 4 max...  
    4060: transient occurred. (TESTING.)  
    Transient error encountered. Will begin attempt number 3 of 4 max...  
    4060: transient occurred. (TESTING.)  
    Transient error encountered. Will begin attempt number 4 of 4 max...  
    4060: transient occurred. (TESTING.)  
    ERROR: Unable to access the database!  
      
    [C:\VS15\RetryAdo2\RetryAdo2\bin\Debug\]  
    >>  
```  
  
###  Step 3.b: Retest with a persistent error  
  
To prove the code handles persistent errors correctly, rerun the preceding test except do not use the number of a real transient error like 4060. Instead use the nonsense number 7654321. The program should treat this as a persistent error, and should bypass any retry.  
  
###  Step 3.c: Disconnect from the network  
  
1. Disconnect your client computer from the network.  
    - For a desktop, unplug the network cable.  
    - For a laptop, press the function combination of keys to turn off the network adapter.  
2. Start RetryAdo2.exe, and wait for the console to display the first transient error, probably 11001.  
3. Reconnect to the network, while RetryAdo2.exe continues to run.  
4. Watch the console report success on a subsequent retry.  
  
  
###  Step 2.d: Temporarily misspell the server name  
  
1. Temporarily add 40615 as another error number to **TransientErrorNumbers**, and recompile.  
2. Set a breakpoint on the line: `new QC.SqlConnectionStringBuilder()`.  
3. Use the *Edit and Continue* feature to purposely misspell the server name, a couple lines below.  
    - Let the program run and come back to your breakpoint.  
    - The error 40615 occurs.  
4. Fix the misspelling.  
5. Let the program run and finish successfully.  
6. Remove 40615, and recompile.  
  
## Next Steps  
  
To explore other best practicies and design guidelines, visit [Connecting to SQL Database: Links, Best Practices and Design Guidelines](http://azure.microsoft.com/documentation/articles/sql-database-connect-central-recommendations/)  

