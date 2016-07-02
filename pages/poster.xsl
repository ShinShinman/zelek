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
		<div class="small-up-2 medium-up-4 large-up-5">
			<p class="caption">Print offset 60 × 85 and 70 × 100 cm 1963–1969. © B.&thinsp;Zelek</p>
		</div>
	</div>
	<div class="bricks row small-up-2 medium-up-4 large-up-5">
		<xsl:apply-templates select="poster/entry" />
	</div>
</xsl:template>

<xsl:template match="poster/entry">
	<div class="column">
		<a href="{$root}/works/{title}"><img src="{$root}/image/thumbnail{image/@path}/{image/filename}" class="thumbnail" alt="Bronisław Zelek" /></a>
	</div>
</xsl:template>

</xsl:stylesheet>