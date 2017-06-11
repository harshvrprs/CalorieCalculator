<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calorie Intake Record</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--Animation-->
    <script src="js/wow.min.js"></script>
    <link href="css/animate.css" rel='stylesheet' type='text/css'/>
    <script>
        new WOW().init();
    </script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/jquery.canvasjs.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //Better to construct options first and then pass it as a parameter
            var i1=document.getElementById("val1").value;
            var i2=document.getElementById("val2").value;
            var i3=document.getElementById("val3").value;
            var i4=document.getElementById("val4").value;
            var i5=document.getElementById("val5").value;
            var i6=document.getElementById("val6").value;
            var i7=document.getElementById("val7").value;
            var j1=parseInt(i1);
            var j2=parseInt(i2);
            var j3=parseInt(i3);
            var j4=parseInt(i4);
            var j5=parseInt(i5);
            var j6=parseInt(i6);
            var j7=parseInt(i7);
            var options = {
                    
                title: {
                    text: "My Calorie Intake"
                },
                animationEnabled: true,
                data: [
                    {
                        type: "spline", //change it to line, area, column, pie, etc
                        dataPoints: [
                            {x: 1, y: j1},
                            {x: 2, y: j2},
                            {x: 3, y: j3},
                            {x: 4, y: j4},
                            {x: 5, y: j5},
                            {x: 6, y: j6},
                            {x: 7, y: j7}
                        ]
                    }
                ]
            };

            $("#chartContainer").CanvasJSChart(options);

        });
    </script>
</head>
<body>
<div class="header">
    <div class="container">
        <div class="top-header">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt=""/></a>
            </div>
            <div class="queries">
                <p>Struggling with your recipe? Feel Free to<span>Track your Calorie</span>with us!</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="menu-bar">
        <div class="container">
            <div class="top-menu">
                <ul>
                    <li><a href="index.jsp" class="scroll">Calculator</a></li>
                    |
                    <li><a href="Top10Low.jsp">Learn More</a></li>
                    |
                    <li><a href="contact.jsp">contact</a></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="login-section">
                <ul>
                    <%
    			if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
				%>
                    <li><a href="login.html">Login</a></li>
                    |
                    <li><a href="register.html">Register</a></li>
                    |
                <%} else {
				%>	<li><a href="myRecords.jsp"><%=session.getAttribute("userid")%></a></li>
					|
					<li><a href="logout.jsp">Logout</a></li>
					|
				<%}%>
                    <li><a href="images/ug.pdf">Help</a></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div id="chartValues">
    <%	Connection con = null;
    	Statement st = null;
    	ResultSet rs = null;
    	try {
    	Class.forName("com.mysql.jdbc.Driver");
    	con = DriverManager.getConnection("jdbc:mysql://us-cdbr-sl-dfw-01.cleardb.net/ibmx_542a9d446dae8b7", "bf313dc5023362", "8f9349d9");
 		st = con.createStatement();
    	Integer user = (Integer)session.getAttribute("user");
    	//rs = st.executeQuery("select sum(total_calorie) from calculate_result where USER_ID = '"+user+"' and cast(submit_time as date) = '2017-06-03'");
    	rs = st.executeQuery("select cast(submit_time as date), sum(total_calorie) from calculate_result where USER_ID = '"+user+"' and cast(submit_time as date) between curdate()-6 and curdate() GROUP BY cast(submit_time as date)");
    	int i = 1;
    	while (rs.next()){%>
    		<div style="width:50%; margin:10px auto; ">
    		<div class="input-group input-group-lg">
  				<span class="input-group-addon" id="sizing-addon1"><%=rs.getString(1)%></span>
  				<input type="text" class="form-control" id="val<%=i%>" aria-describedby="sizing-addon1" value=<%=rs.getInt(2)%>>
			</div>
			</div>
    		<%i++;%>
    <%	}}
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
	</div>
    <div class="container">
        <div id="chartContainer" class="col-md-11 ordering-image wow bounceIn" data-wow-delay="0.4s"
             style="height: 410px;"></div>
    </div>
    <!-- footer-section-starts -->
    <div class="footer">
        <div class="container">
            <p class="wow fadeInLeft" data-wow-delay="0.4s">Copyright &copy; 2017.Extreme Team All rights reserved.</p>
        </div>
    </div>
</div>
</body>
</html>