# jquery-colorbox-rails

jquery-colorbox-rails integrates [jquery.colorbox](https://github.com/jackmoore/colorbox) with rails 3.1+ asset pipeline.

Colorbox version: <b id="colorbox-version">1.6.0</b>

### Installation

Add

``` ruby
gem 'jquery-colorbox-rails'
```

to your `Gemfile`

and

```javascript
//= require jquery.colorbox
```

to your `app/assets/javascripts/application.js` or other js manifest file.

For i18n integration (e.g. pl language) also add:

```javascript
//= require jquery.colorbox-pl
```

To use one of attached [css examples](http://www.jacklmoore.com/colorbox/example1/) add:

```css
*= require jquery.colorbox-example1
```

to your css manifest file. There are 5 examples availables (example1, example2...and so on).
