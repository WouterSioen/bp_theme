{*
	variables that are available:
	- {$widgetTagsRelated}: contains an array with all related items
*}

{option:widgetTagsRelated}
	<section id="tagRelatedWidget" class="mod">
		<h3>{$lblRelated|ucfirst}</h3>
		<div class="bd">
			<ul>
				{iteration:widgetTagsRelated}
					<li>
						<a href="{$widgetTagsRelated.full_url}" title="{$widgetTagsRelated.title}">
							{$widgetTagsRelated.title}
						</a>
					</li>
				{/iteration:widgetTagsRelated}
			</ul>
		</div>
	</section>
{/option:widgetTagsRelated}