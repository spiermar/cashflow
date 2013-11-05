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

        <link type="text/css" href="${resource(dir: 'css', file: 'datepicker.css')}" rel="stylesheet" />
        <link type="text/css" href="${resource(dir: 'css', file: 'stickyfooter.css')}" rel="stylesheet" />

        <script src="${resource(dir: 'js', file: 'bootstrap-datepicker.js')}"></script>
	</head>
	<body>
		<div id="wrap">
			<nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<g:link uri="/" class="navbar-brand"><span class="glyphicon glyphicon-euro"></span></g:link>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
						    <li><g:link uri="/"><i class="glyphicon glyphicon-home"></i>  Home</g:link></li>
							<li><g:link controller="transaction" action="list"><i class="glyphicon glyphicon-list"></i> Transactions</g:link></li>
							<li><g:link controller="trade" action="list"><i class="glyphicon glyphicon-list"></i> Trades</g:link></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><g:link uri="/settings"><i class="glyphicon glyphicon-wrench"></i> Settings</g:link></li>
						</ul>
					</div>

				</div>
			</nav>	
			<div class="container">
				<g:layoutBody/>
				<div id="push"></div>
			</div>
		</div>
		<div id="footer">
			<div class="container">
                <p class="text-muted credit">Cashflow <g:meta name="app.version"/> | &copy; Martin Spier 2013 | Released under the Apache License, Version 2.0.</p>
			</div>
	    </div>
		<r:layoutResources />
	</body>
</html>
