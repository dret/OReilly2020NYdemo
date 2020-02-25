<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
  <xsl:variable name="root" select="'../guidelines/'"/>
  <xsl:variable name="index-name" select="'README'"/>
  <xsl:variable name="file-suffix" select="'.md'"/>
  <xsl:variable name="link-suffix" select="'.md'"/>
  <xsl:variable name="apos" select='"&apos;"'/>
  <xsl:template match="/">
    <xsl:result-document href="{$root}{$index-name}{$file-suffix}" method="text">
      <xsl:text># API Guidelines&#xa;&#xa;</xsl:text>
      <xsl:for-each select="guide/guidelines/guideline">
        <xsl:sort select="title/text()"/>
        <xsl:text>- [</xsl:text>
        <xsl:value-of select="title/text()"/>
        <xsl:text>](why/</xsl:text>
        <xsl:value-of select="@id"/>
        <xsl:text>/ "</xsl:text>
        <xsl:value-of select="teaser/text()"/>
        <xsl:text>")&#xa;</xsl:text>
      </xsl:for-each>
    </xsl:result-document>
    <xsl:for-each select="guide/guidelines/guideline">
      <xsl:result-document href="{$root}why/{@id}/{$index-name}{$file-suffix}" method="text">
        <xsl:text># </xsl:text>
        <xsl:value-of select="title/text()"/>
        <xsl:text>&#xa;&#xa;</xsl:text>
        <xsl:text>### </xsl:text>
        <xsl:value-of select="teaser/text()"/>
        <xsl:text>&#xa;&#xa;---&#xa;&#xa;</xsl:text>
        <xsl:text>## Guideline Rationale:&#xa;&#xa;</xsl:text>
        <xsl:apply-templates select="text/*"/>
        <xsl:call-template name="resources"/>
        <xsl:text>&#xa;---&#xa;&#xa;</xsl:text>
        <xsl:text>## Design Options:&#xa;&#xa;</xsl:text>
        <xsl:for-each select="what">
          <xsl:sort select="title/text()"/>
          <xsl:text>- [</xsl:text>
          <xsl:value-of select="title/text()"/>
          <xsl:text>](what/</xsl:text>
          <xsl:value-of select="@id"/>
          <xsl:text>/ "</xsl:text>
          <xsl:value-of select="teaser/text()"/>
          <xsl:text>")&#xa;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#xa;---&#xa;&#xa;</xsl:text>
        <xsl:text>[↑ All Guidelines](../..)&#xa;</xsl:text>
      </xsl:result-document>
      <xsl:for-each select="what">
        <xsl:result-document href="{$root}why/{../@id}/what/{@id}/{$index-name}{$file-suffix}" method="text">
          <xsl:text># </xsl:text>
          <xsl:value-of select="title/text()"/>
          <xsl:text>&#xa;&#xa;</xsl:text>
          <xsl:text>## Design Option for the ["</xsl:text>
          <xsl:value-of select="../title/text()"/>
          <xsl:text>" Guideline](../..)&#xa;&#xa;</xsl:text>
          <xsl:text>### </xsl:text>
          <xsl:value-of select="teaser/text()"/>
          <xsl:text>&#xa;&#xa;</xsl:text>
          <xsl:text>---&#xa;&#xa;</xsl:text>
          <xsl:text>## Design Rationale:&#xa;&#xa;</xsl:text>
          <xsl:apply-templates select="text/*"/>
          <xsl:call-template name="resources"/>
          <xsl:text>&#xa;---&#xa;&#xa;</xsl:text>
          <xsl:text>## Implementation Options:&#xa;&#xa;</xsl:text>
          <xsl:for-each select="how">
            <xsl:sort select="title/text()"/>
            <xsl:text>- [</xsl:text>
            <xsl:value-of select="title/text()"/>
            <xsl:text>](how/</xsl:text>
            <xsl:value-of select="@id"/>
            <xsl:text> "</xsl:text>
            <xsl:value-of select="teaser/text()"/>
            <xsl:text>")&#xa;</xsl:text>
          </xsl:for-each>
          <xsl:text>&#xa;---&#xa;&#xa;</xsl:text>
          <xsl:text>[↑ "</xsl:text>
          <xsl:value-of select="../title/text()"/>
          <xsl:text>" Guideline](../..) · [↑ All Guidelines](../../../..)&#xa;</xsl:text>
        </xsl:result-document>
        <xsl:for-each select="how">
          <xsl:result-document href="{$root}why/{../../@id}/what/{../@id}/how/{@id}/{$index-name}{$file-suffix}" method="text">
            <xsl:text># </xsl:text>
            <xsl:value-of select="title/text()"/>
            <xsl:text>&#xa;&#xa;</xsl:text>
            <xsl:text>## Implementation Option for the ["</xsl:text>
            <xsl:value-of select="../title/text()"/>
            <xsl:text>" Design Option](../..)&#xa;&#xa;</xsl:text>
            <xsl:text>### </xsl:text>
            <xsl:value-of select="teaser/text()"/>
            <xsl:text>&#xa;&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:text>## Implementation Description:&#xa;&#xa;</xsl:text>
            <xsl:apply-templates select="text/*"/>
            <xsl:call-template name="resources"/>
            <xsl:text>&#xa;---&#xa;&#xa;</xsl:text>
            <xsl:text>[↑ "</xsl:text>
            <xsl:value-of select="../title/text()"/>
            <xsl:text>" Design Option](../..) · [↑ "</xsl:text>
            <xsl:value-of select="../../title/text()"/>
            <xsl:text>" Guideline](../../../..) · [↑ All Guidelines](../../../../../..)&#xa;</xsl:text>
          </xsl:result-document>
        </xsl:for-each>
      </xsl:for-each>
    </xsl:for-each>
    <xsl:result-document href="{$root}resources{$file-suffix}" method="text">
      <xsl:text># Resources for [API Guidelines](./)&#xa;&#xa;</xsl:text>
      <xsl:for-each select="/guide/resources/resource">
        <xsl:sort select="@title"/>
        <xsl:text>- *[</xsl:text>
        <xsl:value-of select="@title"/>
        <xsl:text>]:* [</xsl:text>
        <xsl:value-of select="text()"/>
        <xsl:text>](</xsl:text>
        <xsl:value-of select="@href"/>
        <xsl:text>)&#xa;</xsl:text>
      </xsl:for-each>
    </xsl:result-document>
  </xsl:template>
  <xsl:template match="p">
    <xsl:apply-templates select="node()"/>
    <xsl:text>&#xa;&#xa;</xsl:text>
  </xsl:template>
  <xsl:template match="ul">
    <xsl:apply-templates select="li"/>
    <xsl:text>&#xa;</xsl:text>
  </xsl:template>
  <xsl:template match="li">
    <xsl:text>- </xsl:text>
    <xsl:apply-templates select="node()"/>
    <xsl:text>&#xa;</xsl:text>
  </xsl:template>
  <xsl:template match="cite">
    <xsl:variable name="resource" select="/guide/resources/resource[@id eq current()/@ref]"/>
    <xsl:text>[[</xsl:text>
    <xsl:value-of select="$resource/@title"/>
    <xsl:text>]](</xsl:text>
    <xsl:value-of select="$resource/@href"/>
    <xsl:text> "</xsl:text>
    <xsl:value-of select="replace($resource/text(), '&quot;', $apos)"/>
    <xsl:text>")</xsl:text>
  </xsl:template>
  <xsl:template name="resources">
    <xsl:if test="exists(text//cite)">
      <xsl:text>### Resources:&#xa;</xsl:text>
      <xsl:for-each select="text//cite">
        <xsl:sort select="/guide/resources/resource[@id eq current()/@ref]/@title"/>
        <xsl:variable name="resource" select="/guide/resources/resource[@id eq current()/@ref]"/>
        <xsl:text>&#xa;- *[</xsl:text>
        <xsl:value-of select="$resource/@title"/>
        <xsl:text>]:* [</xsl:text>
        <xsl:value-of select="$resource/text()"/>
        <xsl:text>](</xsl:text>
        <xsl:value-of select="$resource/@href"/>
        <xsl:text>)&#xa;</xsl:text>
      </xsl:for-each>
      <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>