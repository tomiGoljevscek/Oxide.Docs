# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ClientInfo client, string[] args)
{
    Puts("OnRunCommand works!");
}
```

 * Useful for intercepting commands before they get to their intended target
 * Return true to override the command handling system
