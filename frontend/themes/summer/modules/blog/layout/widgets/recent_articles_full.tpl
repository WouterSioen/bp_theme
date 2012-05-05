{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
	<section class="mod">
		<h3>{$lblRecentArticles|ucfirst}</h3>
		<div class="bd">
			{iteration:widgetBlogRecentArticlesFull}
				<article class="mod article">
					<div class="inner">
						<header class="hd">
							<h4><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h4>
							<p class="info">
								{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}} {$lblOn} {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}
								- {option:!widgetBlogRecentArticlesFull.comments}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComment}">{$msgBlogNoComments|ucfirst}</a>{/option:!widgetBlogRecentArticlesFull.comments}
								{option:widgetBlogRecentArticlesFull.comments}
									{option:widgetBlogRecentArticlesFull.comments_multiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$widgetBlogRecentArticlesFull.comments_count}}</a>{/option:widgetBlogRecentArticlesFull.comments_multiple}
									{option:!widgetBlogRecentArticlesFull.comments_multiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!widgetBlogRecentArticlesFull.comments_multiple}
								{/option:widgetBlogRecentArticlesFull.comments}
							</p>
						</header>
						<div class="bd content">
							{option:!widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.text|truncate:'250'}{/option:!widgetBlogRecentArticlesFull.introduction}
							{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction|truncate:'250'}{/option:widgetBlogRecentArticlesFull.introduction}
						</div>
					</div>
				</article>
			{/iteration:widgetBlogRecentArticlesFull}
		</div>
		<p class="info">
			<a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a> - 
			<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
		</p>
	</section>
{/option:widgetBlogRecentArticlesFull}