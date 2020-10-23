
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<h2 align="center">Employee Management System</h2>
<table border="1" align="center">
<tr bgcolor="#00887a">
<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Salary</th>
<th>Email</th>
<th>Mobile Number</th>
<th>Designation</th>
<th>Promotion</th>
</tr>
<xsl:for-each select="Company/employee">
<tr>
<td>
<xsl:value-of select="@EMPID"/>
</td>
<td>
<xsl:value-of select="emp-name"/>
</td>
<td>
<xsl:value-of select="emp-age"/>
</td>
<td>
<xsl:value-of select="emp-salary"/>
</td>
<td>
<xsl:value-of select="emp-email"/>
</td>
<td>
<xsl:value-of select="emp-phone"/>
</td>
<td>
<xsl:value-of select="designation"/>
</td>


<td>
<xsl:value-of select="promotion"/>


<xsl:choose>
  <xsl:when test="emp-age>= 50">
    Associate Project Manager
  </xsl:when >
  <xsl:when test="emp-age>=40">
        Team Leader
          </xsl:when >
  <xsl:otherwise>
   Developer
  </xsl:otherwise>
</xsl:choose>

</td>

</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
