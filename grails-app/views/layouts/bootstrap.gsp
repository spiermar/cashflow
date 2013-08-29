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

        <script src="${resource(dir: 'js', file: 'bootstrap-datepicker.js')}"></script>

		<style type="text/css">
			/* Sticky footer styles */
			html,
			body {
				height: 100%;
				/* The html and body elements cannot have any padding or margin. */
			}
			/* Wrapper for page content to push down footer */
			#wrap {
				min-height: 100%;
				height: auto !important;
				height: 100%;
				/* Negative indent footer by it's height */
				margin: 0 auto -60px;
			}
			/* Set the fixed height of the footer here */
			#push,
			#footer {
				height: 60px;
			}
			#footer {
				background-color: #f5f5f5;
			}
			/* Lastly, apply responsive CSS fixes as necessary */
			@media (max-width: 767px) {
				#footer {
					margin-left: -20px;
					margin-right: -20px;
					padding-left: 20px;
					padding-right: 20px;
				}
			}
			/* Custom page CSS */
			/* Not required for template or sticky footer method. */
			#wrap > .container {
				padding-top: 60px;
			}
			.container .credit {
				margin: 20px 0;
			}
			code {
				font-size: 80%;
			}
	    </style>
	</head>
	<body>
		<div id="wrap">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="navbar-inner">
					<div class="container">		
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
			<div class="container">
				<g:layoutBody/>
				<div id="push"></div>
			</div>
		</div>
		<div id="footer">
			<div class="container">
	        <p class="muted credit">Cashflow <g:meta name="app.version"/> | &copy; Martin Spier 2013 | Released under the Apache License, Version 2.0.</p>
			</div>
	    </div>
		<r:layoutResources />
	</body>
</html>
