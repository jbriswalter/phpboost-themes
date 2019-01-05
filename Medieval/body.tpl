# INCLUDE MAINTAIN #

<script src="{PATH_TO_ROOT}/templates/{THEME}/js/jssor.slider-26.1.5.min.js" ></script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/jssor-fontions.js" ></script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/modernizr.custom.js"></script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/jquery.dlmenu.js"></script>
<script>
	$(function() {
		$( '#dl-menu' ).dlmenu();
	});
</script>

<div id="dl-prim">
	<div id="dl-menu" class="dl-menuwrapper">
		<button class="dl-trigger">Open Menu</button> <span class="title-nav">&nbsp; Menu</span>
		<ul class="dl-menu">
		<li><a href="{PATH_TO_ROOT}/news/">Actualités</a></li>
		<li><a href="{PATH_TO_ROOT}/forum/">Forum</a> </li>
		<li><a href="{PATH_TO_ROOT}/faq/">FAQ</a></li>
			<li>
				<a href="#">Menu 1</a>
				<ul class="dl-submenu">
					<li>
						<a href="#">Sous-menu 1</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
							<li><a href="#">Lien 5</a></li>
							<li><a href="#">Lien 6</a></li>
						</ul>
					</li>
					<li>
						<a href="#">Sous-menu 2</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
						</ul>
					</li>
					<li>
						<a href="#">Sous-menu 3</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">Menu 2</a>
				<ul class="dl-submenu">
					<li><a href="#">Lien 1</a></li>
					<li><a href="#">Lien 2</a></li>
					<li><a href="#">Lien 3</a></li>
					<li><a href="#">Lien 4</a></li>
				</ul>
			</li>
			<li>
				<a href="#">Menu 3</a>
				<ul class="dl-submenu">
					<li>
						<a href="#">Sous-menu 1</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
						</ul>
					</li>
					<li><a href="#">Sous-menu 2</a>
						<ul class="dl-submenu">
							<li>
								<a href="#">Sous-sous-menu 1</a>
								<ul class="dl-submenu">
									<li><a href="#">Lien 1</a></li>
									<li><a href="#">Lien 2</a></li>
									<li><a href="#">Lien 3</a></li>
									<li><a href="#">Lien 4</a></li>
									<li><a href="#">Lien 5</a></li>
									<li><a href="#">Lien 6</a></li>
								</ul>
							</li>
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
						</ul>
					</li>
					<li><a href="#">Lien 1</a></li>
					<li><a href="#">Lien 2</a></li>
					<li><a href="#">Lien 3</a></li>
				</ul>
			</li>
			<li>
				<a href="#">Menu 4</a>
				<ul class="dl-submenu">
					<li><a href="#">Lien 1</a></li>
					<li><a href="#">Lien 2</a></li>
					<li><a href="#">Lien 3</a></li>
					<li>
						<a href="#">Sous-menu 1</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div> <!-- /dl-menuwrapper -->
</div>

	
<header id="header">	
	<div id="top-header">
	
		<div id="top-header-content">
		# IF C_MENUS_HEADER_CONTENT #
			# START menus_header #
			{menus_header.MENU}
			# END menus_header #
		# ENDIF #
		</div>
	</div>
	
	<div id="sub-header">
		<div id="sub-header-content">
		# IF C_MENUS_SUB_HEADER_CONTENT #
			# START menus_sub_header #
			{menus_sub_header.MENU}
			# END menus_sub_header #
		# ENDIF #
		</div>
		<div class="spacer"></div>
	</div>
	
	<div class="spacer"></div>
	
</header>

<div id="global">
	# IF C_MENUS_LEFT_CONTENT #
	<aside id="menu-left">
		# START menus_left #
		{menus_left.MENU}
		# END menus_left #
	</aside>
	# ENDIF #

	<div id="main" class="# IF C_MENUS_LEFT_CONTENT #main-with-left# ENDIF ## IF C_MENUS_RIGHT_CONTENT # main-with-right# ENDIF #" role="main">
		# IF C_MENUS_TOPCENTRAL_CONTENT #
		<div id="top-content">
			# START menus_top_central #
			{menus_top_central.MENU}
			# END menus_top_central #
		</div>
		<div class="spacer"></div>
		# ENDIF #

		<div id="main-content" itemprop="mainContentOfPage">
			# INCLUDE ACTIONS_MENU #
			<nav id="breadcrumb" itemprop="breadcrumb">
				<ol>
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="{START_PAGE}" itemprop="url">
							<span itemprop="title">{L_INDEX}</span>
						</a>
					</li>
					# START link_bread_crumb #
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
						<a href="{link_bread_crumb.URL}" itemprop="url">
							<span itemprop="title">{link_bread_crumb.TITLE}</span>
						</a>
					</li>
					# END link_bread_crumb #
				</ol>
			</nav>
			# INCLUDE KERNEL_MESSAGE #
			{CONTENT}
		</div>

		# IF C_MENUS_BOTTOM_CENTRAL_CONTENT #
		<div id="bottom-content">
			# START menus_bottom_central #
			{menus_bottom_central.MENU}
			# END menus_bottom_central #
		</div>
		# ENDIF #
	</div>

	# IF C_MENUS_RIGHT_CONTENT #
	<aside id="menu-right">
		# START menus_right #
		{menus_right.MENU}
		# END menus_right #
	</aside>
	# ENDIF #

	<div class="spacer"></div>
</div>

<footer id="footer">
<div class="Icon-footer"></div>
	# IF C_MENUS_TOP_FOOTER_CONTENT #
	<div id="top-footer">
		# START menus_top_footer #
		{menus_top_footer.MENU}
		# END menus_top_footer #
		<div class="spacer"></div>
	</div>
	# ENDIF #

	# IF C_MENUS_FOOTER_CONTENT #
	<div class="footer-content">
		# START menus_footer #
		{menus_footer.MENU}
		# END menus_footer #
	</div>
	# ENDIF #


	<div class="footer-infos">
		<span class="cms">
			{L_POWERED_BY} <a href="http://www.phpboost.com" title={L_PHPBOOST_LINK}">PHPBoost</a> {L_PHPBOOST_RIGHT}
		</span>
		# IF C_DISPLAY_BENCH #
		<span class="requete">
		<span class="footer-infos-separator"> | </span>{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
		</span>
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
		<span class="author">
		<span class="footer-infos-separator"> | </span>{L_THEME} {L_THEME_NAME} {L_BY}
			<a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
		</span>
		# ENDIF #
		# IF C_VISIT_COUNTER #
		<span class="footer-infos-separator"> | </span><span class="visit-counter">{L_VISIT} : {VISIT_COUNTER_TOTAL}&nbsp;-&nbsp;{L_TODAY} : {VISIT_COUNTER_DAY}</span>
		# ENDIF #
	</div>
</footer>

<span id="scroll-to-top" class="scroll-to" aria-label="${LangLoader::get_message('scroll-to.top', 'user-common')}"><i class="fa fa-chevron-up" aria-hidden="true" title="${LangLoader::get_message('scroll-to.top', 'user-common')}"></i></span>