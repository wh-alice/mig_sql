public static void executeComplexStatement(Connection con) {
   try {
      String sqlStringWithUnknownResults = "{call dbo.uspGetEmployeeManagers(50)};SELECT TOP 10 * FROM Person.Contact";
      Statement stmt = con.createStatement();
      boolean results = stmt.execute(sqlStringWithUnknownResults);
      int count = 0;
      do {
         if (results) {
            ResultSet rs = stmt.getResultSet();
            System.out.println("Result set data displayed here.");
            rs.close();
         } else {
            count = stmt.getUpdateCount();
            if (count >= 0) {
               System.out.println("DDL or update data displayed here.");
            } else {
               System.out.println("No more results to process.");
            }
         }
         results = stmt.getMoreResults();
      } while (results || count != -1);
      stmt.close();
   }
   catch (Exception e) {
      e.printStackTrace();
   }
}