<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("fname");    
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String pswd = request.getParameter("pswd");
    String dob = request.getParameter("dob");
    String name = fname + " " + lname;
    Connection con = null;
    Statement st = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");
    st = con.createStatement();
    int i = st.executeUpdate("INSERT INTO user(USER_NAME, PASSWORD, EMAIL, GENDER, DATE_OF_BIRTH, IS_ADMIN, LAST_LOGIN_TIME, IS_ENABLED, SIGNUP_TIME) VALUES ('" + name +  "','" + pswd + "','" + email + "',1,'2017-05-15',0,NOW(),1,NOW())");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }}finally {
      	 if(st != null)
    	 	{st.close();}
    	 if(con != null)
    		{con.close();}
    }
%>