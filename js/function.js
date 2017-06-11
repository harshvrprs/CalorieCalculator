var xmlHttp
      function showFood(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="food.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("food").innerHTML=xmlHttp.responseText   
      }   
      }
      var xmlHttp
      function showFood2(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="food1.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange1(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("food2").innerHTML=xmlHttp.responseText   
      }   
      }
      var xmlHttp
      function showFood3(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="food2.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange2;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange2(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("food3").innerHTML=xmlHttp.responseText   
      }   
      }
      var xmlHttp
      function showFood4(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="food3.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange3;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange3(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("food4").innerHTML=xmlHttp.responseText   
      }   
      }
      var xmlHttp
      function showFood5(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="food4.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange4;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange4(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("food5").innerHTML=xmlHttp.responseText   
      }   
      }
      var xmlHttp
      function showFood6(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="food5.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange5;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange5(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("food6").innerHTML=xmlHttp.responseText   
      }   
      }
      var xmlHttp
      function calculate(){
      var val1 = document.getElementById("input1").value;
      var val2 = document.getElementById("input2").value;
      var val3 = document.getElementById("input3").value;
      var val4 = document.getElementById("input4").value;
      var val5 = document.getElementById("input5").value;
      var val6 = document.getElementById("input6").value;
      var a = document.getElementById('foodUnit1');
	  var a1 = a.options[a.selectedIndex].text;
	  var b = document.getElementById('foodUnit2');
	  var b1 = b.options[b.selectedIndex].text;
	  var c = document.getElementById('foodUnit3');
	  var c1 = c.options[c.selectedIndex].text;
	  var d = document.getElementById('foodUnit4');
	  var d1 = d.options[d.selectedIndex].text;
	  var e = document.getElementById('foodUnit5');
	  var e1 = e.options[e.selectedIndex].text;
	  var f = document.getElementById('foodUnit6');
	  var f1 = f.options[f.selectedIndex].text;
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      if (val1 == ""){
    	  val1 = 1;
      }
      if (val2 == ""){
    	  val2 = 1;
      }
      if (val3 == ""){
    	  val3 = 1;
      }
      if (val4 == ""){
    	  val4 = 1;
      }
      if (val5 == ""){
    	  val5 = 1;
      }
      if (val6 == ""){
    	  val6 = 1;
      }
      var url="calculate.jsp";
      url +="?count1="+val1+"&count2="+val2+"&count3="+val3+"&count4="+val4+"&count5="+val5+"&count6="+val6+"&value1="+a1+"&value2="+b1+"&value3="+c1+"&value4="+d1+"&value5="+e1+"&value6="+f1;
      xmlHttp.onreadystatechange = stateChange6;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange6(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("results").innerHTML=xmlHttp.responseText   
      }   
      }      
      
      var xmlHttp
      function saveRecord(){
    	  var save = document.getElementById("calories").innerHTML;
    	  if (typeof XMLHttpRequest != "undefined"){
    	      xmlHttp= new XMLHttpRequest();
    	      }
    	      else if (window.ActiveXObject){
    	      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
    	      }
    	      if (xmlHttp==null){
    	      alert("Browser does not support XMLHTTP Request")
    	      return;
    	      }
    	      var url="saverecord.jsp";
    	      url +="?calorie="+save;
    	      xmlHttp.onreadystatechange = stateChange7;
    	      xmlHttp.open("GET", url, true);
    	      xmlHttp.send(null);
    	      }

    	      function stateChange7(){   
    	      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
    	      document.getElementById("results").innerHTML=xmlHttp.responseText   
    	      }
      }
      
      function showUnit1()
  	{
  		var selectbox = document.getElementById('foodUnit1');
  		var selectedfoodId = selectbox.options[selectbox.selectedIndex].value;
  		document.getElementById("unitFood1").innerHTML = selectedfoodId;
  	}
      function showUnit2()
  	{
  		var selectbox = document.getElementById('foodUnit2');
  		var selectedfoodId = selectbox.options[selectbox.selectedIndex].value;
  		document.getElementById("unitFood2").innerHTML = selectedfoodId;
  	}
      function showUnit3()
  	{
  		var selectbox = document.getElementById('foodUnit3');
  		var selectedfoodId = selectbox.options[selectbox.selectedIndex].value;
  		document.getElementById("unitFood3").innerHTML = selectedfoodId;
  	}
      function showUnit4()
  	{
  		var selectbox = document.getElementById('foodUnit4');
  		var selectedfoodId = selectbox.options[selectbox.selectedIndex].value;
  		document.getElementById("unitFood4").innerHTML = selectedfoodId;
  	}
      function showUnit5()
    {
    	var selectbox = document.getElementById('foodUnit5');
    	var selectedfoodId = selectbox.options[selectbox.selectedIndex].value;
   		document.getElementById("unitFood5").innerHTML = selectedfoodId;
   	}
      function showUnit6()
   	{
   		var selectbox = document.getElementById('foodUnit6');
   		var selectedfoodId = selectbox.options[selectbox.selectedIndex].value;
   		document.getElementById("unitFood6").innerHTML = selectedfoodId;
    }