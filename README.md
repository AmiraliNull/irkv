## IRKV
This is a simple key/value store databse in ruby (very very simple!).

[![Gem Version](https://badge.fury.io/rb/irkv.svg)](https://badge.fury.io/rb/irkv)

## Installing
```bash
$ gem install irkv
```

## Tips
```ruby
> require 'irkv'

# Create or open when exists databse
> db = IRKV.new 'db.json'

# Set a value
> db.set('key', 'value')

# Get a value from key
> db.get('key')

# Delete a key
> db.delete('key')

# Update a value
> db.update('key', 'new value')
```
