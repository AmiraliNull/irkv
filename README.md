## IRKV
This is a simple key/value store databse in ruby (very very simple!).

![Gem](https://img.shields.io/gem/v/irkv?style=flat-square)
![Gem](https://img.shields.io/gem/dt/irkv?style=flat-square)

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
