<?xml version="1.0" encoding="UTF-8" ?>
<!-- RSS generated by PHPBoost on {DATE_RFC822} -->

<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title><![CDATA[{TITLE}]]></title>
		<atom:link href="{U_LINK}" rel="self" type="application/rss+xml"/>
		<link>{HOST}</link>
		<description><![CDATA[{DESC}]]></description>
		<copyright>(C) 2005-{THIS_YEAR} PHPBoost</copyright>
		<language>{LANG}</language>
		<generator>PHPBoost</generator>

		# START item #
		<item>
			<title><![CDATA[{item.TITLE}]]></title>
			<link>{item.U_LINK}</link>
			<guid>{item.U_GUID}</guid>
			<description><![CDATA[{item.DESC}]]></description>
			<pubDate>{item.DATE_RFC822}</pubDate>
			# IF item.C_ENCLOSURE #
			<enclosure url="{item.ENCLOSURE_URL}" length="{item.ENCLOSURE_LENGHT}" type="{item.ENCLOSURE_TYPE}" />
			# ENDIF #
		</item>
		# END item #
	</channel>
</rss>