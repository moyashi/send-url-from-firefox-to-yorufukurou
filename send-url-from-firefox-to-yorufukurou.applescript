--システム環境設定>ユニバーサルアクセス>補助装置にアクセスできるようにするをONtell application "System Events"	if ((count of (every process whose name is "firefox-bin")) > 0) then		tell application "Firefox"			set theURL to «class curl» of window 1		end tell		tell application "System Events"			tell process "firefox-bin"				set theTitle to get value of static text 1 of window 1			end tell		end tell	end if	if ((count of (every process whose name is "YoruFukurou")) > 0) then		tell application "System Events"			tell process "YoruFukurou"				if ((value of text area 1 of scroll area 2 of window 1) is not equal to "") then					set value of text area 1 of scroll area 2 of window 1 to (value of text area 1 of scroll area 2 of window 1) & " " & theTitle & " " & theURL				else					set value of text area 1 of scroll area 2 of window 1 to theTitle & " " & theURL				end if			end tell		end tell		tell application "YoruFukurou" to activate	end ifend tell