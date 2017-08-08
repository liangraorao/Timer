<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cx="http://www.classtyle.com/cx">
	<xsl:template match="cx:element">
		<xsl:choose>
			<xsl:when test="@type = 'fubenInfo'">
				<xsl:if test="name">
					<dl>
						<dt>副本名称：</dt>
						<dd><xsl:value-of select="name"/></dd>
					</dl>
				</xsl:if>
				<xsl:if test="level">
				<dl>
					<dt>难度介绍：</dt>
					<dd><xsl:value-of select="level"/></dd>
				</dl>
				</xsl:if>
				<xsl:if test="players">
				<dl>
					<dt>建议人数：</dt>
					<dd><xsl:value-of select="players"/></dd>
				</dl>
				</xsl:if>
				<xsl:if test="required">
				<dl>
					<dt>过关要求：</dt>
					<dd><xsl:value-of select="required"/></dd>
				</dl>
				</xsl:if>
				<xsl:if test="desc">
				<dl>
					<dt><xsl:value-of select="desc/@label"/>：</dt>
					<dd><xsl:value-of select="desc"/></dd>
				</dl>
				</xsl:if>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>