<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
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
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <div id="fb-root"></div>
	<script>(function(d, s, id) {
  		var js, fjs = d.getElementsByTagName(s)[0];
  		if (d.getElementById(id)) return;
  		js = d.createElement(s); js.id = id;
  		js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.9";
  		fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<script>window.twttr = (function(d, s, id) {
  		var js, fjs = d.getElementsByTagName(s)[0],
    	t = window.twttr || {};
  		if (d.getElementById(id)) return t;
  		js = d.createElement(s);
  		js.id = id;
  		js.src = "https://platform.twitter.com/widgets.js";
  		fjs.parentNode.insertBefore(js, fjs);

  		t._e = [];
  		t.ready = function(f) {
    	t._e.push(f);
  		};

  		return t;
		}(document, "script", "twitter-wjs"));
	</script>
	
</head>
<body>
<!-- header-section-starts -->
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
                    <li class="active"><a href="contact.jsp">contact</a></li>
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
    <!-- header-section-ends -->
    <div class="contact-section-page">
        <div class="contact_top">
            <div class="container">
                <div class="col-md-6 contact_left wow fadeInRight" data-wow-delay="0.4s">
                    <h4>Contact Form</h4>
                    <p>For further information and help, please fill up this form then our administrator will come up to
                        you. </p>
                    <form method="post" action="contactus.jsp">
                        <div class="form_details">
                            <input type="text" class="text" value="Name" name="name" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Name';}">
                            <input type="text" class="text" value="Email Address" name="email" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Email Address';}">
                            <input type="text" class="text" value="Subject" name="subject" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Subject';}">
                            <textarea value="Message" name="message" onfocus="this.value = '';"
                                      onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
                            <div class="clearfix"></div>
                            <div class="sub-button wow swing animated" data-wow-delay="0.4s">
                                <input name="submit" type="submit" value="Send message">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 company-right wow fadeInLeft" data-wow-delay="0.4s">
                    <div class="contact-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.400350937324!2d174.7055693152734!3d-36.88076968900413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d4720a3564dcf%3A0xac4fd7893e9a560f!2sUnitec+Institute+of+Technology!5e0!3m2!1sen!2snz!4v1492474063460"></iframe>
                    </div>

                    <div class="company-right">
                        <div class="company_ad">
                            <h3>Contact Info</h3>
                            <span>139 Carrington Rd, Mount Albert, Auckland 1025.</span>
                            <address>
                                <p>email:<a href="mail-to: hek02@myunitec.ac.nz">hek02@myunitec.ac.nz</a></p>
                                <p>phone: +64-21-160-5677</p>
                                <p>Extreme Team</p>

                            </address>
                        </div>
                    </div>
                    <div class="follow-us">
                        <h3>share us on</h3>
                        <div class="fb-share-button" data-href="https://caloriecalculator.mybluemix.net/" data-layout="button_count" data-size="large" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fcaloriecalculator.mybluemix.net%2F&amp;src=sdkpreparse">Share</a></div><br><br>
                       	<a class="twitter-share-button"
  						href="https://twitter.com/intent/tweet?url=https://caloriecalculator.mybluemix.net/"
  						data-size="large">
						Tweet</a><br><br>
                        <g:plus action="share"></g:plus>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-section-starts -->
    <div class="footer">
        <div class="container">
            <p class="wow fadeInLeft" data-wow-delay="0.4s">Copyright &copy; 2017.Extreme Team All rights reserved. <a href="https://www.youtube.com/watch?v=pM6onWcNcRA">About Developers</a></p>
        </div>
    </div>
</div>
</body>
</html>