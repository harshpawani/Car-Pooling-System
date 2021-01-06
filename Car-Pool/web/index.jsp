<%@ page import="com.javapapers.java.mail.JavaMail"%>
<%@ page import="javax.mail.MessagingException;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	String message = null;
	String status = null;
	if (request.getParameter("submit") != null) {
		JavaMail javaEmail = new JavaMail();
		javaEmail.setMailServerProperties();
		String emailSubject = "Contact Form using Java JSP GMail";
		String emailBody = "";
		if (request.getParameter("name") != null) {
			emailBody = "Sender Name: " + request.getParameter("name")
					+ "<br>";
		}
		if (request.getParameter("email") != null) {
			emailBody = emailBody + "Sender Email: "
					+ request.getParameter("email") + "<br>";
		}
		if (request.getParameter("phone") != null) {
			emailBody = emailBody + "Sender Phone: "
					+ request.getParameter("phone") + "<br>";
		}
		if (request.getParameter("message") != null) {
			emailBody = emailBody + "Message: " + request.getParameter("message")
					+ "<br>";
		}
		javaEmail.createEmailMessage(emailSubject, emailBody);
		try {
			javaEmail.sendEmail();
			status = "success";
			message = "Email sent Successfully!";
		} catch (Exception e) {
			status = "error";
			message = "Error in Sending Email!";
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Car-Pool</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link import url="https://fonts.googleapis.com/css?family=Open+Sans">
  <style>
      body {
    overflow-x: hidden;
    font-family: "Roboto Slab","Helvetica Neue",Helvetica,Arial,sans-serif;
}

.text-muted {
    color: #777;
}

.text-primary {
    color: #1ee2e7;
}

p {
    font-size: 14px;
    line-height: 1.75;
}

p.large {
    font-size: 16px;
}

a,
a:hover,
a:focus,
a:active,
a.active {
    outline: 0;
}

a {
    color: #1ee2e7;
}

a:hover,
a:focus,
a:active,
a.active {
    color: #17d0d5;
}

h1,
h2,
h3,
h4,
h5,
h6 {
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
}

.img-centered {
    margin: 0 auto;
}

.bg-light-gray {
    background-color: #f7f7f7;
}

.bg-darkest-gray {
    background-color: #222;
}

.btn-primary {
    border-color: #1ee2e7;
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
    color: #fff;
    background-color: #1ee2e7;
}

.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
    border-color: #17d0d5;
    color: #fff;
    background-color: #17d0d5;
}

.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
    background-image: none;
}

.btn-primary.disabled,
.btn-primary[disabled],
fieldset[disabled] .btn-primary,
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled:active,
.btn-primary[disabled]:active,
fieldset[disabled] .btn-primary:active,
.btn-primary.disabled.active,
.btn-primary[disabled].active,
fieldset[disabled] .btn-primary.active {
    border-color: #1ee2e7;
    background-color: #1ee2e7;
}

.btn-primary .badge {
    color: #1ee2e7;
    background-color: #fff;
}

.btn-xl {
    padding: 20px 40px;
    border-color: #1ee2e7;
    border-radius: 3px;
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 18px;
    font-weight: 700;
    color: #fff;
    background-color: #1ee2e7;
}

.btn-xl:hover,
.btn-xl:focus,
.btn-xl:active,
.btn-xl.active,
.open .dropdown-toggle.btn-xl {
    border-color: #17d0d5;
    color: #fff;
    background-color: #17d0d5;
}

.btn-xl:active,
.btn-xl.active,
.open .dropdown-toggle.btn-xl {
    background-image: none;
}

.btn-xl.disabled,
.btn-xl[disabled],
fieldset[disabled] .btn-xl,
.btn-xl.disabled:hover,
.btn-xl[disabled]:hover,
fieldset[disabled] .btn-xl:hover,
.btn-xl.disabled:focus,
.btn-xl[disabled]:focus,
fieldset[disabled] .btn-xl:focus,
.btn-xl.disabled:active,
.btn-xl[disabled]:active,
fieldset[disabled] .btn-xl:active,
.btn-xl.disabled.active,
.btn-xl[disabled].active,
fieldset[disabled] .btn-xl.active {
    border-color: #1ee2e7;
    background-color: #1ee2e7;
}

