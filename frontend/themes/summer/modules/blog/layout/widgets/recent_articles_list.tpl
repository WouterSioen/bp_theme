{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
	<section class="mod">
		<h3>{$lblRecentArticles|ucfirst}</h3>
		<ul>
			{iteration:widgetBlogRecentArticlesList}
				<li><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
			{/iteration:widgetBlogRecentArticlesList}
		</ul>
		<p>
			<a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a>
			<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
		</p>
	</section>
{/option:widgetBlogRecentArticlesList}