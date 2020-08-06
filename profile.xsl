<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>QWERTY</title>
</head>
<body>
  <h1><center>Ayesha Riyaz</center></h1>
<ul>
 <xsl:for-each select="cv/candidate">
<li>
<p>OBJECTIVE</p>
 <xsl:value-of select="objective" />
 <xsl:text>, </xsl:text>
<hr/>
 <xsl:value-of select="skills" />
 <xsl:text>, </xsl:text>
<xsl:value-of select="portfolio" />
 <xsl:text>, </xsl:text>
<xsl:value-of select="experience" />
 <xsl:text>, </xsl:text>
 <xsl:value-of select="contactInfo" />
 <xsl:text>, </xsl:text>
 <xsl:value-of select="PersonalInfo" />
 <xsl:text>, </xsl:text>
 <xsl:value-of select="ExtraCurricular" />
</li>
 </xsl:for-each>
</ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
