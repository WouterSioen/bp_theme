{include:core/layout/templates/head.tpl}
<body class="{$LANGUAGE} default" itemscope itemtype="http://schema.org/WebPage">
	<div id="container">
		<header id="header">

			{* Logo *}
			<div id="logo">
				<h1><a href="/">{$siteTitle}</a></h1>
			</div>

			<div id="navWrapper">
				<div id="navToggler">
					<a href="#"></a>
				</div>

				{* Navigation *}
				<nav id="navigation" class="clearfix">
					{$var|getnavigation:'page':0:1}
					{include:core/layout/templates/languages.tpl}
				</nav>
			</div>

			<div id="skip">
				<p>
					<a href="#main">{$lblSkipToContent|ucfirst}</a>
				</p>
			</div>
		</header>

		<div id="contentWrapper" class="clearfix">
			{option:positionMain}
				<div id="main">
					{* Main position *}
					<div id="innerMain">
						{iteration:positionMain}
							{option:positionMain.blockIsHTML}
								<section class="mod">
									<div class="content">
										{$positionMain.blockContent}
									</div>
								</section>
							{/option:positionMain.blockIsHTML}
							{option:!positionMain.blockIsHTML}
								{$positionMain.blockContent}
							{/option:!positionMain.blockIsHTML}
						{/iteration:positionMain}
					</div>
				</div>
			{/option:positionMain}
			{option:!positionMain}
				<div class="push" id="main"></div>
			{/option:!positionMain}

			{option:positionRight}
			<div id="sidebar">
				{* Right position *}
				{iteration:positionRight}
					{option:positionRight.blockIsHTML}
						<section class="mod">
							<div class="content">
								{$positionRight.blockContent}
							</div>
						</section>
					{/option:positionRight.blockIsHTML}
					{option:!positionRight.blockIsHTML}
						{$positionRight.blockContent}
					{/option:!positionRight.blockIsHTML}
				{/iteration:positionRight}
			</div>
			{/option:positionRight}
			{option:!positionRight}
				<div class="side push"></div>
			{/option:!positionRight}

		</div>

		<noscript>
			<div class="message notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</noscript>

		{include:core/layout/templates/footer.tpl}

	</div>
	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/summer.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>