on run argv
	if (count of argv) is not 3 then
		beep
		error "Bad number of arguments!"
	end if
	set thePlanFile to POSIX file (item 1 of argv)
	set theBaseName to do shell script "basename -s .oplx \"" & (item 1 of argv) & "\""
	set theOutputFile to POSIX file (item 2 of argv)
	do shell script "touch -a \"" & (item 2 of argv) & "\""
	tell application "OmniPlan"
		try
			open file thePlanFile
			--set visible of the first window to false
		on error
			activate
			set theMessage to "Error: couldn't open file " & (item 1 of argv)
			beep
			display dialog theMessage buttons {"Ok"} with icon stop
			error theMessage
		end try
		try
			export document theBaseName as (item 3 of argv) to file theOutputFile
			close document theBaseName
		on error
			try
				export document (theBaseName & ".oplx") as (item 3 of argv) to file theOutputFile
				close document (theBaseName & ".oplx")
			on error
				activate
				set theMessage to "Error: couldn't save file " & (item 1 of argv) & " as " & (item 3 of argv) & "."
				beep
				display dialog theMessage buttons {"Ok"} with icon stop
				error theMessage
			end try
		end try
		set nbDocs to (count of documents)
		if nbDocs is 0 then
			quit
		else
			set theDocName to (the name of the first document)
			if nbDocs is 1 and (the last word of theDocName) is "gstencil" then
				quit
			end if
		end if
	end tell
end run
