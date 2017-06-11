<%@page import="java.sql.*"%>
<%
 String count=request.getParameter("count");  
 String buffer="<select id='foodUnit4' class='dropdown' tabindex='9'  name='food' onchange='showUnit4();'><option selected disabled>Select Food</option>";  
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");  
 stmt = con.createStatement();  
 rs = stmt.executeQuery("SELECT * FROM food WHERE CATEGORY_ID='"+count+"' ");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString(4)+"'>"+rs.getString(2)+"</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }finally {
	 if(stmt != null)
	 	{stmt.close();}
	 if(rs != null)
	 	{rs.close();}
	 if(con != null)
		{con.close();}
}

 %>