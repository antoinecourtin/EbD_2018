<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/" name="testpourledb">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Mise en forme avec XSLT</title>
  </head>

  <body>
		<h1>Ma boutique v3</h1>
    <table width="1000" border="1" cellspacing="0" cellpadding="0">
      <tr>
        <th scope="col">id</th>
        <th scope="col">Marque</th>
        <th scope="col">Modele</th>
    		<th scope="col">Dispo ?</th>
        <th scope="col">Couleur</th>
        <th scope="col">Dernier modèle</th>
      </tr>
  <xsl:for-each select="boutique/telephone[marque = 'Nokia']">
        <tr>
          <td><xsl:value-of select="@id"/></td>
          <td><xsl:value-of select="marque"/></td>
          <td><xsl:value-of select="modele"/></td>
  				<td><xsl:value-of select="dispo"/></td>
          <td><xsl:value-of select="couleur"/></td>
          <td><xsl:value-of select="modele/@nouveaute"/></td>
        </tr>
  </xsl:for-each>

</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
