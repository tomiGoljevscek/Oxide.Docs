---
title: Server Hooks
---

# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ConsoleSystem.Arg arg, bool reply)
{
    Puts("OnRunCommand works!");
}
```

 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Return true to override Rust's command handling system

## OnDatablocksInitialized

``` csharp
void OnDatablocksInitialized()
{
    Puts("OnDatablocksInitialized works!");
}
```

 * Called when all datablocks have been loaded
 * No return behavior

## OnResourceNodeLoaded

``` csharp
void OnResourceNodeLoaded(ResourceTarget resource)
{
    Puts("OnResourceNodeLoaded works!");
}
```

 * Called when a resource is initializing
 * No return behavior
