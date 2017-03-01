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
		<div class="large-5 columns">
			<xsl:apply-templates select="news/entry" />
			<article>
				<h1></h1>
				<p style="margin-top: 35px"><strong>Junya Watanabe<br/>
				COMME DES GARCONS<br/>
				2017 Sprig Summer Mens Collection</strong></p>

				<p><strong>Junya Watanabe’s Tatto-ed Gangsters<br/>
				There’s a tweaky little alt-punk thing nibbling at the edges of fashion right now. So maybe this was 
				Watanabe’s Mudd Club collection.</strong></p>

				<p>PARIS, France — What’s it like to be Junya Watanabe? He’s a cultural historian, trawling through social sub-currents to pluck out a single gleaming fish of inspiration. Picture him alighting on tattoo-ed gangsters — not the big boss, just the henchmen — who were the characters he cast for his Spring/Summer 2017&nbsp;collection.</p>

				<p>For the first time ever, Watanabe was even ready to be a little more forthcoming about his source material: Black Cat, White Cat, a 1998 award-winner from perennal critic’s favourite Emir Kusturica. If he was hoping the humour of that movie would infuse his collection, he was aiming too high, but there was certainly a fast-paced feistiness to the show.</p>

				<p>A lot of that had to do with the soundtrack, packed with shouty tracks from Plastic People of the Universe, who were Vaclav Havel’s favourite band back in&nbsp;the day of Czechoslovakia’s Velvet Revolution. Elaborating on the Eastern European theme, Watanabe used posters from Polish artist Bronislaw Zelek as&nbsp;the main graphic element, printed or woven, in the collection. And theghost of&nbsp;Poland’s James Dean, Zbigniew Cybulski, hovered over the leather jackets. (Some of them were pleather, but not enough to make a statement, at&nbsp;which point you have to wonder, why fake it?).</p>

				<p>That whole aesthetic was a touchstone for the Manhattan downtowners who made the Mudd Club into a cultural crucible in the early 1980s. There’s a tweaky little alt-punk thing nibbling at the edges of fashion right now. So maybe this was Watanabe’s Mudd Club collection.</p>
			</article>
		</div>
		<div class="large-7 columns">
			<p><img src="{$workspace}/images/img-comme-des-garcons.png" alt="img-comme-des-garcons.png" /></p>
		</div>
	</div>
</xsl:template>

<xsl:template match="news/entry">
	<article>
		<h1><xsl:value-of select="title/p" /></h1>
	</article>
</xsl:template>

</xsl:stylesheet>