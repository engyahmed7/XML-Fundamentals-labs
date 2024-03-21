<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
  <html>
  <head>
    <title>Employee Information</title>
    <style type="text/css">
      table {
        border-collapse: collapse;
        width: 100%;
      }
      th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #00000;
        color:white;
      }
    </style>
  </head>
  <body>
    <h2>Employee Information</h2>
    <table>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Home Phone</th>
        <th>Work Phone</th>
        <th>Mobile Phone</th>
        <th>Street</th>
        <th>Building</th>
        <th>Region</th>
        <th>City</th>
        <th>Country</th>
      </tr>
      <xsl:apply-templates select="Employees/employee"/>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="employee">
  <tr>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="email"/></td>
    <td><xsl:value-of select="phones/phone[@type='home']"/></td>
    <td><xsl:value-of select="phones/phone[@type='work']"/></td>
    <td><xsl:value-of select="phones/phone[@type='mobile']"/></td>
    <td><xsl:value-of select="addresses/address/street"/></td>
    <td><xsl:value-of select="addresses/address/building"/></td>
    <td><xsl:value-of select="addresses/address/region"/></td>
    <td><xsl:value-of select="addresses/address/city"/></td>
    <td><xsl:value-of select="addresses/address/country"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
