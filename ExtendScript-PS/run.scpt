on run arg

  tell application "Adobe Photoshop CC 2015.5"
    do javascript file (arg's item 1)
    -- ALTERNATIVELY: 
    -- do javascript file (arg's item 1) show debugger before running
    -- do javascript file (arg's item 1) show debugger never
    -- do javascript file (arg's item 1) show debugger on runtime error
    activate
  end tell

end run