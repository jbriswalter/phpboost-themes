
<article id="last_web" style="order: {WEB_POSITION}; -webkit-order: {WEB_POSITION}; -ms-flex-order: {WEB_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.web', 'common', 'HomeLanding')}
			<span class="actions">
				<a href="{PATH_TO_ROOT}/web" title="${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}">
					${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}
				</a>
			</span>
		</h2>
	</header>
	<div class="content">
		# IF C_NO_WEB_ITEM #
		<div class="center">
			${LangLoader::get_message('no.web.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
		<div class="str3 str_wrap">
			# START web_items #
					<a href="{web_items.U_LINK}" title="{web_items.NAME}">
						# IF web_items.C_HAS_PARTNER_PICTURE #
							<img class="item-picture" src="{web_items.U_PARTNER_PICTURE}" alt="{web_items.NAME}" itemprop="image" />
						# ELSE #
							{web_items.NAME}
						# ENDIF #
					</a>
			# END web_items #
		</div>
	</div>          
	<footer></footer>
</article>

<script src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeLanding/js/jquery.liMarquee.js"></script>
<script>
jQuery(window).load(function() {         
		
	jQuery('.str3').liMarquee({
		direction: 'left',	
		loop:-1,			
		scrolldelay: 0,		
		scrollamount:80,	
		circular: true,		
		drag: true			
	});
	
})
</script> 