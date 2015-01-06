ToDoApp
=======

Start it with `bundle exec lotus server`

# Troubleshooting

If a `CanOpenException` occurs change the `CONNECTION_URI` to:

```ruby
CONNECTION_URI = "sqlite:///#{__dir__}/..."
```
