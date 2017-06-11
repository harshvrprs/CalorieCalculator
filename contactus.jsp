<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");
    st = con.createStatement();
    int i = st.executeUpdate("INSERT INTO user_contact (FULL_NAME, EMAIL, SUBJECT, MESSAGE, MESSAGE_TIME) VALUES ('" + name +  "','" + email + "','" + subject + "','" + message + "',NOW())");
    if (i > 0) {
        response.sendRedirect("contact.jsp");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Query Submitted');");
        out.println("location='contact.jsp';");
        out.println("</script>");
    } else {
        response.sendRedirect("index.jsp");
    }}
    catch(Exception e){
        System.out.println(e);
    }finally {
   	 if(st != null)
   	 	{st.close();}
   	 if(rs != null)
   	 	{rs.close();}
   	 if(con != null)
   		{con.close();}
   }
%>