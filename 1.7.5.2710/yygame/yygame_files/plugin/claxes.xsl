<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cx="http://www.classtyle.com/cx">
	<xsl:import href="customize.xsl"/>
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<!--base-->
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
			<meta name="keywords" content="{//cx:config/cx:keywords}"/>
			<meta name="description" content="{//cx:config/cx:description}"/>
			<title><xsl:value-of select="//cx:config/cx:title"/></title>
			<link href="i/style.css" rel="stylesheet" type="text/css" />
		</head>
		<body oncontextmenu="return false;" scroll="no">
			<div class="page">
				<xsl:apply-templates select="//cx:header"/>
				<xsl:apply-templates select="//cx:body"/>
				<xsl:apply-templates select="//cx:footer"/>
			</div>
		</body>
		<script language="javascript">
        <xsl:comment>
          <![CDATA[
			function init(){
				document.getElementById("sec_part").style.display="none";
			}
			function displayById(str_scene){
				document.getElementById("sec_part").style.display="none";
				//var sendId = "part1";
				var str = "";
				var collParts = document.getElementsByTagName("div");
				for(var i=3; i<collParts.length; i++){
					if(collParts[i].id.indexOf("part")!=-1){
						str += collParts[i].id+";";
					}
					
				}
				var idArray = str.split(";");
				for(var j=0; j<idArray.length-1; j++){
					if(str_scene == idArray[j]){
						document.getElementById(str_scene).style.display="block";
					}else{
						document.getElementById(idArray[j]).style.display="none";
					}
				}
				document.getElementById("sec_part").style.display="block";
			}
        ]]>
        </xsl:comment>
		</script>
		</html>
	</xsl:template>

<!--header-->
	<xsl:template match="cx:header">
		<div class="phd">
			<xsl:apply-templates select="cx:element"/>
		</div>
	</xsl:template>

<!--body-->
	<xsl:template match="cx:body">
		<div class="pbd">
			<xsl:apply-templates select="cx:section"/>
		</div>
	</xsl:template>

<!--footer-->
	<xsl:template match="cx:footer">
		<div class="pft">
			<xsl:copy-of select="node()"/>
		</div>
	</xsl:template>

<!--logo-->
	<xsl:template match="cx:logo">
		<h1><img src="{@src}" alt="{@text}"/></h1>
	</xsl:template>

<!--section-->
	<xsl:template match="cx:section">
		<div class="section st{position()} {@layout} {@class}" style="display:none" id="sec_part">
			<xsl:apply-templates select="cx:part"/>
		</div>
	</xsl:template>

<!--part-->
	<xsl:template match="cx:part">
		<div  class="part pt{position()} {@class}" id="{@id}">
			<xsl:apply-templates select="cx:mod"/>
		</div>
	</xsl:template>

<!--mod-->
	<xsl:template match="cx:mod">
		<xsl:choose>
			<xsl:when test="@type = 'full'">
				<div  class="mod {@class}" id="{@id}">
					<div class="mhd">
						<h3><xsl:value-of select="cx:name"/></h3>
						<xsl:if test="cx:goto">
							<a class="ext" href="{cx:goto/@url}" target="{cx:goto/@target}"><xsl:value-of select="cx:goto/@text"/></a>
						</xsl:if>
					</div>
					<div class="mbd">
						<xsl:apply-templates select="cx:element"/>
					</div>
					<div class="mft"></div>
				</div>
			</xsl:when>

			<xsl:when test="@type = 'simple'">
				<div class="mod {@class}" id="{@id}">
					<xsl:apply-templates select="cx:element"/>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

<!--element-->
	<xsl:template match="cx:element">
		<div class="{@class}" id="{@id}">
			<xsl:choose>
				<xsl:when test="@type = 'cxText'">
					<xsl:value-of select="." />
				</xsl:when>
				<xsl:when test="@type = 'cxHtml'">
					<xsl:copy-of select="node()"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-imports/>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</xsl:template>
</xsl:stylesheet>