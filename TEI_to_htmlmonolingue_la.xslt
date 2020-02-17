<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="UTF-8"/>
    
    
    <xsl:template match="/">
    
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="GallusPugnans_htmlmonolingue.css"/>
                <title><xsl:value-of select="//titleStmt/title"/></title>
            </head>
            <body>
                <xsl:apply-templates select="//body"/>
            </body>
        </html>
    
    </xsl:template>
    

    
    <xsl:template match="head">
       <h1><xsl:apply-templates/></h1>
    </xsl:template>
    
    <xsl:template match="note">
        (<xsl:value-of select="."/>)
    </xsl:template>
    
    <xsl:template match="stage">
        <h2><xsl:value-of select="."/></h2>
    </xsl:template>
        
    <xsl:template match="speaker">
        <strong><xsl:value-of select="."/></strong>
    </xsl:template>
    
    <xsl:template match="sp">
        <div><xsl:apply-templates/></div>
    </xsl:template>
    

</xsl:stylesheet>
