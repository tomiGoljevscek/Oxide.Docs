# Server Hooks

## OnServerCommand
```csharp
object OnServerCommand(string command, string[] args)
{
    Puts("OnServerCommand works!");
}
```

 * Useful for intercepting commands before they get to their intended target
 * Returning a non-null value overrides default behavior


