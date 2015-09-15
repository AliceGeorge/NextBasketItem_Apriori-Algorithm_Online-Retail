<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Sign-Up/Login Form</title>

  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="css/normalize.css">

    <link rel="stylesheet" href="css/style_login.css">
    
    <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

  <script src="js/index.js"></script>

</head>

<body>

  <div class="form">

      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>

      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for RAK Online Shopping</h1>

          <form name="registration" action="AddUser.jsp">

          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" name="firstname" required autocomplete="off" />
            </div>

            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" name="lastname" required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email1" required autocomplete="off"/>
          </div>

          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" name="password1" required autocomplete="off"/>
          </div>
		  
		  <div class="field-wrap">
            <label>
              Zip Code<span class="req">*</span>
            </label>
            <input type="text" name="zip" name="zip" required autocomplete="off"/>
          </div>
		  

          <button type="submit" class="button button-block" onclick="return loginValidation()" />Get Started</button>

          </form>

        </div>

        <div id="login">   
          <h1>Welcome Back!</h1>

          <form action="LoginCheckNew.jsp" >

            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="on"/>
          </div>

          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>

          <p class="forgot"><a href="#">Forgot Password?</a></p>

          <button class="button button-block" />Log In</button>

          </form>

        </div>

      </div><!-- tab-content -->

</div> <!-- /form -->

<script>
function loginValidation()
{
alert("inside");
var zip = document.registration.zip;
alert(zip.value);
var numbers = /^[0-9]+$/;
if(zip.value.match(numbers))
{
alert("number");
if(/(^\d{5}$)|(^\d{5}-\d{4}$)/.test(zip.value))
{
alert("matches");
//window.location="AddUser.jsp";
return true;
}
else
alert('Not a valid Zip Code!');
return false;
}
else
alert('ZIP code must have numeric characters only');
return false;
}
</script>


</body>

</html>
