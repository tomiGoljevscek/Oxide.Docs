# Server Hooks

## OnMessagePlayer

``` csharp
void OnMessagePlayer(string message, BasePlayer player)
{
    Puts("OnMessagePlayer works!");
}
```

 * Useful for intercepting server messages before they get to their intended target
 * Return true to override the default behavior

## OnServerCommand

``` csharp
void OnServerCommand(ConsoleSystem.Arg arg)
{
    Puts("OnServerCommand works!");
}
```

 * Useful for intercepting commands before they get to their intended target
 * Return true to override the command handling system

## OnServerMessage

``` csharp
void OnServerMessage(string message, string name, string color, ulong id)
{
    Puts("OnServerMessage works!");
}
```

 * Useful for intercepting server messages before they get to their intended target
 * Return true to override the default behavior

## OnTick

``` csharp
void OnTick()
{
    Puts("OnTick works!");
}
```

 * Called every tick (defined by the tick rate of the server)
 * No return behavior
