# General Hooks

## OnServerInitialized

``` csharp
void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
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

 * Called from GameManager.StartGame
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

## OnServerSave

``` csharp
void OnServerSave()
{
    Puts("OnServerSave works!");
}
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

 * Called from World.Save
 * No return behavior
 * Is called before the server saves world and player data

## OnServerShutdown

``` csharp
void OnServerShutdown()
{
    Puts("OnServerShutdown works!");
}
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

 * Called from ModManager.GameShutdown
 * No return behavior
 * Is called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

## OnRunCommand

``` csharp
void OnRunCommand(ClientInfo client, String[] args)
{
    Puts("OnRunCommand works!");
}
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

 * Called from ConnectionManager.ServerConsoleCommand
 * Help! This is missing a description!
