<%@ page import ="java.sql.*" %>
<%
    String calo = request.getParameter("calorie");
	Integer user = (Integer)session.getAttribute("user");
	int cal = Integer.parseInt(calo);
	Connection con = null;
    Statement st = null;
	try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");
    st = con.createStatement();
    int i = st.executeUpdate("INSERT INTO calculate_result (USER_ID, TOTAL_CALORIE, SUBMIT_TIME) VALUES ('"+user+"','"+cal+"',NOW())");
    if (i > 0) {
    String buffer = "<br><br><br><br><div class='alert alert-success' role='alert'><span class='sr-only'></span>Data has been saved successfully</div>";
    response.getWriter().println(buffer);
    } else {
       String buffer = "Not Worked";
       response.getWriter().println(buffer);	
    }
	}
	catch(Exception e){
	     System.out.println(e);
	}finally {
	   	 if(st != null)
	   	 	{st.close();}
	   	 if(con != null)
	   		{con.close();}
	   }
%>