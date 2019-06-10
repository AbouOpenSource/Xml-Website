<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match ="mainContent">
					<html>
								<head>
											<title>Hello, World!</title>
								</head>
								<body>
										
											<xsl:apply-templates select="partie"/>
												
								</body>
					</html>
	</xsl:template>

<xsl:template match ="partie">
						<section>
									<xsl:apply-templates select="menu"/>
						</section>
						<section>
									<xsl:apply-templates select="professeur"/>
						</section>
</xsl:template>

<xsl:template match="menu">
					<ul>
			<xsl:for-each select="item">
						<li><xsl:value-of /></li>
					</xsl:for-each>
					</ul>
			</xsl:for-each>
</xsl:template>
<xsl:template match="professeur">
					<xsl:for-each select="professeur">
						<xsl:value-of select="nom"/>
						<xsl:value-of select="prenom"/>
						<xsl:value-of select="poste"/>
						<xsl:value-of select="domaineP"/>
						<xsl:value-of select="domaineS"/>
					</xsl:for-each>
</xsl:template>








</xsl:stylesheet>
