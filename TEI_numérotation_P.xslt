<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    
    <!--    Fichier permettant la numérotation des paragraphes. 
            Appliquer ensuite TEI_to_latexbilingue_v5.xsl pour avoir la numérotation des paragraphes. -->
    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/> 
        </xsl:copy>
    </xsl:template> 
     

    <xsl:template match="//div[@type='source']//p">
        <p xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="n">
                <xsl:number select="."/>
            </xsl:attribute>

            <xsl:apply-templates select="child::node()"/>
        </p>
        
    </xsl:template>
     
    <xsl:template match="//div[@type='traduction']//p">
        <p xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="n">
                <xsl:number select="."/>
            </xsl:attribute>
            
            <xsl:apply-templates select="child::node()"/>   
        </p>
              
    </xsl:template>


</xsl:stylesheet>
