# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ConsoleSystem.Arg arg, bool wantReply)
{
    Puts("OnRunCommand works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeScript example here
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

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeScript example here
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

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeScript example here
```

``` python
We need a Python example here
```

 * Called from ResourceTarget.Awake
 * No return behavior
 * Called when a resource is initializing
