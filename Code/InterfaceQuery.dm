InterfaceQuery
	var/tmp/query
	proc/Clear()
		if(src.query) src.query=""

	proc/Add(var/string)
		if(!findtext(string, ";", -1))
			string+=";"
		src.query+=string

	proc/Execute()
		return src.query