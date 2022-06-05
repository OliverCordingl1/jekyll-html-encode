# jekyll-html-encode

Converts strings to HTML Escape characters

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