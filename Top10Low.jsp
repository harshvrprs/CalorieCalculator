<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Top 10 Low Calorie Foods</title>
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
                <p>Struggling with your recipe? Fell Free to<span>Track your Calorie</span>with us!</p>
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
                    <li  class="active"><a href="Top10Low.jsp">Top 10 Low</a></li>
                    |
                    <li><a href="Top10High.jsp">Top 10 High</a></li>
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
</div>
<!-- header-section-ends -->
<!-- content-section-starts -->
<div class="Popular-Restaurants-content">
    <div class="Popular-Restaurants-grids">
        <div class="container">
            <div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Watermelon-Balls_.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Watermelon-Balls</h4>
                    </div>
                    <div class="rating">
                        <span>Half of every plate or snack should be colorful produce, which is a combo of fiber and water to fill you up on fewer calories, says Somer. This summer, try satisfying your sweet tooth with water-logged watermelon. Two cups contain less than 100 calories and nearly half the recommended daily value of vitamin C!</span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>20 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Broccoli-Bowl_.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4><a href="#">Broccoli-Bowl</a></h4>
                    </div>
                    <div class="rating">
                        <span>Broccoli is a member of the cabbage family, making it a cruciferous vegetable. Itâ€™s name is derived from the Italian word broccolo, meaning the flowering top of a cabbage.Broccoli is also very high in Vitamin A. Vitamin A helps fight cancer within your cells, as well as keep your eyes healthy and stave off glaucoma and other eye degenerative diseases.</span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>34 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/carrot.png" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Carrot</h4>
                    </div>
                    <div class="rating">
                        <span>The carrot is a root vegetable with the most commonly eaten part being the taproot.Cultivated carrots are usually made up of about 88% water, 7% sugar, 1% protein, 1% fibre, 1% ash, and 0.2% fat.Carrots are cooked and eaten in various different ways. The vegetable is often pulped, mashed, boiled, purÃ©ed, grated, fried, steamed, stewed, baked, juiced or eaten raw. </span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>50 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Oatmeal-with-Blueberries.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Oatmeal-with-Blueberries</h4>
                    </div>
                    <div class="rating">
                        <span>To maximize that feel-full factor, choose 100 percent whole grains such as brown rice and oatmeal. The filling fiber in oats helps balance blood sugar levels, unlike the roller coaster ride caused by sugary breakfasts, says Somer. Blueberries contain more antioxidants than most other fruits or vegetables and may help prevent damage caused by cancer, heart disease, and Alzheimerâ€™s.</span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>60 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Yogurt-with-Gooseberries_.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Yogurt-with-Gooseberries</h4>
                    </div>
                    <div class="rating">
                        <span>You havenâ€™t had milk with dinner since you were a kid, but you might want to reconsider. Research has shown that regularly consuming low-fat or fat-free dairy products is a habit that can help you stay satisfied and slim. To get the recommended three servings per day, try starting your day with a cottage cheese- or yogurt-based breakfast, drink a glass of low-fat milk with your afternoon snack, or opt for low-fat chocolate milk post-workout.</span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>80 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Green-Smoothie_.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Green Smoothie</h4>
                    </div>
                    <div class="rating">
                        <span>If you haven not tried green smoothies yet, you have been missing out on a seriously nutrient-dense snack. Made with spinach, kale, collard, mustard or any other greens, green drinks are rich in vitamins and minerals, while providing feel-full fiber for very few calories (and no, they donâ€™t quite taste like salad). For a nutrient-packed protein shake thatâ€™ll keep hunger in check, combine 2 scoops protein powder, 1/2 banana, 1/2 cup frozen pineapple, 1 cup fresh kale and 1 cup unsweetened almond milk. </span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>115 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Black-and-Red-Beans_.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Black-and-Red-Beans</h4>
                    </div>
                    <div class="rating">
                        <span>100 grams of Soybeans, mature seeds, sprouted, raw contain 13.09 grams of protein, 6.7 grams of fat, 9.57 grams of carbohydrates, and 1.1 grams of fiber.You have 122 calories from 100 grams of Soybeans, mature seeds, sprouted, raw, the 6% of your total daily needs. It contains 6.7 grams of fat and 0 mg of Cholesterol.Theyâ€™re excellent sources of fiber and may help prevent against disease, studies have found.</span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>122 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Minestrone-Soup.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Minestrone-Soup</h4>
                    </div>
                    <div class="rating">
                        <span>Studies show that people who include broth-based soups (even the low-calorie ones) in their diets consume fewer calories at mealtime. So if youâ€™re at a restaurant, try a broth-based soup with fiber-filled veggies (like this one!) to help you eat less and keep your hands out of the bread basket. </span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>140 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/Black-Rice_.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Black rice</h4>
                    </div>
                    <div class="rating">
                        <span>Youâ€™ve swapped white rice for brown â€” but what about black? This lesser-known grain packs a hefty dose of fiber and antioxidants, with fewer carbs and calories than its white and brown counterparts. (A half-cup of cooked black rice is 90 calories compared to the 102 calories in white rice and 108 calories in brown rice.) </span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>150 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
                <div class="col-md-3 restaurent-logo">
                    <img src="images/avocado.jpg" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-6 food-title">
                    <div class="logo-title">
                        <h4>Avocado</h4>
                    </div>
                    <div class="rating">
                        <span>Avocados are the size of a baby in its motherâ€™s womb at 16 weeks.Theyâ€™re also a good snack to feed to babies young and old!There are 10 grams of fiber in one medium-sized avocado. There are two grams of fiber in one serving, which is one-fifth of a medium avocado. It contains both insoluble and soluble fiber. Insoluble fiber accounts for 75%, with the remaining 25% as soluble fiber.</span>
                    </div>
                </div>
                <div class="col-md-3 buy">
                    <span>160 cal/100g</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- content-section-ends -->
<!-- footer-section-starts -->
<div class="footer">
    <div class="container">
        <p class="wow fadeInLeft" data-wow-delay="0.4s">Copyright &copy; 2017.Extreme Team All rights reserved. <a href="https://www.youtube.com/watch?v=pM6onWcNcRA">About Developers</a></p>
    </div>
</div>
<!-- footer-section-ends -->
</body>
</html>