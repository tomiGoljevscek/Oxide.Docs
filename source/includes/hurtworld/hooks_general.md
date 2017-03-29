# Server Hooks

## OnServerCommand

``` csharp
void OnServerCommand(string command)
{
    Puts("OnServerCommand works!");
}
```

 * Useful for intercepting console commands before they are executed
 * Returning a non-null value overrides default behavior

## OnRemoteCommand

``` csharp
void OnRemoteCommand(PlayerSession session, string command)
{
    Puts("OnRemoteCommand works!");
}
```

 * Useful for intercepting remote commands before they are executed
 * Returning a non-null value overrides default behavior