.btn-xl .badge {
    color: #fed136;
    background-color: #fff;
}

.navbar-inverse{
	background: rgba(0,0,0,.5);
	border-color:transparent;
}

.navbar-inverse .navbar-brand{
	color: #fff;
	font-family: arial;
	font-size: 30px;
	margin-top: 5px;
	margin-right: 35px; 
}

#myNavbar .navbar-nav li a{
	color: #fff;
	font-size: 18px;
	font-family: arial;
	margin-top: 5px;
	

}

#myNavbar .navbar-nav .active{
   	font-family: monospace;
   color: #00ffe1;
      font-size: 18px;
     font-weight: bold;
}

.dropdown{
	position: relative;
}
#myNavbar .dropdown-menu li a{
	color:  #000;
	font-size: 16px;
}
#myNavbar .dropdown-menu{
	display: none;
	position: absolute;	
    width: 100%;
}

#myNavbar .dropdown:hover .dropdown-menu{
	display: block;
	color: #000;

}

header {
    text-align: center;
    color: #fff;
    background-attachment: scroll;
    background-image: url(https://unsplash.imgix.net/uploads%2F14115408840644deb16b0%2F2dc933e3?q=75&fm=jpg&auto=format&s=7f43646e4d26049c6c39890afb2e5ced);
    background-position: center center;
    background-repeat: none;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;
}

header .intro-text {
    padding-top: 100px;
    padding-bottom: 50px;
}

header .intro-text .intro-lead-in {
    margin-bottom: 25px;
    font-family: "Droid Serif","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 22px;
    font-style: italic;
    line-height: 22px;
}

header .intro-text .intro-heading {
    margin-bottom: 25px;
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 50px;
    font-weight: 700;
    line-height: 50px;
}

@media(min-width:768px) {
    header .intro-text {
        padding-top: 300px;
        padding-bottom: 200px;
    }

    header .intro-text .intro-lead-in {
        margin-bottom: 25px;
        font-family: "Droid Serif","Helvetica Neue",Helvetica,Arial,sans-serif;
        font-size: 40px;
        font-style: italic;
        line-height: 40px;
    }

    header .intro-text .intro-heading {
        margin-bottom: 50px;
        text-transform: uppercase;
        font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
        font-size: 75px;
        font-weight: 700;
        line-height: 75px;
    }
}

section {
    padding: 100px 0;
}

section h2.section-heading {
    margin-top: 0;
    margin-bottom: 15px;
    font-size: 40px;
}

section h3.section-subheading {
    margin-bottom: 75px;
    text-transform: none;
    font-family: "Droid Serif","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 16px;
    font-style: italic;
    font-weight: 400;
}

@media(min-width:768px) {
    section {
        padding: 150px 0;
    }
}

.service-heading {
    margin: 15px 0;
    text-transform: none;
}

#portfolio .portfolio-item {
    right: 0;
    margin: 0 0 15px;
}

#portfolio .portfolio-item .portfolio-link {
    display: block;
    position: relative;
    margin: 0 auto;
    max-width: 400px;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover {
    position: absolute;
    width: 100%;
    height: 100%;
    opacity: 0;
    background: #1ee2e7;
    -webkit-transition: all ease .5s;
    -moz-transition: all ease .5s;
    transition: all ease .5s;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover:hover {
    opacity: 1;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content {
    position: absolute;
    top: 50%;
    width: 100%;
    height: 20px;
    margin-top: -12px;
    text-align: center;
    font-size: 20px;
    color: #fff;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content i {
    margin-top: -12px;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content h3,
#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content h4 {
    margin: 0;
}

#portfolio .portfolio-item .portfolio-caption {
    margin: 0 auto;
    padding: 25px;
    max-width: 400px;
    text-align: center;
    background-color: #fff;
}

#portfolio .portfolio-item .portfolio-caption h4 {
    margin: 0;
    text-transform: none;
}

#portfolio .portfolio-item .portfolio-caption p {
    margin: 0;
    font-family: "Droid Serif","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 16px;
    font-style: italic;
}

#portfolio * {
    z-index: 2;
}

