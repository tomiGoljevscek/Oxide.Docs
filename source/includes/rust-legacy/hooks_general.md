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

 * Called from ServerInit.Destroy through an additional component added by RustLegacyExtension
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

## OnServerSave

``` csharp
void OnServerSave
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

 * Called from ServerSaveManager.Save
 * No return behavior
 * Called before the server saves and rotates the .sav files

## OnServerShutdown

``` csharp
void OnServerShutdown
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

 * Called from global.quit
 * No return behavior
 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

## OnRunCommand

``` csharp
void OnRunCommand(ConsoleSystem.Arg arg, bool wantReply)
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

 * Called from ConsoleSystem.RunCommand
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustLegacyCore to implement chat commands

## OnDatablocksInitialized

``` csharp
void OnDatablocksInitialized()
{
    Puts("OnDatablocksInitialized works!");
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
 * Called from DatablockDictionary.Initialize
 * No return behavior
 * Called when all datablocks have been loaded

## OnResourceNodeLoaded

``` csharp
void OnResourceNodeLoaded(ResourceTarget resource)
{
    Puts("OnResourceNodeLoaded works!");
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

 * Called from ResourceTarget.Awake
 * No return behavior
 * Called when a resource is initializing
