<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#x00A0;">
	<!ENTITY copy   "&#169;">
	<!ENTITY ndash "&#8211;">
	<!ENTITY thinsp "&#8201;">
	<!ENTITY amp "&#038;">
	<!ENTITY hellip "&#8230;">
	<!ENTITY bull "&#8226;">
	<!ENTITY lsaqua "&#8249;">
	<!ENTITY rsaqua "&#8250;">
	<!ENTITY larr "&#8592;">
	<!ENTITY rarr "&#8594;">
	<!ENTITY lsaquo "&#8249;">
	<!ENTITY rsaquo "&#8250;">
	<!ENTITY percent "&#37;">
	<!ENTITY gt "&#37;">
	<!ENTITY hellip "&#x2026;">
]>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">

	<xsl:choose>
		<xsl:when test="$news-id">
			<xsl:apply-templates select="news/entry[@id = $news-id]" mode="single-news" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="news/entry" />
		</xsl:otherwise>
	</xsl:choose>

	<xsl:variable name="prev-page">
		<xsl:choose>
			<xsl:when test="//news/pagination/@current-page = 1">
				<xsl:value-of select="news/pagination/@total-pages" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="//news/pagination/@current-page - 1" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	
	<xsl:variable name="next-page">
		<xsl:choose>
			<xsl:when test="//news/pagination/@current-page = news/pagination/@total-pages">
				<xsl:text>1</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="//news/pagination/@current-page + 1" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

<!--
	<div class="row">
		<div class="large-5 columns">
			<xsl:apply-templates select="news/entry" />
			<div class="prev butt"><a href="{$root}/{$current-page}/{$prev-page}/">> </a></div>
			<div class="next butt"><a href="{$root}/{$current-page}/{$next-page}/">> </a></div>
		</div>
		<div class="large-7 columns">
			<xsl:apply-templates select="news/entry/image" />
		</div>
	</div>
	<div class="row">
		<div class="large-12 columns">
			
		</div>
	</div>
	-->

</xsl:template>

<xsl:template match="news/entry">
	<a href="{$root}/news/{@id}/">
		<article class="news-brick">
			<div class="row">
				<div class="large-5 columns">
					<header>
							<h1><xsl:copy-of select="title/p/node()" /></h1>
							<h2><xsl:copy-of select="lead/p/node()" /></h2>
						</header>
						<p>
							<xsl:copy-of select="substring(content/p/node(), 1, 500)" />&hellip;
						</p>
					</div>
					<aside>
						<div class="large-5 columns end">
							<xsl:apply-templates select="image" />
						</div>
					</aside>
				</div>
			</article>
		</a>
</xsl:template>

<xsl:template match="news/entry" mode="single-news">

	<xsl:variable name="next-news">
		<xsl:choose>
			<xsl:when test="following-sibling::entry">
				<xsl:value-of select="following-sibling::entry/@id" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="../entry[1]/@id" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<xsl:variable name="prev-news">
		<xsl:choose>
			<xsl:when test="preceding-sibling::entry">
				<xsl:value-of select="preceding-sibling::entry[1]/@id" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="../entry[last()]/@id" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<div class="row">
			<div class="large-5 columns">
				<article>
					<header>
						<h1><xsl:copy-of select="title/p/node()" /></h1>
						<h2><xsl:copy-of select="lead/p/node()" /></h2>
					</header>
					<p>
						<xsl:copy-of select="content/node()" />
					</p>
				</article>
				<div class="prev butt"><a href="{$root}/{$current-page}/{$prev-news}/">> </a></div>
        <div class="next butt"><a href="{$root}/{$current-page}/{$next-news}/">> </a></div>
			</div>
			<div class="large-7 columns">
				<xsl:apply-templates select="image" />
			</div>
	</div>
</xsl:template>

<xsl:template match="news/entry/image">
	<p><img src="{$workspace}{@path}/{filename}" alt="{filename}" /></p>
</xsl:template>

</xsl:stylesheet>