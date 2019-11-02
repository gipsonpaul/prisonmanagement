<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prison Management</title>

<link href="../web/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="../web/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- js -->
<script src="../web/js/jquery-1.11.1.min.js"></script>

<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Marcellus'
	rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../web/js/move-top.js"></script>
<script type="text/javascript" src="../web/js/easing.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

</head>
<body bgcolor="gainsboro">

	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default"> <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="logo">
					<a class="navbar-brand" href="#">ADMIN <span>Prison
							Management</span></a>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse nav-wil"
				id="bs-example-navbar-collapse-1">
				<nav class="link-effect-12" id="link-effect-12">
				<ul class="nav navbar-nav">
					<li><a href="DataHome.jsp"><span>Home</span></a></li>
				</ul>
				</nav>
			</div>
			</nav>
		</div>
	</div>


<!-- </body>
</html> -->