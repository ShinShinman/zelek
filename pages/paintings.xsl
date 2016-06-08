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
	<div class="bricks row small-up-1 medium-up-2 large-up-4">
		<xsl:apply-templates select="paintings/entry" />
	</div>
	<div class="row">
		<div class="small-up-1 medium-up-2 large-up-4">
			<p class="caption">200 × 150 cm acryl on canvas 2013–2016. © B.&thinsp;Zelek</p>
		</div>
	</div>
</xsl:template>

<xsl:template match="paintings/entry">
	<div class="column">
		<a href="{$root}/works/{title}"><img src="{$root}/image/thumbnail{image/@path}/{image/filename}" class="thumbnail" alt="Bronisław Zelek" /></a>
	</div>
</xsl:template>

</xsl:stylesheet>