@media(min-width:767px) {
    #portfolio .portfolio-item {
        margin: 0 0 30px;
    }
}

.timeline {
    position: relative;
    padding: 0;
    list-style: none;
}

.timeline:before {
    content: "";
    position: absolute;
    top: 0;
    bottom: 0;
    left: 40px;
    width: 2px;
    margin-left: -1.5px;
    background-color: #f1f1f1;
}

.timeline>li {
    position: relative;
    margin-bottom: 50px;
    min-height: 50px;
}

.timeline>li:before,
.timeline>li:after {
    content: " ";
    display: table;
}

.timeline>li:after {
    clear: both;
}

.timeline>li .timeline-panel {
    float: right;
    position: relative;
    width: 100%;
    padding: 0 20px 0 100px;
    text-align: left;
}

.timeline>li .timeline-panel:before {
    right: auto;
    left: -15px;
    border-right-width: 15px;
    border-left-width: 0;
}

.timeline>li .timeline-panel:after {
    right: auto;
    left: -14px;
    border-right-width: 14px;
    border-left-width: 0;
}

.timeline>li .timeline-image {
    z-index: 100;
    position: absolute;
    left: 0;
    width: 80px;
    height: 80px;
    margin-left: 0;
    border: 7px solid #f1f1f1;
    border-radius: 100%;
    text-align: center;
    color: #fff;
    background-color: #1ee2e7;
}

.timeline>li .timeline-image h4 {
    margin-top: 12px;
    font-size: 10px;
    line-height: 14px;
}

.timeline>li.timeline-inverted>.timeline-panel {
    float: right;
    padding: 0 20px 0 100px;
    text-align: left;
}

.timeline>li.timeline-inverted>.timeline-panel:before {
    right: auto;
    left: -15px;
    border-right-width: 15px;
    border-left-width: 0;
}

.timeline>li.timeline-inverted>.timeline-panel:after {
    right: auto;
    left: -14px;
    border-right-width: 14px;
    border-left-width: 0;
}

.timeline>li:last-child {
    margin-bottom: 0;
}

.timeline .timeline-heading h4 {
    margin-top: 0;
    color: inherit;
}

.timeline .timeline-heading h4.subheading {
    text-transform: none;
}

.timeline .timeline-body>p,
.timeline .timeline-body>ul {
    margin-bottom: 0;
}

@media(min-width:768px) {
    .timeline:before {
        left: 50%;
    }

    .timeline>li {
        margin-bottom: 100px;
        min-height: 100px;
    }

    .timeline>li .timeline-panel {
        float: left;
        width: 41%;
        padding: 0 20px 20px 30px;
        text-align: right;
    }

    .timeline>li .timeline-image {
        left: 50%;
        width: 100px;
        height: 100px;
        margin-left: -50px;
    }

    .timeline>li .timeline-image h4 {
        margin-top: 16px;
        font-size: 13px;
        line-height: 18px;
    }

    .timeline>li.timeline-inverted>.timeline-panel {
        float: right;
        padding: 0 30px 20px 20px;
        text-align: left;
    }
}

@media(min-width:992px) {
    .timeline>li {
        min-height: 150px;
    }

    .timeline>li .timeline-panel {
        padding: 0 20px 20px;
    }

    .timeline>li .timeline-image {
        width: 150px;
        height: 150px;
        margin-left: -75px;
    }

    .timeline>li .timeline-image h4 {
        margin-top: 30px;
        font-size: 18px;
        line-height: 26px;
    }

    .timeline>li.timeline-inverted>.timeline-panel {
        padding: 0 20px 20px;
    }
}

@media(min-width:1200px) {
    .timeline>li {
        min-height: 170px;
    }

    .timeline>li .timeline-panel {
        padding: 0 20px 20px 100px;
    }

    .timeline>li .timeline-image {
        width: 170px;
        height: 170px;
        margin-left: -85px;
    }

    .timeline>li .timeline-image h4 {
        margin-top: 40px;
    }

    .timeline>li.timeline-inverted>.timeline-panel {
        padding: 0 100px 20px 20px;
    }
}

