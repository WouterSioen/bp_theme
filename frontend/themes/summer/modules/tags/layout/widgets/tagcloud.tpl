{*
	variables that are available:
	- {$widgetTagsTagCloud}: contains an array with the most popular tags
*}

{option:widgetTagsTagCloud}
	<section id="tagCloudWidget" class="mod">
		<h3>{$lblTags|ucfirst}</h3>
		<div class="bd">
			<ul>
				{iteration:widgetTagsTagCloud}
					<li>
						<a href="{$widgetTagsTagCloud.url}">
							{$widgetTagsTagCloud.name}&nbsp;({$widgetTagsTagCloud.number})
						</a>
					</li>
				{/iteration:widgetTagsTagCloud}
			</ul>
		</div>
	</section>
{/option:widgetTagsTagCloud}