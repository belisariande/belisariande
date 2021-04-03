<?xml version="1.0" encoding="utf-8"?>
<!--
=====================================================================
=== Copyright (c) 1988-2021 $organization$
===
=== This software is provided by the author and contributors ``as is'' 
=== and any express or implied warranties, including, but not limited to, 
=== the implied warranties of merchantability and fitness for a particular 
=== purpose are disclaimed. In no event shall the author or contributors 
=== be liable for any direct, indirect, incidental, special, exemplary, 
=== or consequential damages (including, but not limited to, procurement 
=== of substitute goods or services; loss of use, data, or profits; or 
=== business interruption) however caused and on any theory of liability, 
=== whether in contract, strict liability, or tort (including negligence 
=== or otherwise) arising in any way out of the use of this software, 
=== even if advised of the possibility of such damage.
===
===   File: home.xslt
===
=== Author: $author$
===   Date: 4/2/2021
=====================================================================
-->
<xsl:stylesheet
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:exsl="http://exslt.org/common"
 xmlns:xalan="http://xml.apache.org/xalan"
 xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="xsl exsl xalan msxsl"
 version="1.0">

<!--
=====================================================================
=== Output 
=====================================================================
-->
<xsl:output
 method="html"
 indent="yes"
 version="yes"/>

<!--
=====================================================================
=== Paramaters
=====================================================================
-->
<xsl:param name="border" select="'0'"/>
<xsl:param name="port" select="''"/>
<xsl:param name="href_port">
    <xsl:choose>
        <xsl:when test="('' != $port)">:<xsl:value-of select="$port"/></xsl:when>
        <xsl:otherwise></xsl:otherwise>
    </xsl:choose>
</xsl:param>

<!--
=====================================================================
=== Templates
=====================================================================
-->
<!--
=====================================================================
=== Template: match "*" mode "href"
=====================================================================
-->
<xsl:template match="*" mode="href">
    <!--
    =====================================================================
    === Template Body
    =====================================================================
    -->
    <xsl:choose>
        <xsl:when test="('' != @href_proto)">
            <xsl:value-of select="@href_proto"/>
            <xsl:value-of select="$href_port"/>
            <xsl:value-of select="@href"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="@href"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<!--
=====================================================================
=== Template: match "*"
=====================================================================
-->
<xsl:template match="*">
    <!--
    =====================================================================
    === Template Body
    =====================================================================
    -->
    <html>
        <!--
        =====================================================================
        === head
        =====================================================================
        -->
        <head>
            <title></title>
            <!--
            =====================================================================
            === style
            =====================================================================
            -->
            <style type="text/css">
                body { 
                    color: black;
                    background-color: white;
                    text-decoration: none;
                    font-family: arial;
                    font-style: normal;
                }
                
                a { 
                    color: black;
                    font-size: 20pt;
                    font-weight: bold;
                    text-decoration: none;
                }
                a:visited { 
                    color: black;
                    text-decoration: none;
                }
                a:hover { 
                    color: blueviolet;
                    text-decoration: underline;
                }

                body {
                    width: 100%;
                    height: 100%;
                    margin: 0px;
                    background-image: url(../../images/Belisariande-background.jpg); 
                    background-repeat: no-repeat;
                    background-size: 100% 100%;
                }                
                #body {
                    width: 100%;
                    height: 100%;
                }
                #image { 
                    width: 444px;
                    height: 444px;
                    background-repeat: no-repeat;
                    background-image: url(../../images/Belisariande.png); 
                    background-size: 100% 100%;
                }
                #menu {
                    height: 444px;
                }
                #title { 
                    height: 50%;
                }
            </style>
<!--
=====================================================================
=== script
=====================================================================
-->
            <!--========================================================================-->
            <!--                                                                        -->
            <!--                                                                  -->
            <!--                                                                        -->
            <!--========================================================================-->
            <!--script
             language="JavaScript"
             type="text/JavaScript">
            </script-->
        </head>
<!--
=====================================================================
=== body
=====================================================================
-->
        <!--========================================================================-->
        <!--                                                                        -->
        <!--                                                                    -->
        <!--                                                                        -->
        <!--========================================================================-->
        <body>
        <table id="body" cellpadding="0" cellspacing="10" border="{$border}">
        <tr><td align="center" valign="middle">
            <table cellpadding="0" cellspacing="0" border="{$border}"><tr><td>
                <table id="image" cellpadding="0" cellspacing="0" border="{$border}">
                    <tr><td></td></tr>
                </table></td><td>
                <table id="menu" cellpadding="0" cellspacing="0" border="{$border}">
                    <tr><td id="title" align="center" valign="center">
                        <table cellpadding="0" cellspacing="10" border="{$border}">
                        <tr><xsl:for-each select="menu">
                            <td valign="top"><table cellpadding="0" cellspacing="0" border="{$border}">
                            <xsl:for-each select="item">
                                <xsl:variable name="href">
                                    <xsl:apply-templates mode="href" select="."/>
                                </xsl:variable>
                                <tr><td align="center">
                                    <a href="{$href}">
                                        <xsl:value-of select="@label"/>
                                    </a>
                                </td></tr>
                            </xsl:for-each>
                            </table></td>
                        </xsl:for-each></tr>
                        </table>
                    </td></tr>
                    <tr><td align="center" valign="bottom">
                        <table cellpadding="0" cellspacing="0" border="{$border}">
                        <xsl:for-each select="footer">
                        <tr><td align="center">
                            <table cellpadding="0" cellspacing="10" border="{$border}">
                                <tr>                                
                                <xsl:for-each select="item">
                                <xsl:variable name="href">
                                    <xsl:apply-templates mode="href" select="."/>
                                </xsl:variable>
                                <td><a href="{$href}">
                                    <xsl:value-of select="@label"/>
                                </a></td>
                                </xsl:for-each>
                                </tr>
                            </table>
                        </td></tr>
                        </xsl:for-each>
                        </table>
                    </td></tr>
                </table>
            </td></tr>
            </table>
        </td></tr>
        </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
