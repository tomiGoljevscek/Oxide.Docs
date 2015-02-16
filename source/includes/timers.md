# Timers

## Creating a timer

Sometimes you come across a situation which only a timer can fix. Timers are great for delaying code, allowing it to be run later. The following sections will show you the various timer types, and how to use them properly.

## timer.Once

> Basic example of timer.Once

``` csharp
We need a CSharp example here
```

``` javascript
this.BroadcastTimer = timer.Once(3, function() {
    rust.BroadcastChat("SERVER", "Hello world!");
}, this.Plugin);
```

``` lua
self.BroadcastTimer = timer.Once(3, function()
    rust.BroadcastChat("SERVER", "Hello world!")
end)
```

``` python
def my_callback_func():
    rust.BroadcastChat("SERVER", "Hello world!")
self.BroadcastTimer = timer.Once(3, Action(my_callback_func), self.Plugin)
```

> Example of timer.Once with a table

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
self.TimersList = {}
self.TimersList["Notice1"] = timer.Once(3, function()
    rust.BroadcastChat("SERVER", "This is the Notice 1 every 3 seconds")
end)
self.TimersList["Notice2"] = timer.Once(10, function()
    rust.BroadcastChat("SERVER", "This is the Notice 2 every 10 seconds")
end)
```

``` python
We need a Python example here
```

Executes the specified function once after the specified delay.

## timer.Repeat

> Basic example of timer.Repeat

``` csharp
We need a CSharp example here
```

``` javascript
this.BroadcastTimer = timer.Repeat(10, 0, function() {
    rust.BroadcastChat("SERVER", "Hello world!");
}, this.Plugin);
```

``` lua
self.BroadcastTimer = timer.Repeat(10, 0, function()
    rust.BroadcastChat("SERVER", "Hello world!")
end)
```

``` python
def my_callback_func():
    rust.BroadcastChat("SERVER", "Hello world!")
self.BroadcastTimer = timer.Repeat(10, 0, Action(my_callback_func), self.Plugin)
```

Executes the specified function every "delay" seconds. If "repeats" is specified, the function will only be called "repeats" times.

## timer.NextFrame

> Basic example of timer.NextFrame

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

Executes the specified function at the next frame.

## timer.Chain

> Basic example of timer.Chain

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

Executes a chain of delayed functions. Each number in the argument list delays the timer chain by n more seconds, and each function in the argument list gets called after the previous delays in the chain have passed.

## Destroying a timer

> Basic example in Unload

``` csharp
We need a CSharp example here
```

``` javascript
Unload : function() {}
    if (this.BroadcastTimer) {
        this.BroadcastTimer.Destroy();
    }
}
```

``` lua
function PLUGIN:Unload()
    if self.BroadcastTimer then
        self.BroadcastTimer:Destroy()
    end
end
```

``` python
def Unload(self):
    if self.BroadcastTimer:
        self.BroadcastTimer.Destroy()
```

> Example in Unload with a table

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
function PLUGIN:Unload()
    for key, value in pairs(self.TimersList) do
        self.TimersList[key]:Destroy()
    end
end
```

``` python
We need a Python example here
```

It's always a good habit to stop all timers when your plugin is unloaded; do this by destroying the instance of the timer.

Timers can be used anywhere in your plugin, not just in the Unload function. Just make sure to always destroy them, as you wouldn't want a bunch of timers piling up and slowing down someone's server!
