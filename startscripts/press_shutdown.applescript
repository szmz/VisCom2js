on idle
	set i to 0
	
	tell application "System Events"
		
		-- Get a count of all the windows belonging to the process
		set numberOfWindows to count windows of process "loginwindow"
		
		-- Check each window for a "Shut Down" button....
		repeat numberOfWindows times
			set i to i + 1
			
			-- ....and shut down if found
			if exists button "Shut Down" of window i of process "loginwindow" then
				--do shell script "shutdown -h now"
				click button "Shut Down" of window i of process "loginwindow"
			end if
		end repeat
	end tell
	
	-- How often the script checks for the window (in seconds). Change it as you see fit.
	return 0.5
end idle