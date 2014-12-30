# active_attr_extensions

Additional data types for [active_attr](https://github.com/cgriego/active_attr)

## Usage
```ruby
require 'active_attr_extensions'

class MyClass
  include ActiveAttr::Model

  attribute :some_hash, :type => Hash
  attribute :some_array, :type => Array
end

```
