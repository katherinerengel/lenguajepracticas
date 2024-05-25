<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> <!-- Declarión para XSL-->
    <xsl:template match="/"> <!-- Inicializar la platilla-->
        <html>
            <head></head>
            <body>
                <table border="1">
                    <thead bgcolor="pink"> <!-- Contenedor de la cabecera o columnas-->
                        <tr> <!-- Filas-->
                            <th>Nombre</th> <!-- Titulos de las columnas-->
                            <th>Apellido</th>
                            <th>País</th>
                            <th>Edad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="pedidos/usuario"> <!--Etiqueta para recorrer los datos-->
                            <tr>
                                <td><xsl:value-of select="nombre" /></td><!-- Datos por cada columna-->
                                <td><xsl:value-of select="apellido" /></td>
                                <td><xsl:value-of select="pais" /></td>
                                <td><!-- Este será el dato condicionado (en negrita si es menor de edad)-->
                                    <xsl:choose> <!-- Validacion de casos-->
                                        <xsl:when test="edad &lt; 18"> <!-- Si ocurre el caso-->
                                            <span style="font-weight:bold"><xsl:value-of select="edad"/></span>
                                        </xsl:when>
                                        <xsl:otherwise><!-- Si no ocurre el caso-->
                                            <xsl:value-of select="edad"/>
                                        </xsl:otherwise> 
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> <!-- No olvidar este cierre de etiqueta-->