<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
<html><head><title>XSL其他元素应用实例</title></head>
<body>
    <xsl:comment>这是一个例子</xsl:comment>
    <h2>My CD Collection</h2>
    <p>Titles:
    <xsl:for-each select="CATALOG/CD">
        <xsl:sort order="descending" select="TITLE"/>
        <xsl:if test="position()!=last()">
            <xsl:text>,</xsl:text>
        </xsl:if>
        <xsl:if test="position()=last()-1">
            <xsl:text>and</xsl:text>
        </xsl:if>
        <xsl:if test="position()=last()">
            <xsl:text>!</xsl:text>
        </xsl:if>
    </xsl:for-each>
    <xsl:variable name="myStr">I'm OK!</xsl:variable>
    <xsl:value-of select="$myStr"/>
    <xsl:element name="img">
        <xsl:attribute name="alt">This is a picture</xsl:attribute>
    </xsl:element>
    <p>Total Price=<xsl:value-of select="sum(CATALOG/CD/PRICE)"/></p>
    <p><xsl:value-of select="substring(CATALOG/CD/TITLE,1,3)"/></p>
    </p>
</body>
</html>
</xsl:template>
</xsl:stylesheet>