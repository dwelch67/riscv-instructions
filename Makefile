

test.pdf : test.xml
	xsltproc -o test.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl test.xml
	fop -fo test.fo -pdf test.pdf

clean:
	rm -f test.pdf
	rm -f test.fo
	rm -f test.html


toc.pdf : toc.xml
	xsltproc -o toc.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl toc.xml
	fop -fo toc.fo -pdf toc.pdf
