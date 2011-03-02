# Printmaster

Printmaster is an attempt to automate my writing workflow. I'd like to go from Markdown-formatted plain text to a nicely set InDesign document, all with the press of a button.

## Here's the plan

Since Markdown easily formats to HTML, I'm using InDesign's ability to import XML text and apply it to a previously designed InDesign template.

1. Given a Markdown document,
1. Convert it into XML
1. Pass that to an AppleScript file.

  The AppleScript copies a previously designed and formatted InDesign template, imports the XML into the template, and maps the template's styles to the tags.

1. The AppleScript exports this all as an InDesign document.

# Requirements and Use

I have CS4. If this works with any other version, let me know.

Open up `Printmaster.scpt` in the AppleScript editor and change the paths. There are two: one for your template file (I've included a sample file) and another for your source.

Run the applescript file and InDesign should open and create a new doc for you. Drag the XML from the sidebar over to the page, and your markdown text will propagate. This works best if you've set up your template's master pages in any sane way.

## Source File

The source file needs to be XML in order for InDesign to work with it. For my example, I exported a markdown file to HTML and used only what was within the `<body>`. I wrapped that within a `<root>` tag and put an XML declaration on top. The goal is to eventually do all of that automatically.

## Unit types error

If you are running Snow Leopard, you may see an error about the Adobe Unit Types scripting addition file:

    Error loading /Library/ScriptingAdditions/Adobe Unit Types.osax

Apparently, the addition file installed with CS4 is 32-bit, while AppleScript expects 64-bit. There is an Adobe Knowledge Base [article](http://kb2.adobe.com/cps/516/cpsid_51615.html) on the topic witch lists a number of suggestions to work around the issue, including a 64-bit scripting addition file.

# Help

I'm always looking to automate this process further. If you have any interest on taking on the TODOs I've left, please let me know.

# Resources

You may be interested in reading up on Adobe's documentation on the topic. [This page](http://www.adobe.com/products/indesign/scripting/index.html) has a great variety of resources, including user guides and links to the [InDesign Scripting User Forum](http://forums.adobe.com/community/indesign/indesign_scripting). Who knew.

# About

Authored by [John Finley](mailto:jpfinley@gmail.com), September 2010. Released to the public domain.
