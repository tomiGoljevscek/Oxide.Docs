# General Hooks

## OnServerInitialized

``` csharp
void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
```

``` javascript
OnServerInitialized: function () {
    print("OnServerInitialized works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from ServerMgr.Initialize
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
OnServerSave: function() {
    print("OnServerSave works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from SaveRestore.DoAutomatedSave
 * No return behavior
 * Called before the server saves and rotates the .sav files

## OnServerShutdown

``` csharp
void OnServerShutdown()
{
    Puts("OnServerShutdown works!");
}
```

``` javascript
OnServerShutdown: function() {
    print("OnServerShutdown works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from ConsoleGlobal
 * No return behavior
 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

## OnTick

``` csharp
void OnTick()
{
    Puts("OnTick works!");
}
```

``` javascript
OnTick: function() {
    print("OnTick works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from ServerMgr.DoTick
 * No return behavior
 * Called every tick (defined by the tick rate of the server)

## BuildServerTags

``` csharp
void BuildServerTags(IList<string> tags)
{
    Puts("BuildServerTags works!");
}
```

``` javascript
BuildServerTags: function(tags) {
    tags.Add("mymodtag");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from RustCore.ModifyTags
 * No return behavior
 * Add tags to the list, they will be concat'd at the end

## OnRunCommand

``` csharp
void OnRunCommand(ConsoleSystem.Arg arg)
{
    Puts("OnRunCommand works!");
}
```

``` javascript
OnRunCommand: function(arg) {
    print("OnRunCommand works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from ConsoleSystem.Run_Internal, ConsoleSystem.Run_Unrestricted, and ConsoleSystem.SystemRealm_Normal
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustCore to implement chat commands
