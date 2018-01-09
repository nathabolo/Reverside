<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    
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
  font-size: 50px;
  letter-spacing: 3px;
  color: #fff;
  font-family: Oswald, sans-serif;
  text-align: center;
}

p  button{

font-size: 25px;

}

h1 marquee{

margin-top: 5px;

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

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

    </c:if>
    
    <nav class="navbar navbar-inverse" style="background-color:white;">
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
                        <Button class="btn-link" type="image" data-toggle="modal" data-target="#myModal">
                            <span class="glyphicon glyphicon-log-in"><a onclick="document.forms['logoutForm'].submit()">Logout</a></span>
                        </Button>
                    </li>
                </ul>

            </div>

        </div>
    </nav>
   
    
     <h1 align="center" style="color:#2196F3"><marquee direction="down" width="1500" height="300" behavior="alternate" style="border:transparent">
  <marquee behavior="alternate">
   Welcome to Reverside ${pageContext.request.userPrincipal.name}
  </marquee>
</marquee></h1>
   
   <div class="button-fluid" style="padding:40px" align="center">
   
   <p style="align:center">
        <!-- Trigger the modal with a button -->
        <Button class="btn-link" type="submit" data-toggle="modal" data-target="#myModal2">
        <span class="glyphicon glyphicon-log-in" style="color:#2196F3">Fill in your timesheet here!!</span>
        </Button></p>
  
   <p style="align:center">
        <!-- Trigger the modal with a button -->
        <Button class="btn-link" type="submit" data-toggle="modal" data-target="#myModal">
        <span class="glyphicon glyphicon-log-in" style="color:#2196F3">Fill in your leave form here!!</span>
        </Button></p>
   
   </div>
   
   <!-- Time sheet form Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                    <button type="button" class="send" data-dismiss="modal">&times;</button>
                    <h4 align="center" style="color:#2196F3"><span class="glyphicon glyphicon-lock"></span>Leave Form</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <form role="form" action="mailto:nathabolo@gmail.com" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" id="empNumber" placeholder="Enter your employee number" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required>
                        </div>
                         <div class="form-group">
                            <input type="text" class="form-control" id="surname" placeholder="Enter surname" required>
                        </div>
                         <div class="form-group">
                            <input type="text" class="form-control" id="startDay" placeholder="Start day" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="endDay" placeholder="End day" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="numOfDays" placeholder="Number of days" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="reason" placeholder="Enter reason why you are taking leave" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="department" placeholder="Enter your department" required>
                            </div>
                            </form>
                        </div>
                        </div>
                        
                        <div class="checkbox" style="color:white">
                        <p>SELECT LEAVE TYPE</p>
                            <p><label><input type="checkbox" value="" >Annual leave</label>
                               <label><input type="checkbox" value="" >Sick leave</label>
                               <label><input type="checkbox" value="" >Study leave</label>
                               <label><input type="checkbox" value="" >Maternity leave</label>
                               <label><input type="checkbox" value="" >Family Responsibility leave</label></p>
                        </div>
                        <button type="submit" class="btn btn-success btn-block"><span
                                class="glyphicon glyphicon-on" style="color:#2196F3"></span> Submit leave form
                        </button>
                        </div>
                    </div>
                    
                    
                       <!-- Leave form Modal -->
    <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                    <button type="button" class="send" data-dismiss="modal">&times;</button>
                    <h4 align="center" style="color:#2196F3"><span class="glyphicon glyphicon-lock"></span>Timesheet</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <form role="form">
                        <div class="form-group">
                            <input type="text" class="form-control" id="empNumber" placeholder="Enter your employee number" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required>
                        </div>
                         <div class="form-group">
                            <input type="text" class="form-control" id="surname" placeholder="Enter surname" required>
                        </div>
                         <div class="form-group">
                            <input type="text" class="form-control" id="email" placeholder="Enter email address" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="Descrption" placeholder="Enter description" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="clientName" placeholder="Enter cleint name" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="startDate" placeholder="Enter start date" required>
                            </div>
                             <div class="form-group">
                            <input type="text" class="form-control" id="totalHours" placeholder="Enter total hours worked" required>
                            </div>
                        </div>
                        </div>
                        
                        <div class="checkbox" style="color:white">
                        <p>CHOOSE NORMAL, OVERTIME OR HALF DAY</p>
                            <p><label><input type="checkbox" value="" >Normal week day</label>
                               <label><input type="checkbox" value="" >Overtime</label>
                               <label><input type="checkbox" value="" >Half day</label></p>
                        </div>
                        <button type="submit" class="btn btn-success btn-block"><span
                                class="glyphicon glyphicon-on"></span> Submit time sheet
                        </button></form>
                        </div>
                    </div>
                </div>
              
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
