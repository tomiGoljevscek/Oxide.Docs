# Timers

Sometimes you come across a situation which only a timer can fix.

Timers are great for delaying code, allowing it to be run later.

## Single timer

> Basic example of timer.Once

``` csharp
timer.Once(3, () => PrintToChat("Hello world!"));
timer.In(3, () => PrintToChat("Hello world!"));
```

``` lua
timer.Once(3, function()
    rust.BroadcastChat("SERVER", "Hello world!")
end, self.Plugin)
```

``` javascript
timer.Once(3, function() {
    rust.BroadcastChat("SERVER", "Hello world!");
}, this.Plugin);
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def my_callback_func():
    rust.BroadcastChat("SERVER", "Hello world!")
timer.Once(3, Action(my_callback_func), self.Plugin)
```

> Example of timer.Once stored in a variable or table

``` csharp
var timerVariable = timer.In(3, () => PrintToChat("Hello world!"));
```

``` lua
local timersVariable = {}
timersVariable["Notice1"] = timer.Once(3, function()
    rust.BroadcastChat("SERVER", "This is the Notice 1 every 3 seconds")
end)
timersVariable["Notice2"] = timer.Once(10, function()
    rust.BroadcastChat("SERVER", "This is the Notice 2 every 10 seconds")
end, self.Plugin)
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

Executes the specified function once after the specified delay.  

## Repeating timer

> Basic example of timer.Repeat

``` csharp
timer.Repeat(10, 0, () => PrintToChat("Hello world!"));
```

``` lua
timer.Repeat(10, 0, function()
    rust.BroadcastChat("SERVER", "Hello world!")
end, self.Plugin)
```

``` javascript
timer.Repeat(10, 0, function() {
    rust.BroadcastChat("SERVER", "Hello world!");
}, this.Plugin);
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def my_callback_func():
    rust.BroadcastChat("SERVER", "Hello world!")
timer.Repeat(10, 0, Action(my_callback_func), self.Plugin)
```

Executes the specified function every "delay" seconds.

If "repeats" is specified, the function will only be called "repeats" times.  

## Next frame timer

> Basic example of timer.NextFrame

``` csharp
// This is not implemented for C#, the following can be used instead:
timer.Once(1, 0.0f, () => PrintToChat("Hello world"));
```

``` lua
timer.NextFrame(function()
    rust.BroadcastChat("SERVER", "Hello world!")
);
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

Executes the specified function at the next frame.  

## Destroying a timer

> Basic example

``` csharp
if (timerVariable != null) {
    timerVariable.Destroy();
}
```

``` lua
if timerVariable then
    timerVariable:Destroy()
end
```

``` javascript
if (timerVariable) {
    timerVariable.Destroy();
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
if timerVariable:
    timerVariable.Destroy()
```

When used correctly, timers are automatically destroyed when the plugin is reload or unloaded.

If you need to stop a timer manually, you can do so by destroying the instance of the timer.
