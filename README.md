## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'sensitive_text_filter', :github => 'gkobluk/sensitive_text_filter'
```

And then execute:

``` bash
$ bundle
```
## Usage

Need a new language filter? Here's a quick usage example:

``` ruby
phone = LanguageFilter::Filter.new matchlist: :phone, replacement: :phone

# returns true if any content matched the filter's matchlist, else false
phone.match?('Call us: 0880-333-2333 content.')
=> true

# returns a "cleaned up" version of the text, based on the replacement rule
phone.sanitize('Call us: 0880-333-2333 content.')
=> "'Call us: [hidden phone] content."

same for :address and :email
