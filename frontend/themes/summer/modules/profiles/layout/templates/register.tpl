{* Success *}
{option:registerIsSuccess}
	<div class="message success"><p>{$msgRegisterIsSuccess}</p></div>
{/option:registerIsSuccess}

{* Error *}
{option:registerHasFormError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:registerHasFormError}

{option:!registerHideForm}
	{form:register}
		<section id="registerForm" class="mod">
			<div class="bd">
				<fieldset>
					<div class="alignBlocks">
						<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
							<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtEmail}{$txtEmailError}
						</p>
						<p class="last{option:txtPasswordError} errorArea{/option:txtPasswordError}">
							<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtPassword}{$txtPasswordError}
						</p>
					</div>
					<p>
						<label for="showPassword">{$chkShowPassword} {$lblShowPassword|ucfirst} </label>
					</p>
					<p>
						<input class="inputSubmit" type="submit" value="{$lblRegister|ucfirst}" />
					</p>
				</fieldset>
			</div>
		</section>
	{/form:register}
{/option:!registerHideForm}