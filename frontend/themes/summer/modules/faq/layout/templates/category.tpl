{*
	variables that are available:
	- {$questions}: contains all questions inside this category
*}

<section id="faqCategory" class="mod">
	<div class="inner">
		<h3>{$category.title}</h3>
		<div class="bd">
			{option:questions}
				<section class="mod">
					<div class="bd content">
						<ul>
							{iteration:questions}
								<li><a href="{$questions.full_url}">{$questions.question}</a></li>
							{/iteration:questions}
						</ul>
					</div>
				</section>
			{/option:questions}

			{option:!questions}
				<p>{$msgNoQuestionsInCategory|ucfirst}</p>
			{/option:!questions}

			<p><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>
		</div>
	</div>
</section>