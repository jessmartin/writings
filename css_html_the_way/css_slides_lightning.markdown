# CSS and HTML: The One True Way
## Jess Martin
## Relevance

### 10/10/09

!SLIDE 

# DO

!SLIDE

# Define all your styles in one place #

* Use one file for all styles for the screen content type (call it screen.css)
* Start with a reset (use Eric Meyers') as a separate file
* Have an additional stylesheet only if you need to support IE6
* Additional file for print media type (call it print.css)

!SLIDE

# Sensible CSS Structure

The CSS should be ordered in the following order for easy browsing:

* Application-wide defaults for standard HTML tags (i.e, body, headers, links, etc)
* Styles by section:
  * Header styles
  * Content styles
  * Footer styles
* Use comments to call out blocks of related styles within a section (subsection)

!SLIDE

@@@ css
  body { }
  a, a:visited { color: blue; }
  h1, h2, h3, h4 { font-weight: bold; }

  #header { height: 100px; }

  #content { margin: 0 auto; width: 600px; }

  `/* Signup page styles */`
  .signup .sidebar h2 { font-size: 2em; color: red; }
  .signup .sidebar p { line-height: 1.8em; }

  #footer { height: 60px; }
@@@

!SLIDE

# Controller and Action classes on the body element for page specific styling

* Page-specific styling
* REST Conventions for CSS

Ruby:

@@@ html
  `<body class="<%= controller.controller_name %> `
  `              <%= controller.action_name %>">`
@@@

!SLIDE 

# DON'T

!SLIDE

# Never (almost) put CSS directly on HTML elements #

* Stylesheets (screen, print, mobile) can't override the style
* JavaScript may blow away the style naively
* Violates "Define all your styles in one place" rule

!SLIDE

# Use tables for TABULAR data

If you have tables nested inside of tables *YER DOING IT WRONG*.

  * Tabular data does not CONTAIN other tabular data. If it does, your information is too complex and you're losing your user.
  * Negative example: 

    @@@ css
    .wideTable td#tabInfo table table.stripe th {}

!SLIDE

# Use an override stylesheet when changing styles for plugins, etc

Treat CSS as a plugin that you might want to upgrade.

* Create a plugin_override.css file (i.e., jquery_ui.css)
* Include it *after* the plugin.css file (i.e., jquery_ui_override.css)
* Override only the specific styles that need to be overridden GLOBALLY
* If you need to override a style in only one place, put that in your main stylesheet next to the other styles governing that area of the page

!SLIDE

# DO
* __Define all your styles in one place__
* __Structure CSS Sensibly and Consistently__
* __Controller and Action classes on the BODY element for page specific styling__

!SLIDE

# DON'T
* __Never (almost) put CSS directly on HTML elements__
* __Never (almost) use tables for non-tabular data__
* __Edit stylesheets directly when changing styles for plugins, etc__
