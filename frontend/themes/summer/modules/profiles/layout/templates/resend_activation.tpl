{* Success *}
{option:resendActivationSuccess}
	<div class="message success"><p>{$msgResendActivationIsSuccess}</p></div>
{/option:resendActivationSuccess}

{* Error *}
{option:resendActivationHasError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:resendActivationHasError}

{option:!resendActivationHideForm}
	<section id="resendActivationForm" class="mod">
		<div class="bd">
			{form:resendActivation}
				<fieldset>
					<div class="alignBlocks">
						<p {option:txtEmailError} class="errorArea"{/option:txtEmailError}>
							<label for="email">{$lblEmail|ucfirst} <abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtEmail} {$txtEmailError}
						</p>
					</div>
					<p>
						<input class="inputSubmit" type="submit" value="{$lblSave|ucfirst}" />
					</p>
				</fieldset>
			{/form:resendActivation}
		</div>
	</section>
{/option:!resendActivationHideForm}