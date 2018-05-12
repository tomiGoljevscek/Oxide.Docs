---
title: Server Hooks
---

# Server Hooks

## OnServerCommand

``` csharp
object OnServerCommand(ClientInfo client, string command)
{
    Puts("OnServerCommand works!");
    return null;
}
```

 * Useful for intercepting commands before they get to their intended target
 * Returning a non-null value overrides default behavior
