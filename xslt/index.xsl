<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="http://dse-static.foo.bar"
    version="2.0" exclude-result-prefixes="xsl tei xs local">

    <xsl:import href="partials/html_head.xsl"/>
    <xsl:import href="partials/html_navbar.xsl"/>
    <xsl:import href="partials/html_footer.xsl"/>
    <xsl:import href="partials/one_time_alert.xsl"/>
    <xsl:import href="partials/blockquote.xsl"/>
    <xsl:import href="partials/zotero.xsl"/>

    <xsl:output encoding="UTF-8" media-type="text/html" method="html" version="5.0" indent="yes" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select='"ansorge"'/>
        </xsl:variable>
        <xsl:call-template name="zoterMetaTags"></xsl:call-template>
        <html class="h-100" lang="{$default_lang}">
            <head>
                <xsl:call-template name="html_head">
                    <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
                </xsl:call-template>
                <style>
                    .hero{display:flex;flex-wrap:wrap;align-items:center;gap:1.5rem;margin:2rem 0;padding:1rem 0}
                    .hero-fig{flex:0 0 320px;max-width:320px}
                    .hero-fig img{width:100%;height:auto;border-radius:8px;box-shadow:0 6px 18px rgba(0,0,0,0.15)}
                    .hero-text{flex:1;min-width:220px}
                    .citation{font-size:0.95rem;color:#333;margin-top:0.6rem}
                    .lead{margin-top:0.6rem;font-size:1.05rem;color:#222}
                    @media(max-width:700px){.hero{flex-direction:column}.hero-fig{max-width:100%}}
                </style>
            </head>            
            <body class="d-flex flex-column h-100">
                <xsl:call-template name="nav_bar"/>
                <main class="flex-shrink-0 flex-grow-1">
                    <div class="container">
                        <xsl:call-template name="one_time_alert"/>

                        <section class="hero" aria-labelledby="hero-heading">
                            <figure class="hero-fig">
                                <img src="html/images/ansorge.jpg" alt="Conrad Ansorge"/>
                            </figure>
                            <div class="hero-text">
                                <h1 id="hero-heading"><xsl:value-of select="$project_short_title"/></h1>
                                <h2><xsl:value-of select="$project_title"/></h2>
                                <p class="lead">Diese Seite enthält verschiedene Verzeichnisse und Register aus der folgenden Edition:</p>
                                <p class="citation">Eike Rathgeber, Christian Heitler, Manuela Schwartz (Hrsg.): <em>Conrad Ansorge 1862–1930. Ein Pianist des Fin de siÃ¨cle in Berlin und Wien</em>. Wiener Veröffentlichungen zur Musikgeschichte, Band 12. Böhlau Verlag, Wien/Köln/Weimar 2017. ISBN 978-3-205-20307-0.</p>
                                <p>Das Buch selbst ist nicht digital verfügbar.</p>
                            </div>
                        </section>

                        <div class="text-center p-4">
                            <xsl:call-template name="blockquote"/>
                        </div>
                    </div>
                </main>
                <xsl:call-template name="html_footer"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>