<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cx="http://www.classtyle.com/cx">
	<xsl:template match="cx:element">
		<xsl:choose>
			<xsl:when test="@type = 'ullist'">
				<ul class="t-head">
					<li class="li1">获得途径</li>
					<li class="li2">准备名称</li>
					<li class="li3">品质</li>
					<li class="li3">部位</li>
					<li class="backno">几率</li>
				</ul>
				<xsl:for-each select="item">
				<ul>
					<li class="li4"><xsl:value-of select="from"/></li>
					<li class="li5"><xsl:value-of select="equipment"/></li>
					<li class="li6"><xsl:value-of select="quality"/></li>
					<li class="li6"><xsl:value-of select="type"/></li>
					<li class="li6 borno"><xsl:value-of select="chance"/></li>
				</ul>
				</xsl:for-each>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>