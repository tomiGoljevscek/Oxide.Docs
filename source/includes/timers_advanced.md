# Timers (Advanced)

Timers are great for delaying code, allowing it to be run later.

## Single timer

``` csharp
var timerVariable = timer.In(3, () => PrintToChat("Hello world!"));
```

Executes the specified function once after the specified delay.  

## Repeating timer

``` csharp
timer.Repeat(10, 0, () => PrintToChat("Hello world!"));
```

Executes the specified function every "delay" seconds.

If "repeats" is specified, the function will only be called "repeats" times.  

## Next frame timer

``` csharp
// This is not implemented for C#, the following can be used instead:
timer.Once(1, 0.0f, () => PrintToChat("Hello world"));
```

Executes the specified function at the next frame.  

## Destroying a timer

``` csharp
if (timerVariable != null)
{
    timerVariable.Destroy();
}
```

When used correctly, timers are automatically destroyed when the plugin is reload or unloaded.

If you need to stop a timer manually, you can do so by destroying the instance of the timer.

## Destroying a timer

``` csharp
if (variable != null)
{
    variable.Destroy();
}
```

When used correctly, timers are automatically destroyed when the plugin is reload or unloaded.

If you need to stop a timer manually, you can do so by destroying the instance of the timer.
