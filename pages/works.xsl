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
]>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="row">
		<div class="large-12 columns">
			<xsl:apply-templates select="works/entry[title = $title]" />
		</div>
	</div>
</xsl:template>

<xsl:template match="works/entry">
	<xsl:param name="category" select="category/item/@handle" />
	<img class="work" src="{$root}/image/work{image/@path}/{image/filename}" alt="Bronisław Zelek – {title}" />

	<xsl:choose>
		<xsl:when test="count(../entry[category/item/@handle = $category]) &gt; 1">
			
				<xsl:choose>
					<xsl:when test="./preceding-sibling::entry[category/item/@handle = $category][1]">
						<div class="prev butt">
						<a href="{$root}/works/{./preceding-sibling::entry[category/item/@handle = $category][1]/title/@handle}">> </a>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div class="prev butt">
						<a href="{$root}/works/{./following-sibling::entry[category/item/@handle = $category][last()]/title/@handle}">> </a>
						</div>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="./following-sibling::entry[category/item/@handle = $category][1]">
						<div class="next butt">
						<a href="{$root}/works/{./following-sibling::entry[category/item/@handle = $category][1]/title/@handle}">></a>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div class="next butt">
						<a href="{$root}/works/{./preceding-sibling::entry[category/item/@handle = $category][last()]/title/@handle}">></a>
						</div>
					</xsl:otherwise>
				</xsl:choose>
			
		</xsl:when>
	</xsl:choose>

</xsl:template>

</xsl:stylesheet>