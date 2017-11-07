## IRKV
This is a simple key/value store databse in ruby (very very simple!).

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
```