{option:languages}
	<ul class="language">
		{iteration:languages}
			<li{option:languages.current} class="selected"{/option:languages.current}>
				<a href="{$languages.url}">{$languages.label|uppercase}</a>
			</li>
		{/iteration:languages}
	</ul>
{/option:languages}