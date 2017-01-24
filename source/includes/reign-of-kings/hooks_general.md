# Server Hooks

## OnChatCommand

``` csharp
void OnChatCommand(Player player, string command, string[] args)
{
    Puts("OnChatCommand works!");
}
```

 * Useful for intercepting commands before they get to their intended target
 * No return behavior
