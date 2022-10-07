<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Аттестация</title>
</head>
<body style="font-family: 'Segoe UI'">
<table style="border: 2px solid; border-collapse: collapse; margin: auto; width: 50%; height: 50%; text-align:center">
<tr>
<th style="border-collapse:collapse; border: 1px solid">Фамилия, имя</th>
<th style="border-collapse:collapse; border: 1px solid">ОПИ</th>
<th style="border-collapse:collapse; border: 1px solid">ОАиП</th>
<th style="border-collapse:collapse; border: 1px solid">АЛОВС</th>
<th style="border-collapse:collapse; border: 1px solid">Англ. яз.</th>
<th style="border-collapse:collapse; border: 1px solid">КЯР</th>
<th style="border-collapse:collapse; border: 1px solid">ВышМат</th>
</tr>
<xsl:for-each select="attestation/student">
<tr>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="name"/></td>

    <xsl:choose>
    <xsl:when test="OPI &gt; 8">
    <td style="background-color: green; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="OPI"/></td>
    </xsl:when>
    <xsl:when test="OPI &lt; 4">
    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="OPI"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="OPI"/></td>
    </xsl:otherwise>
    </xsl:choose>

    <xsl:choose>
    <xsl:when test="OAP &gt; 8">
    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="OAP"/></td>
    </xsl:when>
    <xsl:when test="OAP &lt; 4">
    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="OAP"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="OAP"/></td>
    </xsl:otherwise>
    </xsl:choose>
 
    <xsl:choose>
    <xsl:when test="ALOVS &gt; 8">
    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="ALOVS"/></td>
    </xsl:when>
    <xsl:when test="ALOVS &lt; 4">
    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="ALOVS"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="ALOVS"/></td>
    </xsl:otherwise>
    </xsl:choose>

    <xsl:choose>
    <xsl:when test="English &gt; 8">
    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="English"/></td>
    </xsl:when>
    <xsl:when test="English &lt; 4">
    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="English"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="English"/></td>
    </xsl:otherwise>
    </xsl:choose>

    <xsl:choose>
    <xsl:when test="KYAR &gt; 8">
    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="KYAR"/></td>
    </xsl:when>
    <xsl:when test="KYAR &lt; 4">
    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="KYAR"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="KYAR"/></td>
    </xsl:otherwise>
    </xsl:choose> 

    <xsl:choose>  
    <xsl:when test="MATH &gt; 8">
    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="MATH"/></td>
    </xsl:when>
    <xsl:when test="MATH &lt; 4">
    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
    <xsl:value-of select="MATH"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="MATH"/></td>
    </xsl:otherwise>
    </xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>