<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/SirHaris">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>
<body>
    <h1>Sir Haris `s Batches Detail</h1>
    <table border="1">
        <tr bgcolor="green">
            <th>BATCH CODE</th>
            <th>TIMING</th>
            <th>COUNT</th>
        </tr>
<xsl:for-each select="batch">
    <!-- <xsl:if test="code ='yes'||'Yes'"> -->
        <xsl:if test="count &lt;= 15">
    <tr>
        <td><xsl:value-of select="code"></xsl:value-of></td>
        <td><xsl:value-of select="timing"></xsl:value-of></td>
        <td><xsl:value-of select="count"></xsl:value-of></td>
    </tr>
</xsl:if>
</xsl:for-each>



    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>