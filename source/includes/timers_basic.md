# Timers (Basic)

Timers are great for delaying code, allowing it to be run later.

## Single timer

``` csharp
timer.Once(3f, () =>
{
    Puts("Hello world!")
});
```

``` lua
timer.Once(3, function()
    print("Hello world!")
end)
```

``` coffeescript
timer.Once 3, ->
  print "Hello world!"
```

``` javascript
timer.Once(3, function() {
  print("Hello world!");
});
```

``` python
def my_callback_func():
  print("Hello world!")

timer.Once(3, Action(my_callback_func), self.Plugin)
```

Executes the specified function once after the specified delay.  

## Repeating timer

``` csharp
timer.Repeat(5f, 0, () =>
{
    Puts("Hello world!")
});
```

``` lua
timer.Repeat(5, 0, function()
    print("Hello world!")
end, self.Plugin)
```

``` coffeescript
timer.Repeat 5, 0, (->
  print "Hello world!"
), @Plugin
```

``` javascript
timer.Repeat(5, 0, function() {
  print("Hello world!");
}, this.Plugin);
```

``` python
def my_callback_func():
  print("Hello world!")

timer.Repeat(5, 0, Action(my_callback_func), self.Plugin)
```

Executes the specified function every "delay" seconds.

If "repeats" is specified, the function will only be called "repeats" times.  

## Next frame timer

``` csharp
NextFrame(() =>
{
    Puts("Hello world!");
});
```

``` lua
timer.NextFrame(function()
    print("Hello world!")
);
```

``` coffeescript
timer.NextFrame ->
  print "Hello world!"
```

``` javascript
timer.NextFrame(function() {
  print("Hello world!");
});
```

``` python
timer.NextFrame((lambda:
  print("Hello world!")
), self.Plugin)
```

Executes the specified function at the next frame.  
