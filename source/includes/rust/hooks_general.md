# Server Hooks

## OnMessagePlayer

``` csharp
object OnMessagePlayer(string message, BasePlayer player)
{
    Puts("OnMessagePlayer works!");
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

 * Called when a new savefile is created
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
}
```

 * Called when a new RCon connection is opened
 * Returning a non-null value overrides default behavior

## OnSaveLoad

``` csharp
object OnSaveLoad(Dictionary<BaseEntity, Entity> entities)
{
    Puts("OnSaveLoad works!");
}
```

 * Called when a savefile is loaded
 * Returning a non-null value overrides default behavior

## OnServerCommand

``` csharp
object OnServerCommand(ConsoleSystem.Arg arg)
{
    Puts("OnServerCommand works!");
}
```

 * Useful for intercepting commands before they get to their intended target
 * Returning a non-null value overrides default behavior

## OnServerMessage

``` csharp
object OnServerMessage(string message, string name, string color, ulong id)
{
    Puts("OnServerMessage works!");
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
 * No return behavior
