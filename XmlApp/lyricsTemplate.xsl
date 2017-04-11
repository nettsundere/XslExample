<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="lines/*">
    <xsl:value-of select="local-name(.)" />
    are
    <xsl:value-of select="./@color" />
    <xsl:value-of select="' '"/>
  </xsl:template>

  <xsl:template match="/">
    <poem>
      <xsl:apply-templates select="/lines/*" />
    </poem>
  </xsl:template>
</xsl:stylesheet>