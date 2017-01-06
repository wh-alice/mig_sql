public static void executeInsertWithKeys(Connection con) {
   try {
      String SQL = "INSERT INTO TestTable (Col2, Col3) VALUES ('S', 50)";
      Statement stmt = con.createStatement();
      int count = stmt.executeUpdate(SQL, Statement.RETURN_GENERATED_KEYS);
      ResultSet rs = stmt.getGeneratedKeys();

      ResultSetMetaData rsmd = rs.getMetaData();
      int columnCount = rsmd.getColumnCount();
      if (rs.next()) {
         do {
            for (int i=1; i<=columnCount; i++) {
               String key = rs.getString(i);
               System.out.println("KEY " + i + " = " + key);
            }
         } while(rs.next());
      }
      else {
         System.out.println("NO KEYS WERE GENERATED.");
      }
      rs.close();
      stmt.close();
   }
   catch (Exception e) {
      e.printStackTrace();
   }
}