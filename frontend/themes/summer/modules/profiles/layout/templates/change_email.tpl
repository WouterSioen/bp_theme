{* Success *}
{option:updateEmailSuccess}
	<div class="message success"><p>{$msgUpdateEmailIsSuccess}</p></div>
{/option:updateEmailSuccess}

{* Error *}
{option:updateEmailHasFormError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:updateEmailHasFormError}

<section id="updateEmailForm" class="mod">
	<div class="bd">
		{form:updateEmail}
			<fieldset>
				<div class="alignBlocks">
					<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
						<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPassword}{$txtPasswordError}
					</p>
					<p class="last{option:txtEmailError} errorArea{/option:txtEmailError}">
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}{$txtEmailError}
					</p>
				</div>
				<p>
					<input class="inputSubmit" type="submit" value="{$lblSave|ucfirst}" />
				</p>
			</fieldset>
		{/form:updateEmail}
	</div>
</section>
