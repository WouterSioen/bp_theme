{* Success *}
{option:updatePasswordSuccess}
	<div class="message success"><p>{$msgUpdatePasswordIsSuccess}</p></div>
{/option:updatePasswordSuccess}

{* Error *}
{option:updatePasswordHasFormError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:updatePasswordHasFormError}

<section id="updatePasswordForm" class="mod">
	<div class="bd">
		{form:updatePassword}
			<fieldset>
				<div class="alignBlocks">
					<p{option:txtOldPasswordError} class="errorArea"{/option:txtOldPasswordError}>
						<label for="oldPassword">{$lblOldPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtOldPassword}{$txtOldPasswordError}
					</p>
					<p class="{option:txtNewPasswordError} errorArea{/option:txtNewPasswordError}">
						<label for="newPassword">{$lblNewPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtNewPassword}{$txtNewPasswordError}
					</p>
				</div>
				<p>
					<label for="showPassword">{$chkShowPassword} {$lblShowPassword|ucfirst}</label>
				</p>
				<p>
					<input class="inputSubmit" type="submit" value="{$lblSave|ucfirst}" />
				</p>
			</fieldset>
		{/form:updatePassword}
	</div>
</section>