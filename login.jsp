<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<%
    String emailid = request.getParameter("email");    
    String pswd = request.getParameter("pswd");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");
    st = con.createStatement();
    rs = st.executeQuery("SELECT * FROM user WHERE EMAIL='" + emailid + "' and PASSWORD='" + pswd + "'");
    if (rs.next()) {
    	String user = rs.getString("USER_NAME");
    	String id = rs.getString("ID");
    	int uid = Integer.parseInt(id);
        session.setAttribute("userid", user);
        session.setAttribute("user", uid);
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
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