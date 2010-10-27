{if $user.administrator == true}
	<li class="dir">{link controller="seasonmanager" action="index" text="Admin Tools"}
		<ul>
			<li>{link controller="default" action="index" text="ACL"}</li>
			<li>{link controller="usermanager" action="index" text="User Manager"}</li>
		</ul>
	</li>
{/if}
