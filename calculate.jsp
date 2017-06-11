<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
 String value1=request.getParameter("count1");
 String value2=request.getParameter("count2");
 String value3=request.getParameter("count3");
 String value4=request.getParameter("count4");
 String value5=request.getParameter("count5");
 String value6=request.getParameter("count6");
 String val1=request.getParameter("value1");
 String val2=request.getParameter("value2");
 String val3=request.getParameter("value3");
 String val4=request.getParameter("value4");
 String val5=request.getParameter("value5");
 String val6=request.getParameter("value6");
 int num1 = Integer.parseInt(value1);
 int num2 = Integer.parseInt(value2);
 int num3 = Integer.parseInt(value3);
 int num4 = Integer.parseInt(value4);
 int num5 = Integer.parseInt(value5);
 int num6 = Integer.parseInt(value6);
 String buffer="<h5>Burn it</h5>";  
 Connection con = null;
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");  
 int calc1 = 0;
 int calc2 = 0;
 int calc3 = 0;
 int calc4 = 0;
 int calc5 = 0;
 int calc6 = 0;
 if (val1 == "Select Food"){
	 calc1 = 0;
 }else{
	 Statement stmt1 = con.createStatement();
	 ResultSet rs1 = stmt1.executeQuery("SELECT * FROM food WHERE FOOD_NAME='"+val1+"' ");
	 while(rs1.next()){
	   calc1 = rs1.getInt(5);
 }
	 stmt1.close();
	 rs1.close();
 }
 if (val2 == "Select Food"){
	 calc2 = 0;
 }else{
	 Statement stmt2 = con.createStatement();
	 ResultSet rs2 = stmt2.executeQuery("SELECT * FROM food WHERE FOOD_NAME='"+val2+"' ");
	 while(rs2.next()){
	   calc2 = rs2.getInt(5);
 }
	 stmt2.close();
	 rs2.close();
 }
 if (val3 == "Select Food"){
	 calc3 = 0;
 }else{
	 Statement stmt3 = con.createStatement();
	 ResultSet rs3 = stmt3.executeQuery("SELECT * FROM food WHERE FOOD_NAME='"+val3+"' ");
	 while(rs3.next()){
	   calc3 = rs3.getInt(5);
 }
	 stmt3.close();
	 rs3.close();
 }
 if (val4 == "Select Food"){
	 calc4 = 0;
 }else{
	 Statement stmt4 = con.createStatement();
	 ResultSet rs4 = stmt4.executeQuery("SELECT * FROM food WHERE FOOD_NAME='"+val4+"' ");
	 while(rs4.next()){
	   calc4 = rs4.getInt(5);
 }
	 stmt4.close();
	 rs4.close();
 }
 if (val5 == "Select Food"){
	 calc5 = 0;
 }else{
	 Statement stmt5 = con.createStatement();
	 ResultSet rs5 = stmt5.executeQuery("SELECT * FROM food WHERE FOOD_NAME='"+val5+"' ");
	 while(rs5.next()){
	   calc5 = rs5.getInt(5);
 }
	 stmt5.close();
	 rs5.close();
 }
 if (val6 == "Select Food"){
	 calc6 = 0;
 }else{
	 Statement stmt6 = con.createStatement();
	 ResultSet rs6 = stmt6.executeQuery("SELECT * FROM food WHERE FOOD_NAME='"+val6+"' ");
	 while(rs6.next()){
	   calc6 = rs6.getInt(5);
 }
	 stmt6.close();
	 rs6.close();
 }
  calc1 = (calc1*num1);
  calc2 = (calc2*num2);
  calc3 = (calc3*num3);
  calc4 = (calc4*num4);
  calc5 = (calc5*num5);
  calc6 = (calc6*num6);
  int total = (calc1 + calc2 + calc3 + calc4 + calc5 + calc6);
  buffer = buffer + "<br><h3> Total Calories Consumed: <label id='calories'>"+total+"</label> kcal</h3><br><br>";
  int swim = (total/10);
  int run = (total/5);
  int jog = (total/2);
  int rop = (total/12);
  int cyc = (total/4);
  buffer = buffer + "<ul class='list-group'><li class='list-group-item active'>Calorie Burning Activities</li><li class='list-group-item'><span class='label label-default'>"+swim+"</span> minutes of Swimming</li><li class='list-group-item'><span class='label label-default'>"+run+"</span> minutes of Running</li><li class='list-group-item'><span class='label label-default'>"+jog+"</span> minutes of Jogging</li><li class='list-group-item'><span class='label label-default'>"+rop+"</span> minutes of Rope-Skipping</li><li class='list-group-item'><span class='label label-default'>"+cyc+"</span> minutes of Cycling</li></ul>";
  if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	  
  }else{
	  buffer = buffer + "<div class='wow swing2 animated' data-wow-delay='0.4s'><input type='button' value='Save' onclick='saveRecord()'></div>";
  }
  response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }finally {
	 if(con != null)
	 		{con.close();}
 }
 %>