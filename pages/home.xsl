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

	<xsl:call-template name="msg" />
	<!--
	<div class="bricks row small-up-1 medium-up-2 large-up-4">
		<xsl:apply-templates select="paintings/entry" />
	</div>
-->
</xsl:template>

<xsl:template name="msg">
		<div class="msg-container row">
			<div class="msg large-8 large-offset-2 end">
				<h5>27.09.1935 - 28.02.2018<br />
					Nastasow - Sibirien - Zakopane - Warschau - Wien - Ybbsitz</h5>

				<p>Der Maler, Grafiker und umfassende Kunstschaffende Bronislaw Zelek ist am Mittwoch, 28. Februar 2018, völlig unerwartet im 83. Lebensjahr verstorben. Den aus Polen gebürtigen Künstler führte eine Lebenspartnerschaft zu Hertha Grimm nach Ybbsitz, wo Zelek auch ein Atelier einrichtete und künstlerisch wirkte. Bronislaw Zelek war in jungen Jahren schon ein anerkannter Grafiker und Arbeiten wie das Filmplakat zum legendären Hitchcock-Film "Die Vögel" fanden internationale Anerkennung. Nach akademischen Lehrtätigkeiten in Polen ließen ihn die politischen Verhältnisse jenseits des Eisernen Vorhangs seine Heimat verlassen und Zelek wurde zum Kosmopoliten, Weltenbummler und zuletzt war Wien eine dauerhafte Station in seinem bewegten Leben. Erst im reiferen Alter vor sieben Jahren fand er letztlich in Ybbsitz so etwas wie seinen Heimathafen, aber auch hier begann er sofort, seine künstlerischen Spuren zu hinterlassen. Eine große Ausstellung in der Stadtgalerie im Vorjahr war sicher ein Höhepunkt dieser Schaffensperiode. Nun legte "Broni", wie ihn seine Freunde stets nannten, den feinen und für sein künstlerisches Schaffen so wesentlichen Haarpinsel aus der Hand und schloss seine sonst so regen und aufmerksamen Augen für immer. Lieber Broni, ruhe in Frieden!</p>

				<p><em>Fritz Stummer, Der Ybbstaler</em></p>

				<p>We are very sad to inform you that Bronisław Zelek passed away on 28th of February 2018. One of the most creative graphic designer of the golden era of Polish School of Posters, a type designer (New Zelek) and a very active painter in last few years. His positive and vibrant personality has a strong influence on me. Rest in Peace My Friend and Hero. It was an honour to meet you.</p>

				<p>Chciałem podzielić się z Wami smutną wiadomością. Wczoraj opuścił nas Bronisław Zelek. Był jedną z najkreatywniejszych postaci złotej ery Polskiej Szkoły Plakatu i jednym z niewielu w tamtym okresie projektantem krojów pism (m.in New Zelek). W ostatnim czasie aktywnie malował. Dystans do świata i swojej pracy, autoironia oraz niewyczerpana potrzeba tworzenia, które posiadał na zawsze zmieniły moje spojrzenie na świat. Dziękuję Bronek.</p>

				<p><em>MM, threedotstype <a href="https://www.facebook.com/threedotstype/" target="_blank">https://www.facebook.com/threedotstype/</a></em></p>
				<button class="close-btn float-right">Close</button>
			</div>
	</div>
</xsl:template>

<xsl:template match="paintings/entry">
	<div class="column">
		<a href="{$root}/works/{title}"><img src="{$workspace}{image/@path}/{image/filename}" class="thumbnail" alt="Bronisław Zelek" /></a>
	</div>
</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		$(function() {
		var msg = $('.msg-container');
			$('.close-btn').click(function(e){
				e.preventDefault();
				msg.fadeOut('slow');
			})
		})
	</script>
</xsl:template>

</xsl:stylesheet>