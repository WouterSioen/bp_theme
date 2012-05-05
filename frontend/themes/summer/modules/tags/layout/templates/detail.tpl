{*
	Variables that are available:
	- {$tagsModules}: contains all tags, grouped per module
*}

<section id="tagsDetail" class="mod">
	<h2>{$lblItemsWithTag|sprintf:{$tag.name}|ucfirst}</h2>
	<div class="bd">
		{option:tagsModules}
			{iteration:tagsModules}
				<section class="mod">
					<h3>{$tagsModules.label}</h3>
					<div class="bd content">
						<ul>
							{iteration:tagsModules.items}
								<li><a href="{$tagsModules.items.full_url}">{$tagsModules.items.title}</a></li>
							{/iteration:tagsModules.items}
						</ul>
					</div>
				</section>
			{/iteration:tagsModules}
		{/option:tagsModules}
		<p><a href="{$var|geturlforblock:'tags'}" title="{$lblToTagsOverview|ucfirst}">{$lblToTagsOverview|ucfirst}</a></p>
		
	</div>
</section>