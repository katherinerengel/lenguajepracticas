<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <body>
            <table border="1">
                <tr bgcolor="blue">
                    <th>Título de la canción</th>
                    <th>Artista o banda</th>
                    <th>Género de la canción</th>
                    <th>Precio unitario</th>
                    <th>Fecha de la transacción</th>
                </tr>
                <xsl:for-each select= "transacciones/registro">
                    <tr>
                        <td><xsl:value-of select= "titulo_de_la_cancion"/></td>
                        <td><xsl:value-of select= "artista_banda"/></td>
                        <td><xsl:value-of select= "genero_de_la_cancion"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="precio_unitario &lt; 1">
                                    <span style="font-weight:bold"><xsl:value-of select="precio_unitario"/></span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="precio_unitario"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td><xsl:value-of select="fecha_de_la_transaccion"/></td>
                    </tr>
                </xsl:for-each>                
            </table>
        </body>
    </xsl:template>
</xsl:stylesheet>
