# Timers (Basic)

Timers are great for delaying code, allowing it to be run later.

## Single timer

``` csharp
timer.Once(3f, () =>
{
    Puts("Hello world!")
});
```

Executes the specified function once after the specified delay.  

## Repeating timer

``` csharp
timer.Repeat(5f, 0, () =>
{
    Puts("Hello world!")
});
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

Executes the specified function at the next frame.  
