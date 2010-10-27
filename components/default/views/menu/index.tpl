<link href="/css/menus/css/dropdown/themes/default/helper.css" media="screen" rel="stylesheet" type="text/css" />

<link href="/css/menus/css/dropdown/dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/menus/css/dropdown/themes/default/default.css" media="screen" rel="stylesheet" type="text/css" />

<!--[if lt IE 7]>
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script type="text/javascript" src="js/jquery/jquery.dropdown.js"></script>
<![endif]-->

<!-- / END -->

<ul id="nav" class="dropdown dropdown-horizontal">
	{if $user.id != ""}
		<li><a href="/pool">Home</a></li>
	{else}
		<li><a href="/">Home</a></li>
	{/if}
	{if $user.id != ""}
		<li>{link controller="default" action="logout" text="Logout"}</li>
		<li>Logged in as: {$user.first_name} {$user.last_name}</li>
	{/if}
	{run_action controller="menu" action="admin"}
</ul>
