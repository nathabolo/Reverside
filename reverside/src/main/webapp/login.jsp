<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log into your account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    
    <style type="text/css">
    
    body {
  margin: 0;
  padding: 0;
/*  Background fallback in case of IE8 & down, or in case video doens't load, such as with slower connections  */
  background: #333;
  background-attachment: fixed;
  background-size: cover;
}

/* The only rule that matters */
#video-background {
/*  making the video fullscreen  */
  position: fixed;
  right: 0; 
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  width: auto; 
  height: auto;
  z-index: -100;
}

/* These just style the content */
article {
/*  just a fancy border  */
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  border: 10px solid rgba(255, 255, 255, 0.5);
  margin: 10px;
}

h1 {
  position: absolute;
  top: 60%;
  width: 100%;
  font-size: 36px;
  letter-spacing: 3px;
  color: #fff;
  font-family: Oswald, sans-serif;
  text-align: center;
}

h1 span {
  font-family: sans-serif;
  letter-spacing: 0;
  font-weight: 300;
  font-size: 16px;
  line-height: 24px;
}

h1 span a {
  color: #fff;
}

.logo {
position: top;

}
    
 </style>   
    
</head>

<body>
<div class="container-fluid">

<!--  Video is muted & autoplays, placed after major DOM elements for performance & has an image fallback  -->
<video autoplay loop id="video-background" muted plays-inline>
  <source src="https://player.vimeo.com/external/158148793.hd.mp4?s=8e8741dbee251d5c35a759718d4b0976fbf38b6f&profile_id=119&oauth2_token_id=57447761" type="video/mp4">
</video>


 <nav class="navbar navbar-inverse" style="background-color:white">
        <div class="navbar-header" style="margin-top: 15px">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
           <a class="logo"><img class="img-responsive" src="/image.jpg" alt="Reverside" title="Logo"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar" style="margin-top: 15px">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Clients</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">News</a></li>
                <li><a href="#">More</a></li>
            </ul>
            <div class="navbar-header navbar-right" style="margin-top: 15px">
                <ul class="nav navbar-nav">
                    <li>
                        <!-- Trigger the modal with a button -->
                        <%--<button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>--%>
                        <Button class="btn-link" type="image" data-toggle="modal" data-target="#loginModal">
                            <span class="glyphicon glyphicon-log-in"><a href="${contextPath}/registration">Singup</a></span>
                        </Button>
                    </li>
                </ul>

            </div>

        </div>
    </nav>
   
</div>
<!-- Reset Password Modal -->
<div class="container">
</div>

<!--modal-->
<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" color:red;opacity:0.9;>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h1 class="text-center">What's My Password?</h1>
            </div>
            <div class="modal-body">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">

                                <p>Reset password here!!!</p>
                                <div class="panel-body">
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control input-lg" placeholder="E-mail Address" name="email" type="email">
                                        </div>
                                        <input class="btn btn-lg btn-primary btn-block" value="Send My Password" type="submit">
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="col-md-12">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading" align="center" style="color:#2196F3">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
             <input name="email" type="text" class="form-control" placeholder="Enter email"
                   autofocus="true"/>       
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block"  type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>

    </form>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
