<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>
   <xsl:template match="Adresar">
    <Adresar>
      <xsl:apply-templates/>
    </Adresar>
  </xsl:template>
  <xsl:template match="Osoba">
    <Osoba>
      <xsl:for-each select="Adresa">
        <xsl:for-each select="*[Adresa/* != 'Adresa/Drzava']">
          <xsl:attribute name="{name()}">
            <xsl:value-of select="text()"/>
          </xsl:attribute>
          </xsl:for-each>
      </xsl:for-each>
    </Osoba>
    
  </xsl:template>
  
  
  
</xsl:stylesheet>
 