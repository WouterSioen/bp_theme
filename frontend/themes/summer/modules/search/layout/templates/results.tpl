{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

{option:searchTerm}
	<section id="searchResults" class="mod">
		{option:!searchResults}
			<div class="bd content">
				<p>{$msgSearchNoItems}</p>
			</div>
		{/option:!searchResults}
		{option:searchResults}
			{iteration:searchResults}
				<div class="bd">
					<section class="mod">
						<h3>
							<a href="{$searchResults.full_url}" title="{$searchResults.title}">
								{$searchResults.title}
							</a>
						</h3>
						<div class="bd content">
							{option:!searchResults.introduction}{$searchResults.text|truncate:200}{/option:!searchResults.introduction}
							{option:searchResults.introduction}{$searchResults.introduction}{/option:searchResults.introduction}
						</div>
					</section>
				</div>
			{/iteration:searchResults}
		{/option:searchResults}
	</section>
	{include:core/layout/templates/pagination.tpl}
{/option:searchTerm}