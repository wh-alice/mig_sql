ResultSet rs = stmt.executeQuery("SELECT lname, job_id FROM employee
   WHERE (lname = 'Brown')");
rs.next();
short empJobID = rs.getShort("job_id");
rs.close();
stmt.close();