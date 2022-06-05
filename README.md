# jekyll-html-encode

Converts strings to HTML Escape Entity characters

## Example

```ruby
{{ 'Hello, World!' | encode_html }}

# ~> &#72;&#101;&#108;&#108;&#111;&#44;&#32;&#87;&#111;&#114;&#108;&#100;&#33;
```

## Install

Install by putting the following into your Gemfile:
```Gemfile
gem 'jekyll-html-encode'
```

Then, put the following into your `_config.yml`:
```yaml
plugins:
- jekyll-email-protect
```

## Why?

I made this to add a little extra obscurity for webscrapers looking to grab my email. I made it to use in conjunction with [jekyll-email-protect](https://github.com/vwochnik/jekyll-email-protect).

It may not have much benefit at all, as it seems like modern browsers tend to just render the HTML Escape Entities as text in source anyway and I've not really had much a chance to test it, however I'd rather be safe than have a hundred thousand emails about my car's extended warranty or _"magic pills"_ flooding my inbox when I publish my website.
