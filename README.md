# active_attr_extensions

[![Build Status](https://travis-ci.org/backupify/active_attr_extensions.svg)](https://travis-ci.org/backupify/active_attr_extensions)
[![Coverage Status](https://img.shields.io/coveralls/backupify/active_attr_extensions.svg)](https://coveralls.io/r/backupify/active_attr_extensions)

Additional data types for [active_attr](https://github.com/cgriego/active_attr)

## Usage
```ruby
require 'active_attr_extensions'

class MyClass
  include ActiveAttr::Model

  attribute :some_hash, :type => Hash
  attribute :some_array, :type => Array
  attribute :some_utf8_string, :type => ActiveAttr::Typecasting::UTF8String
end

```
