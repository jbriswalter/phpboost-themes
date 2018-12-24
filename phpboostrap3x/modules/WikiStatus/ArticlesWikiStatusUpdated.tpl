<div class="well well-sm">
{@statut_legend}
</div>
<div class="table-responsive">
	<table class="table">
		<thead>
		<tr>
			<th>{@title_date_and_time}</th>
			<th>Article</th>
			<th>Statut</th>
			<th>{@title_author}</th>
		</tr>
		</thead>
		<tbody>
			# START articles_wiki_items #
			<tr>
				<td>{articles_wiki_items.DATE}</td>
				<td><a href="/wiki/{articles_wiki_items.U_ARTICLE}" title="{articles_wiki_items.TITLE}">{articles_wiki_items.TITLE}</a></td>
				<td><span class="{articles_wiki_items.STATUS_CLASS}">{articles_wiki_items.STATUS}</span></td>
				<td># IF articles_wiki_items.C_AUTHOR_EXIST #<a href="{articles_wiki_items.U_AUTHOR_PROFILE}" class="{articles_wiki_items.USER_LEVEL_CLASS}" # IF articles_wiki_items.C_USER_GROUP_COLOR # style="color:{articles_wiki_items.USER_GROUP_COLOR}"# ENDIF #>{articles_wiki_items.PSEUDO}</a># ELSE #{articles_wiki_items.AUTHOR_IP}# ENDIF #</td>
			</tr>
			# END articles_wiki_items #
		</tbody>
	</table>
</div>