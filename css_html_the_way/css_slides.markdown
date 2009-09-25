# CSS and HTML: The One True Way
## Jess Martin
## Relevance

### 9/25/09

!SLIDE

# Define all your styles in one place #

* Use one file for all styles for the screen content type (call it screen.css)
* Start with a reset (use Eric Meyers') as a separate file
* Have an additional stylesheet only if you need to support IE6
* Additional file for print media type (call it print.css)

!SLIDE

# Structure your CSS properly

CSS document should be ordered according to localizing the styles for a specific element, in the following order:

* Reset all styles
* Sensible application-wide defaults for standard HTML tags (i.e, body, headers, links, etc)
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

  .signup .sidebar h2 { font-size: 2em; color: red; }
  .signup .sidebar p { line-height: 1.8em; }

  #footer { height: 60px; }
@@@

!SLIDE

# Never (almost) put CSS directly on HTML elements #

* Differing stylesheets (screen, print, mobile) can't override the style
* JavaScript may blow away the style naively
* Violates rule one (Define all your styles in one place)

!SLIDE

# Only use tables for TABULAR data

If you have tables nested inside of tables *YER DOING IT WRONG*.

  * Tabular data does not CONTAIN other tabular data. If it does, your information is too complex and you're losing your user.
  * Negative example: 

    @@@ css
    .wideTable td#tabInfo table table.stripe th {}

!SLIDE

# Avoid creating elements simply for the sake of styling

* Only use elements for a logical grouping of elements that has some corresponding visual appearance
  * For example, a sidebar DIV that has a border around it
* Frequently see DIVs littered throughout the layout
    
!SLIDE

# Indent Properly

* Break lines after about 100 characters
* Indent once for each nested tag and each Ruby block (in erb)

!SLIDE

### Proper Indentation

@@@ rhtml
`<head>`
`   <title></title>`
`</head>`
`<body>`
`   <h2>`
`     Something`
`     <span>Some span</span>`
`   </h2>`
`   <% objects.each do |object| %>`
`     <h3><%= object.name %></h3>`
`     <p><%= object.content %></p>`
`   <% end >`
`</body>`
@@@

!SLIDE

# Favor Absolute Position Over Float Layouts

* With the exception of columnar layout.  Can't use absolute position layouts to create columns.

!SLIDE

# Use an override stylesheet when changing styles for plugins, etc

You wouldn't directly edit a Rails plugin because it makes it impossible to upgrade the plugin. Think of CSS (and Javascript) in the same way.

* Create an plugin_override.css file
* Include it *after* the plugin.css file
* Override only the specific styles that need to be overridden GLOBALLY. 
* If you need to override a style in only one place, put that in your main stylesheet next to the other styles governing that area of the page.

!SLIDE

# Forms #

* Formtastic! 'nuff said.

* Most of the opinions on how to style forms comes from:
http://www.slideshare.net/AaronGustafson/learning-to-love-forms-web-directions-south-07

!SLIDE

# Use CSS Selectors To Limit Scope #

They work in IE 7 & 8, Firefox and Safari.

  * __`>`__ The child selector 
  * __`+`__ The adjacent sibling selector 
  * __`~`__ The general sibling selector 
    
!SLIDE

# Favor dashes over underscores in class and id names #

!SLIDE

# CSS Style Contracted vs Expanded #

It's really a matter of taste.
My textmate bundle for switching back and forth.
    
!SLIDE

# Miscellaneous Tips

* Store common colors in hex at the top of the CSS file for easy reference and TextMate autocompletion
* Use firebug Inspect to locate similar elements in the CSS file
* Use firebug Inspect to locate the exact line in the CSS where the rule occurs
* Insert the controller and action classes on the body element for page specific styling
  
@@@ html
  `<body class="<%= params[:controller] %> <%= params[:action] %>">`
@@@
