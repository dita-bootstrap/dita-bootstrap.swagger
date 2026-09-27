<?xml version="1.0" encoding="utf-8"?>
<!--
	This file is part of the DITA Bootstrap Swagger plug-in for DITA Open Toolkit.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
	<xsl:template
	  match="*[contains(@class,' topic/topic ')][starts-with(@outputclass, 'swagger-')]"
	  mode="child.topic"
	  priority="10"
	>
		<xsl:variable name="codeblock"
		  select="*[contains(@class,' topic/body ')]/*[contains(@class,' pr-d/codeblock ') and starts-with(@outputclass, 'swagger-')][1]"
		/>
		<xsl:variable name="headingId" select="concat('heading_', @id)"/>
		<xsl:variable name="collapseId" select="concat('collapse_', @id)"/>
		<div class="accordion-item">
			<xsl:call-template name="commonattributes">
				<xsl:with-param name="default-output-class">accordion-item</xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="setidaname"/>
			<h2 class="accordion-header px-3" id="{$headingId}">
				<button
				  class="accordion-button collapsed"
				  type="button"
				  data-bs-toggle="collapse"
				  aria-expanded="false"
				>
					<xsl:attribute name="data-bs-target" select="concat('#', $collapseId)"/>
					<xsl:attribute name="aria-controls" select="$collapseId"/>
					<xsl:call-template name="swagger-summary-row">
						<xsl:with-param name="codeblock" select="$codeblock"/>
					</xsl:call-template>
				</button>
			</h2>
			<div class="accordion-collapse collapse" id="{$collapseId}" aria-labelledby="{$headingId}">
				<div class="accordion-body px-4">
					<xsl:apply-templates select="*[contains(@class,' topic/body ')]/*[not(. is $codeblock)]"/>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
