<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>
    
    <!-- Ce fichier fonctionne pour les fichiers .xml qui ont été numérotés à l'aide de xslt_numération_p.xsl. -->
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        
        <xsl:text>\documentclass[12pt]{book}
        \usepackage{xunicode}
        \usepackage{polyglossia}
	    \setmainlanguage {french}
    		\setotherlanguage{latin}
    		\renewenvironment{latin}
    	{\begin{hyphenrules}{latin}}
    	{\end{hyphenrules}}
        \usepackage{hyperref}
        \usepackage[noend,series={A,B},noeledsec, noledgroup]{reledmac}
            \Xarrangement[A,B]{paragraph}
            \Xnolemmaseparator[A]
        \usepackage{reledpar}
        \usepackage {lineno}
        \usepackage[a4paper]{geometry}
	       \geometry{margin=3.5cm}
	    \usepackage[onehalfspacing]{setspace}

        \begin{document}
        \title{</xsl:text><xsl:value-of select="//titleStmt/title"/><xsl:text>. Texte tiré de </xsl:text><xsl:value-of select="//sourceDesc/bibl/author"/><xsl:text>, \textit{</xsl:text><xsl:value-of select="//sourceDesc/bibl/title"/><xsl:text>}, </xsl:text><xsl:value-of select="//sourceDesc/bibl/date"/><xsl:text>}
        \author{Atelier de traduction du Groupe de théâtre antique\\
            Université de Neuchâtel, CLAM\\
            C. Aeby, N. Aeby, M. Cario, M. Durham,\\ 
            P. Jacsont, S. Moy, I. Muminovic, É. Paupe,\\
            J. Rafael Ribeiro da Silva, R. Richard. P. Schwab}
        \date{Semestre de printemps 2020}
        
        \maketitle
        \begin{pages}
        \begin{latin}
        \begin{Leftside}
        \beginnumbering 
            </xsl:text>
        <xsl:apply-templates select="//div[@type='source']"/>
        <xsl:text> 
        \endnumbering
        \end{Leftside}
        \end{latin}

        \begin{Rightside}
        \beginnumbering
            </xsl:text>
        <xsl:apply-templates select="//div[@type='traduction']"/>
        <xsl:text>
        \endnumbering
        \end{Rightside}
        \end{pages}
        \Pages
        \end{document}
    </xsl:text>
        
    </xsl:template>
    
    
    
    <xsl:template match="text()">
        <xsl:value-of select="replace(., '&amp;', ' \\ampersand\\')"/>
    </xsl:template>
    
    <xsl:template match="head">
        <xsl:text>\pstart\section*{</xsl:text><xsl:value-of select="."/><xsl:text>}\pend </xsl:text>
    </xsl:template>
    
    <xsl:template match="stage">
        <xsl:text>\pstart\subsection*{</xsl:text><xsl:value-of select="."/><xsl:text>}\pend</xsl:text>
    </xsl:template>
    
    <xsl:template match="speaker">
        <xsl:text>\pstart\textbf{</xsl:text><xsl:value-of select="."/><xsl:text>}\pend</xsl:text>
    </xsl:template>
    
    <xsl:template match="p">
        <xsl:text>\pstart</xsl:text>
            <xsl:value-of select="@n"/> 
        
            <xsl:apply-templates/>
        <xsl:text>\pend</xsl:text>
    </xsl:template>
    
    
    
    <xsl:template match="app"> 
        <xsl:text>\edtext{</xsl:text><xsl:value-of select="lem"/><xsl:text>}{\Bfootnote{</xsl:text><xsl:value-of select="rdg"/><xsl:text> \textit{</xsl:text><xsl:value-of select="replace(rdg/@wit,'#','')"/><xsl:text>}}}</xsl:text>
    </xsl:template>
    
    <xsl:template match="body//quote">
        
        <xsl:variable name="itxt">
            <xsl:value-of select="replace(@corresp,'#','')"/>
        </xsl:variable>
        
        <xsl:apply-templates/>
        <xsl:text>\edtext{</xsl:text>
        <xsl:text>}{\Afootnote{</xsl:text>
        <xsl:apply-templates select="//cit[@xml:id=$itxt]/bibl"/>  
        <xsl:text>}}</xsl:text>
    </xsl:template>
    
    <xsl:template match="title">
        <xsl:text>\textit{</xsl:text><xsl:value-of select="."/><xsl:text>}</xsl:text>
    </xsl:template>

</xsl:stylesheet>
