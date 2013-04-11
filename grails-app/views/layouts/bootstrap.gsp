<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<meta name="description" content="">
    	<meta name="author" content="">
		<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<g:layoutHead/>
		<r:layoutResources />
		<style type="text/css">
			body {
				padding-top: 60px;
				padding-bottom: 40px;
			}
		</style>
	</head>
	<body>
	
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">		
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>				
					<g:link uri="/" class="brand">Cashflow</g:link>
					<div class="nav-collapse">
						<ul class="nav">							
							<li><g:link uri="/"><i class="icon-home icon-white"></i>  Home</g:link></li>
							<li><g:link controller="transaction" action="list"><i class="icon-list icon-white"></i> Transactions</g:link></li>
							<li><g:link controller="trade" action="list"><i class="icon-list icon-white"></i> Trades</g:link></li>
						</ul>
						<ul class="nav pull-right">
							<li><g:link uri="/settings"><i class="icon-wrench icon-white"></i> Settings</g:link></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		
		<div class="container-fluid">
			<g:layoutBody/>
			
			<hr>

			<footer>
				<p></p>
				<p>Cashflow <g:meta name="app.version"/> | &copy; Martin Spier 2013 | Released under the Apache License, Version 2.0.</p>
			</footer>
		</div>
		
		<r:layoutResources />
	</body>
</html>
