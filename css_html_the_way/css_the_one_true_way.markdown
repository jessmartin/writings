# Define all your styles in one place #

* Only use one file for all styles for the screen content type (call it screen.css)
** Start with a reset (use Eric Meyers) as a separate file
** Have an additional stylesheet only if you need to support IE6
** Additional file for print media type (call it print.css)


* CSS document should be ordered according to localizing the styles for a specific element, in the following order:
** Reset all styles
** Sensible application-wide defaults for standard HTML tags (i.e, body, headers, links, etc)
** Styles by section:
*** Header styles
*** Content styles
*** Footer styles
** Use comments to call out blocks of related styles within a section (subsection)

# Never (almost) put CSS directly on HTML elements #

* Differing stylesheets (screen, print, mobile) can't override the style
* JavaScript may blow away the style naively
* Violates rule one (Define all your styles in one place)

# Only use tables for TABULAR data

* There should never be tables nested inside of tables. 
** Tabular data does not CONTAIN other tabular data. If it does, your information is too complex and losing your user.
** Negative example: 

# Avoid creating DIVs (or any extra elements) simply for the sake of styling

* Only use DIVs for logical grouping of elements that have some corresponding visual appearance
    
# Indent Properly

* Break lines after about 100 characters
* Indent once for each nested tag and each Ruby block (in erb)

<html>
  <head>
    <title></title>
  </head>
  <body>
    <h2>
      Something
      <span>Some span</span>
    </h2>
    <% objects.each do |object| %>
      <h3><%= object.name %></h3>
      <p><%= object.content %></p>
    <% end >
  </body>
</html>

# Favor Absolute Position Over Float Layouts

* With the exception of columnar layout.  Can't use absolute position layouts to create columns.

# Create a separate override stylesheet when changing global styles for plugins, etc

You wouldn't directly edit a Rails plugin because it makes it impossible to upgrade the plugin. Think of CSS (and Javascript) in the same way.
* Create an plugin_override.css file
* Include it *after* the plugin.css file
* Override only the specific styles that need to be overridden GLOBALLY. If you need to override a style in only one place, put that in your main stylesheet next to the other styles governing that area of the page.

# Forms #

* Formtastic!
http://www.slideshare.net/AaronGustafson/learning-to-love-forms-web-directions-south-07

# Use CSS Selectors To Limit Scope #

They work in IE 7 & 8, Firefox and Safari.

* > The child selector 
* + The adjacent sibling selector 
* ~ The general sibling selector 
    
# Favor dashes over underscores in class and id names #

# CSS Style Contracted vs Expanded #

It's really a matter of taste.
My textmate bundle for switching back and forth.
    
# Miscellaneous Tips

* Store common colors in hex at the top of the CSS file for easy reference and TextMate autocompletion
* Use firebug Inspect to locate similar elements in the CSS file
* Use firebug Inspect to locate the exact line in the CSS where the rule occurs
* Insert the controller and action classes on the body element for page specific styling
** <body class="<%= params[:controller] %> <%= params[:action] %>">
