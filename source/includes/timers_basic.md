# Timers (Basic)

Timers are great for delaying code, allowing it to be run later.

## Single timer

``` csharp
timer.Once(3, () => PrintToChat("Hello world!"));
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

Executes the specified function once after the specified delay.  

## Repeating timer

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

``` csharp
if (timerVariable != null)
{
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
