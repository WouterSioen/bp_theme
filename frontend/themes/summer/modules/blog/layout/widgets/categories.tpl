{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
	<section class="mod">

		<h3>{$lblCategories|ucfirst}</h3>

		<div class="bd">
			<ul>
				{iteration:widgetBlogCategories}
					<li>
						<a href="{$widgetBlogCategories.url}">
							{$widgetBlogCategories.label}&nbsp;({$widgetBlogCategories.total})
						</a>
					</li>
				{/iteration:widgetBlogCategories}
			</ul>
		</div>
	</section>
{/option:widgetBlogCategories}