section#contact {
    background-color: #222;
    background-image: url(https://unsplash.imgix.net/44/C3EWdWzT8imxs0fKeKoC_blackforrest.JPG?q=75&fm=jpg&auto=format&s=986aaa92169d4e97975fa66ebd60bafd);
    background-position: center;
    background-repeat: no-repeat;
}

section#contact .section-heading {
    color: #fff;
}

section#contact .form-group {
    margin-bottom: 25px;
}

section#contact .form-group input,
section#contact .form-group textarea {
    padding: 20px;
}

section#contact .form-group input.form-control {
    height: auto;
}

section#contact .form-group textarea.form-control {
    height: 236px;
}

section#contact .form-control:focus {
    border-color: #1ee2e7;
    box-shadow: none;
}

section#contact::-webkit-input-placeholder {
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
    color: #bbb;
}

section#contact:-moz-placeholder {
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
    color: #bbb;
}

section#contact::-moz-placeholder {
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
    color: #bbb;
}

section#contact:-ms-input-placeholder {
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
    color: #bbb;
}

section#contact .text-danger {
    color: #e74c3c;
}
  </style>
  <script language="javascript">
    $(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});
</script>
<script language=javascript">
    alert("Result: " + result + "\n");
</script>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid" style="box-shadow: 0 15px 25px rgba(0,0,0,.6);">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" style="color: cyan;" href="index.jsp">CAR-POOL</a>
    </div>
      <center> <div style="float:right;" class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
          <li><a href="#services" class="page-scroll">Login/Sign Up</a></li>
          <li><a href="#about" class="page-scroll">About us</a></li>
        <li><a href="#contact" class="page-scroll">Contact us</a></li>        
      </ul>
          </div></center>
  </div>
