set tempTID to AppleScript's text item delimiters -- save current delimiters

set myFile to "etc:hosts"
set myFileRef to open for access file myFile with write permission
set myFileContents to (read myFileRef using delimiter return)

set filecontents to myFileContents as string

set AppleScript's text item delimiters to "#0"

set edits to text items of filecontents
set x to 1
repeat (the (number of items in edits) - 1) times
	set x to (x + 1)
	set linea to item x in edits
	set linea to "0" & linea
	set item x in edits to linea
end repeat

set AppleScript's text item delimiters to ""
set fixzeros to edits as string
set AppleScript's text item delimiters to "#::"

set edits to text items of fixzeros
set x to 1
repeat (the (number of items in edits) - 1) times
	set x to (x + 1)
	set linea to item x in edits
	set linea to "::" & linea
	set item x in edits to linea
end repeat

set AppleScript's text item delimiters to ""
set updated to edits as string

set eof of myFileRef to 0
write updated to myFileRef starting at eof

close access myFileRef
set AppleScript's text item delimiters to tempTID
