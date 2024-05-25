<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> <!-- Declarión para XSL-->
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <xsl:for-each select="pedidos/usuario">
                    <ul>
                        <li><xsl:value-of select="nombre"/></li>
                        <li><xsl:value-of select="apellido"/></li>
                        <li><xsl:value-of select="pais"/></li>
                        <li><!-- A partir de aqui será el dato condicionado (en negrita si es menor de edad)-->
                            <xsl:choose>
                                <xsl:when test="edad >18"><!-- Si cumple la condicion-->
                                    <span style="font-weight:bold"><xsl:value-of select="edad"/></span>
                                </xsl:when>
                                <xsl:otherwise><!-- Si no la cumple-->
                                    <xsl:value-of select="edad"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> <!-- No olvidar este cierre de etiqueta-->