</nav>

  
  <!-- Header -->
  <header>
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Hello Everyone</div>
        <div class="intro-heading">Best Carpooling is in Town</div>
        <a href="#services" class="page-scroll btn btn-xl">Start Now</a>
      </div>
    </div>
  </header>

  <!-- Services Section -->
  <section id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading" style="color:black;">Login/Sign Up</h2>
          <h3 class="section-subheading text-muted"></h3>
        </div>
      </div>
      <div class="row text-center">
          <div class="col-lg-6">
          <span class="fa-stack fa-4x">
            <i class="fa fa-circle fa-stack-2x text-primary"></i>
            <i class="glyphicon glyphicon-tint"></i>
          </span>
          <h4 class="service-heading">Employee</h4>
          <a class="text-muted" href="employee.jsp">Employee Login</a>
        </div>
        <div class="col-lg-6">
          <span class="fa-stack fa-4x">
            <i class="fa fa-circle fa-stack-2x text-primary"></i>
            <i class="glyphicon glyphicon-tree-conifer"></i>
          </span>
          <h4 class="service-heading" href="admin.jsp">Admin</h4>
          <a class="text-muted" href="admin.jsp">Administrator Login</a>
        </div>
          
          
      </div>
    </div>
  </section>

  <!-- About Section -->
  <section id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading" style="color:black;">About</h2>
          <h3 class="section-subheading text-muted">The True Car-Pooling </h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="img-circle img-responsive" src="img/about/1.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Our Humble Beginnings</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">We started as a small town carpooling</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">An Agency is Born</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Now we are a part of a big family of many people. </p>
                </div>
              </div>
            </li>
            <li>
              <div class="timeline-image">
                <img class="img-circle img-responsive" src="img/about/3.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Transition to Full Service</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">All Big MNC's use our services</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Be Part Of Our Story!</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Join Us Today!</p>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Clients Aside -->

  <section id="contact">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">Contact Us</h2>
          <h3 class="section-subheading text-muted" style="color:white;">To Get the Best Car-Pool</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
            <form id="frmContact" name="frmContact" action="" method="POST" novalidate="novalidate">
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Your Name " name="name" id="name" required="" data-validation-required-message="Please enter your name.">
                      <p class="help-block text-danger"></p>
                    </div>
                    <div class="form-group">
                      <input type="email" class="form-control" placeholder="Your Email " name="email" id="email" required="" data-validation-required-message="Please enter your email address.">
                      <p class="help-block text-danger"></p>
                    </div>
                    <div class="form-group">
                      <input type="Phone" class="form-control" placeholder="Your Phone No. " name="phone" id="email" required="" data-validation-required-message="Please enter your email address.">
                      <p class="help-block text-danger"></p>
                    </div>
                  </div>
                  <div class="col-md-6" style="float:right;">
                    <div class="form-group">
                      <textarea class="form-control" placeholder="Your Message " name="message" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
                      <p class="help-block text-danger"></p>
                    </div>
                  </div>
                  <div class="clearfix"></div>
                  <div class="col-lg-12 text-center">
                    <div id="success"></div>
                    <button type="submit" id="send-message" name="submit" value="Send Message" class="btn btn-xl">Send Message</button>
                  </div>
                    <%
                       if (null != message) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Mail Sent Successfully!!');");
                    out.println("location='index.jsp';");
                    out.println("</script>"); 
                         }
                    %>	
            </form>
                </div>
        </div>
      </div>
    </div>
  </section>

        <!-- jQuery Version 1.11.0 -->
        <script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/classie.js"></script>
        <script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/cbpAnimatedHeader.js"></script>

        <!-- Contact Form JavaScript -->
        <script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/jqBootstrapValidation.js"></script>
        <script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/contact_me.js"></script>

        <span style="height: 20px; width: 40px; min-height: 20px; min-width: 40px; position: absolute; opacity: 0.85; z-index: 8675309; display: none; cursor: pointer; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAUCAYAAAD/Rn+7AAADU0lEQVR42s2WXUhTYRjHz0VEVPRFUGmtVEaFUZFhHxBhsotCU5JwBWEf1EWEEVHQx4UfFWYkFa2biPJiXbUta33OXFtuUXMzJ4bK3Nqay7m5NeZq6h/tPQ+xU20zugjOxR/+7/O8539+5znnwMtNTExwJtMb3L/fiLv3botCSmUjeCaejTOb39AiFothfHxcFIrHY8RksZjBsckJcOIRMfFsHD/SsbExUYpnI8DR0dGUGjSb0byhEJp5Uqg5CTSzc2CQleJbMEj9/ywBcGRkJEk9DQqouEVQT1sK444yWI9UonmTjGqauVLEIlHa9x8lAMbj8SSpp0rwKGMVvg8P46vbg0C7na8z8JsMcgHe7jlEa+edRhiLy8n/TUMfu6EvLElk+U0WtGwrTrdfAGQf5J8iiK4LVzDU28t8JtMSocf8E+l68myaNFXm/6rXslLK7ay5TOunuRvZWpJuvwAYjUaTpOIWoquuAZ219RTaxKYp9BbjycoN5FvL9qH9TBX5rvoGdJythvXYSTxdtRnWylO/ZdqrLsGwszzhWQ593z2KlAwCYCQSSZJ6ehZ0W7bD9VBLgN0NCqr3qR7R2rBrL3pu3Sb/7nDlz2uy6cG0OXk0GTbZXzNp8trsPAQdTj6frlWzN2DcXZGKQQAMh8NJ6rpyHe+PnkCr/CAFdZyvpfpjuvkifLF9wIt1Wwlo0OHie1RvWrKa93RjzfzliTzPKz3ltB0/Tevmwp14wGUgHAzSOoUEwFAolFaaBSuhnslPRkJexUJtZ6v5HtUeLswl33n1BgEY5fvhs9sJ3FAiT+QYyyvoAQJuD0KBAFRTJNAuz5/s3gJgMBhMJwrVFRThM5tY5zUF/A4X1f2fvQTRLCuBreoim0YmAbqNJryvPEXeeq46kaNdkQ/1HCncbJKPs9ZSv2VHGfWsZ2hfkhKAfr8/pdxWKx4wwD69PmVfNSOL+lr2w+gYqHpWDtXt1xQ8AMlWU0e1lqLd/APRHoP8AJqWrQG9gYxcPMsvSJUvAA4MDKTUJ7MZLaVy8v+qT21tcDx/OemePr0RTkNrur4A6PP5xCgBsL+/X4wiQDpuuVxOeL1eMYmYeDY6sOp0z+B0OuHxeEQhxkJMFosJiSO/UinOI/8Pc+l7KKArAT8AAAAASUVORK5CYII=);"></span>
</body>
</html>
