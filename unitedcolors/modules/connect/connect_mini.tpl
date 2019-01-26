# IF C_USER_NOTCONNECTED #
	<script>
	<!--
	function check_connect()
	{
		if( document.getElementById('login').value == "" )
		{
			alert("{L_REQUIRE_PSEUDO}");
			return false;
		}
		if( document.getElementById('password').value == "" )
		{
			alert("{L_REQUIRE_PASSWORD}");
			return false;
		}
	}
	-->
	</script>
# ENDIF #


# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #
		<div id="connect-menu" class="module-mini-container not-connected">
			<div class="module-mini-top">
				<div class="sub-title">{@connection}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label>{@login}<br /><input type="text" id="login" name="login" aria-label="{@login}" placeholder="{@login}"></label>
					<label>{@password}<br /><input type="password" id="password" name="password" aria-label="{@password}" placeholder="{@password}"></label>
					<label>{@autoconnect} <input checked="checked" type="checkbox" name="autoconnect" aria-label="{@autoconnect}"></label>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				<div class="connect-register">
					# IF C_USER_REGISTER #
						<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket" aria-hidden="true"></i> {@register}</a>
						<br />
						# START external_auth #
							<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" title="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
						# END external_auth #
					# ENDIF #
					<br />
					<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle" aria-hidden="true"></i> ${LangLoader::get_message('forget-password', 'user-common')}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="module-mini-container connected">
			<div class="module-mini-top">
				<div class="sub-title">{L_PRIVATE_PROFIL}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
					<li>
						<i class="fa fa-profil" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {@dashboard}</a>
					</li>
					<li>
						<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #" aria-hidden="true"></i>
						<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<i class="fa fa-legal" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
					</li>
					# ENDIF #
					<li>
						<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}</a>
					</li>
					<li>
						<i class="fa fa-sign-out" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
					</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
	<div id="connect-menu" class="not-connected">
		<div class="horizontal-fieldset">
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu', 'active');return false;" aria-label="{@connection}"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>{@connection}</span></a>
			<div class="connect-content">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
					<input type="text" id="login" name="login" aria-label="{@login}" placeholder="{@login}" class="connect-form">
					<input type="password" id="password" name="password" class="connect-form" aria-label="{@password}" placeholder="{@password}">
					<input checked="checked" type="checkbox" name="autoconnect" aria-label="{@autoconnect}">
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				# IF C_USER_REGISTER #
					<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
						<button type="submit" name="register" value="true" class="submit">{@register}</button>
						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# START external_auth #
						<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
					# END external_auth #
				# ENDIF #
				<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}">${LangLoader::get_message('forget-password', 'user-common')}</a>
			</div>
		</div>
	</div>
	# ELSE #
	<div id="connect-menu" class="connected">
		<div class="horizontal-fieldset">
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu', 'active');return false;" aria-label="{@dashboard}"><i class="fa fa-bars # IF NUMBER_TOTAL_ALERT # blink alert# ENDIF #" aria-hidden="true"></i> <span>{L_PRIVATE_PROFIL}</span></a>
			<ul class="connect-content">
				<li>
					<i class="fa fa-profil" aria-hidden="true"></i>
					<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {@dashboard}</a>
				</li>
				<li>
					<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #" aria-hidden="true"></i>
					<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
				</li>
				# IF C_ADMIN_AUTH #
				<li>
					<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #" aria-hidden="true"></i>
					<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #</a>
				</li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li>
					<i class="fa fa-legal" aria-hidden="true"></i>
					<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
				</li>
				# ENDIF #
				<li>
					<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #" aria-hidden="true"></i>
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #</a>
				</li>
				<li>
					<i class="fa fa-sign-out" aria-hidden="true"></i>
					<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
				</li>
			</ul>
		</div>
	</div>
	# ENDIF #
# ENDIF #
