
/proc/invertHTML(HTMLstring)

	if (!( istext(HTMLstring) ))
		CRASH("Given non-text argument!")
		return
	else
		if (length(HTMLstring) != 7)
			CRASH("Given non-HTML argument!")
			return
	var/textr = copytext(HTMLstring, 2, 4)
	var/textg = copytext(HTMLstring, 4, 6)
	var/textb = copytext(HTMLstring, 6, 8)
	var/r = hex2num(textr)
	var/g = hex2num(textg)
	var/b = hex2num(textb)
	textr = num2hex(255 - r)
	textg = num2hex(255 - g)
	textb = num2hex(255 - b)
	if (length(textr) < 2)
		textr = text("0[]", textr)
	if (length(textg) < 2)
		textr = text("0[]", textg)
	if (length(textb) < 2)
		textr = text("0[]", textb)
	return text("#[][][]", textr, textg, textb)
	return
