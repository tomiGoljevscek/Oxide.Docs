---
title: Server Hooks
---

# Server Hooks

## OnMessagePlayer

``` csharp
object OnMessagePlayer(string message, BasePlayer player)
{
    Puts("OnMessagePlayer works!");
    return null;
}
```

 * Useful for intercepting server messages before they get to their intended target
 * Returning a non-null value overrides default behavior

## OnNewSave

``` csharp
void OnNewSave(string filename)
{
    Puts("OnNewSave works!");
}
```

 * Called when a new savefile is created (usually when map has wiped)
 * No return behavior

## OnRconCommand

``` csharp
void OnRconCommand(IPAddress ip, string command, string[] args)
{
    Puts("OnRconCommand works!");
}
```

 * Called when an RCON command is run
 * No return behavior

## OnRconConnection

``` csharp
object OnRconConnection(IPEndPoint ip)
{
    Puts("OnRconConnection works!");
    return null;
}
```

 * Called when a new RCON connection is opened
 * Returning a non-null value overrides default behavior

## OnSaveLoad

``` csharp
object OnSaveLoad(Dictionary<BaseEntity, Entity> entities)
{
    Puts("OnSaveLoad works!");
    return null;
}
```

 * Called when a save file is loaded
 * Returning a non-null value overrides default behavior

## OnServerCommand

``` csharp
object OnServerCommand(ConsoleSystem.Arg arg)
{
    Puts("OnServerCommand works!");
    return null;
}
```

 * Useful for intercepting commands before they get to their intended target
 * Returning a non-null value overrides default behavior

## OnServerMessage

``` csharp
object OnServerMessage(string message, string name, string color, ulong id)
{
    Puts("OnServerMessage works!");
    return null;
}
```

 * Useful for intercepting server messages before they get to their intended target
 * Returning a non-null value overrides default behavior

## OnTick

``` csharp
void OnTick()
{
    Puts("OnTick works!");
}
```

 * Called every tick (defined by the tick rate of the server)
 * For better performance, avoid using heavy calculations in this hook.
 * No return behavior
