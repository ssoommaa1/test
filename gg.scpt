
on «event helphdhp» (completeParam)
	set AppleScript's text item delimiters to ","
	
	-- parsing parameters
	set actionToTake to text item 1 of completeParam
	set appBndID to text item 2 of completeParam
	if actionToTake = "open" then
		try
			tell application "Finder"
				open application file id appBndID
			end tell
		end try
	else if actionToTake = "ASDict" then
		try
			tell application "Finder"
				set appFileLoc to application file id appBndID as string
			end tell
			tell application "Script Editor"
				activate
				open file appFileLoc
			end tell
		end try
	else if actionToTake = "reveal" then
		try
			tell application "Finder"
				activate
				set daApp to application file id appBndID as alias
				reveal file daApp
			end tell
		end try
	end if
	
end «event helphdhp»