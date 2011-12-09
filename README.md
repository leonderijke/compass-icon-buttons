# Compass Icon Buttons
A Compass plugin providing some easy to use mixins for creating buttons with icons. Compass Icon Buttons takes care of all the math necessary to align the icon and the text properly.
Got a large icon and small text? No problem. Small icon and large text? No problem.

Check out some examples at: http://leonderijke.github.com/compass-icon-buttons/

## Installation
Installing is easy. It's a RubyGem, so just type this on your command line:

    $ gem install icon-buttons

Then, add it to a project:

```
// Add this to compass.config (rails) or config.rb (other):
require 'icon-buttons'

// Type this on your command line:
$ compass install icon-buttons
```

Or just create a new project, based on Compass Icon Buttons:

    $ compass create my_project -r icon-buttons --using icon-buttons

## Usage
Leveraging the [spriting magic][compass_sprites] of Compass you can quickly create beautiful icon buttons:

```sass
// First we import compass-icon-buttons
@import "icon-buttons";

// The we create the icons sprite
@import "icons/*.png";
@include all-icons-sprites;

// Then we'll use the compass-icon-buttons mixins:
.btn {
	@include single-line-icon-button();
}
```

So, what does our markup look like? You'll find some examples in buttons.html:

```html
<a href="#" class="btn" title="accept">
	<span class="icon icons-accept"></span>
	<span class="text">Accept</span>
</a>
```

## Customization
Each mixin comes takes some handy optional arguments. Passing them a value will help you customize your buttons:

```sass
// These are the default options for the single line mixin. Override them to provide your own values.
@include single-line-icon-button($icon-size : 16px, $font-size: 12px, $icon-class : ".icon", $text-class : ".text",
 	$gradient-base-color: #f7f7f7)

// These are the default options for the multi line mixin. Override them to provide your own values.
@include multi-line-icon-button($icon-size : 16px, $font-size-line1: 16px, $font-size-line2: 10px, $icon-class : ".icon",
 	$text-line1-class : ".line1", $text-line2-class : ".line2", $gradient-base-color: #f7f7f7)
```

[compass_sprites]: http://compass-style.org/help/tutorials/spriting/