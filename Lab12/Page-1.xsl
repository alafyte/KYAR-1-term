<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Задание №1</title>
</head>
<body style="background: url(files/stars1337.jpg); margin-left: 10%; margin-right: 10%;">
<h2 style="font-size: xx-large; font-style: italic; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; text-align: center; color: white;">Звезды. Виды звёзд</h2>

<xsl:for-each select="article/stars">
<xsl:sort select="name"/>
<h2 style="font-weight:bold; text-align: center; color: white; font-size: x-large;"><xsl:value-of select="name"/></h2>
<p style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: white;"><xsl:value-of select="description"/></p>
</xsl:for-each>

<h2 style="font-size: xx-large; font-style: italic; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; text-align: center; color: white;">Планеты Солнечной системы</h2>
<xsl:for-each select="article/planets">
<xsl:sort select="name"/>
<h2 style="font-weight:bold; text-align: center; color: white; font-size: x-large;"><xsl:value-of select="name"/></h2>
<p style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: white;"><xsl:value-of select="description"/></p>       
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>