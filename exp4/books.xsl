<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Book Catalog</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <div class="container">
        <h1>E-Buy Book Store Catalog</h1>
        <table id="book-table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>ISBN</th>
                    <th>Publisher</th>
                    <th>Edition</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="library/book">
                <tr>
                    <td class="title"><xsl:value-of select="title"/></td>
                    <td class="author"><xsl:value-of select="author"/></td>
                    <td class="isbn"><xsl:value-of select="isbn"/></td>
                    <td class="publisher"><xsl:value-of select="publisher"/></td>
                    <td class="edition"><xsl:value-of select="edition"/></td>
                    <td class="price">$<xsl:value-of select="price"/></td>
                </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>