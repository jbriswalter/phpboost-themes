
<article id="news-cat" style="order: {NEWS_CAT_POSITION}; -webkit-order: {NEWS_CAT_POSITION}; -ms-flex-order: {NEWS_CAT_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.news.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
		</h2>
		<span class="actions">
			<a href="{PATH_TO_ROOT}/news">
				${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}
			</a>
		</span>
	</header>
	<div class="content">
		# IF C_NO_NEWS_ITEM #
		<div class="center">
			${LangLoader::get_message('no.news.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
		<div class="module-home">
			<div class="home-cat">
				<a itemprop="about" href="{item.U_CATEGORY}">{item.CATEGORY_NAME}</a>
			</div>

			<a href="{item.U_LINK}" class="picture-link">
				<div class="home-picture" # IF item.C_PICTURE #style="background-image: url({item.U_PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>

			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o" aria-hidden="true"></i> {item.DATE} </span>
			</div>

			<h3>
				<a href="{item.U_LINK}">{item.NAME}</a>
			</h3>
			<span class="actions">
				# IF item.C_EDIT #
					<a href="{item.U_EDIT}" aria-label="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit" aria-hidden="true"></i></a>
				# ENDIF #
				# IF item.C_DELETE #
					<a href="{item.U_DELETE}" aria-label="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete" aria-hidden="true"></i></a>
				# ENDIF #
			</span>
			<div class="content">
				<div itemprop="text"># IF item.C_DESCRIPTION #{item.DESCRIPTION}# ELSE #{item.CONTENTS}# ENDIF ## IF item.C_READ_MORE #... # ENDIF #</div>
			</div>

		</div>
	# END item #
	</div>
	<footer></footer>
</article>
