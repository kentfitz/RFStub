<?xml version="1.0" encoding="UTF-8"?>
<!-- If you do not have a utility on your machine that will transform XML documents, several free options are available online.
     e.g. http://xslttest.appspot.com/
     You'll need to copy and paste your XML and the XSL in this document into the appropriate fields, then copy and paste the results into a .html document
     On the mac, you can do this from the command line with:
     xsltproc /path/to/XSLT//TransformToSteps-NoResults.xsl output.xml
     -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<style> table { table-layout: fixed; width: 1000px; } </style>
				<h2>RobotFramework Test Results</h2>
				<font size="4">
					<table cellpadding=".5" border=".5">
						<tr bgcolor="#9acd32">
							<th style="text-align:left">Test</th>
							<th style="text-align:left">KeywordData-Level1</th>
							<th style="text-align:left">KeywordData-Level2</th>
							<th width="300" style="text-align:left">KeywordData-Level3</th>
							<th style="text-align:left">KeywordData-Level4</th>
							<th style="text-align:left">KeywordData-Level5</th>
						</tr>
						<xsl:apply-templates/>
					</table>
				</font>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="robot/suite/suite/suite/test">
		<td>
			<xsl:value-of select="@name"/>
		</td>
		<xsl:apply-templates select="kw"/>
	</xsl:template>
	<xsl:template match="kw">
		<tr>
			<td/>
			<td>
				<xsl:value-of select="@name"/>
			</td>
			<td>
				<xsl:value-of select="doc"/>
			</td>
			<td>
				<xsl:apply-templates select="arguments/arg"/>
			</td>
			<xsl:apply-templates select="kw"/>
		</tr>
	</xsl:template>
	<xsl:template match="arguments/arg">
		<xsl:value-of select="concat(.,' ')"/>
	</xsl:template>
</xsl:stylesheet>
