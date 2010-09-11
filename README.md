# Printmaster

Printmaster is an attempt to automate my writing workflow. I'd like to go from Markdown-formatted plain text to a nicely set InDesign document, all with the press of a button.

## Here's the plan

Since Markdown easily formats to HTML, I'm using InDesign's ability to import XML text and apply it to a previously designed InDesign document.

1. Given a Markdown document,
1. Convert it into HTML
1. Pass that to an AppleScript file.
  The AppleScript copies a previously designed and formatted InDesign document, imports the HTML into the template, and maps the template's styles to the tags
1. The AppleScript exports this all as an InDesign document.

# Compatibility

I have CS4. If this works with any other version, let me know.

# Resources

You may be interested in these bits of Adobe documentation:

* [Adobe InDesign CS4 Scripting Guide: AppleScript](https://www.adobe.com/products/indesign/scripting/pdfs/InDesignCS4_ScriptingGuide_AS.pdf)
* [Adobe InDesign CS4 Scripting Tutorial](http://www.adobe.com/products/indesign/scripting/pdfs/InDesignCS4_ScriptingTutorial.pdf)
* [Adobe InDesign CS4 Help Documentation, XML](http://help.adobe.com/en_US/InDesign/6.0/WSa285fff53dea4f8617383751001ea8cb3f-6d10a.html)

# About

Authored by [John Finley](mailto:jpfinley@gmail.com), September 2010. Released to the public domain.
