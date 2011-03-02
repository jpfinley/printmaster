tell application "Adobe InDesign CS4"

  -- TODO: Ask for template document interactively. Something like:
  -- set myDocument to choose file with prompt "Please select the InDesign Template file"

  -- Open the InDesign Template file (.indt)
  set myDocument to open "Macintosh HD:Users:some:path:to:test_template.indt"

  -- Set up the InDesign view to show the XML sidebar and all of the good stuff.
  tell myDocument
    tell XML view preferences
      set show attributes to true
      set show structure to true
      set show tagged frames to true
      set show tag markers to true
      set show text snippets to true
    end tell

    -- Map the paragraph styles to the XML document. This must be done before the XML is imported.
    -- Big thanks to Phillip @ http://macscripter.net/viewtopic.php?id=18112
    set PStyleCount to (get count of paragraph styles)
    repeat with p from 1 to PStyleCount
      set thisPStyle to paragraph style p
      set thisPStyleObject to object reference of thisPStyle
      set thisPStyleName to name of thisPStyleObject as string
      --Avoids this error: The tag you are trying to create has an invalid name.
      if thisPStyleName is not "[Basic Paragraph]" and thisPStyleName is not "[No Paragraph Style]" then
        set XMLImportMap to make XML import map with properties {mapped style:thisPStyle, markup tag:thisPStyleName}
      end if
    end repeat

    -- TODO: Get markdown document interactively
    -- TODO: Convert markdown to XML

    -- Takes the XML source file and loads it into our blank test_template.indt
    import XML from "Macintosh HD:Users:some:path:to:source.xml"

    -- TODO: Place the XML into the document automatically
    -- Currently one must drag the `XML` node from the sidebar onto the text
    -- frame from within InDesign to populate the page with the document's content.
    -- Ideally, this would be done in AppleScript, but I haven't been able to figure this out.

    -- TODO: Execute this whole thing with a command from within Textmate

  end tell -- myDocument
end tell -- application
