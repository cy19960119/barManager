<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <!-- Javascript -->
        <script type="text/javascript" src="resource/jquery/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="resource/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resource/jquery/jquery.backstretch.min.js"></script>
        <script type="text/javascript" src="resource/js/scripts.js"></script>
        
        <!-- CSS -->
        <link rel="stylesheet" href="resource/css/fonts.css">
        <link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resource/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resource/css/form-elements.css">
        <link rel="stylesheet" href="resource/css/style.css">

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="resource/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resource/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resource/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resource/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="resource/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
  <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>后台</strong> Login Form</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="password">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        
</body>
</html>