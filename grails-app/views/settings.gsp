<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<r:require modules="bootstrap"/>
		<title>Settings | Cashflow</title>
	</head>
	<body>
	
	<div class="page-header">
		<h1>Settings</h1>
	</div>
	<div class="row">
		<div class="col-md-3">
			<h2>Accounts</h2>
			<p>Accounts are used to group transactions. They should correlate directly with real institution accounts, like Bank or Broker accounts.</p>
			<p><g:link controller="account" action="list" class="btn btn-default">View details &raquo;</g:link></p>
		</div>
		<div class="col-md-3">
			<h2>Categories</h2>
			<p>Categories are used to group transactions of the same type. The main purpose of categories is to facilitate transaction analysis. Categories can be organized in multiple levels.</p>
			<p><g:link controller="category" action="list" class="btn btn-default">View details &raquo;</g:link></p>
		</div>
		<div class="col-md-3">
			<h2>Tags</h2>
			<p>Tags are used to group transactions with the same context. Transactions can have multiple tags. Tags are also used to facilitate transaction analysis.</p>
			<p><g:link controller="tag" action="list" class="btn btn-default">View details &raquo;</g:link></p>
		</div>
	</div>
    <div class="row">
        <div class="col-md-3">
            <h2>Brokers</h2>
            <p>Brokers are used within trades to identify the broker that executed each trade.</p>
            <p><g:link controller="broker" action="list" class="btn btn-default">View details &raquo;</g:link></p>
        </div>
        <div class="col-md-3">
            <h2>Asset Types</h2>
            <p>Asset Types are used to sort assets. Different Asset Types have different taxes and fees that need to be calculated.</p>
            <p><g:link controller="assetType" action="list" class="btn btn-default">View details &raquo;</g:link></p>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</html>
