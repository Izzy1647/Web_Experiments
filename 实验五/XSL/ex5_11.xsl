<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="2" bgcolor="yellow">
                    <tr><th>Title</th><th>Artist</th></tr>
                    <xsl:for-each select="CATALOG/CD">
                        <tr>
                            <td><xsl:value-of select="CATALOG/CD"/></td>
                            <xsl:choose>
                                <xsl:when test="ARTIST='Bod Dylan'">
                                    <td bgcolor="#ff0000">
                                        <xsl:value-of select="ARTIST"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="ARTIST"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>