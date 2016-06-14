# Server Hooks

## OnChatCommand

``` csharp
void OnChatCommand(Player player, string command, string[] args)
{
    Puts("OnChatCommand works!");
}
```

``` lua
function PLUGIN:OnChatCommand(player, command, args)
    print("OnChatCommand works!")
end
```

``` coffeescript
OnChatCommand: (player, command, args) =>
    print "OnChatCommand works!"
```

``` javascript
OnChatCommand: function(player, command, args) {
    print("OnChatCommand works!");
}
```

``` python
def OnChatCommand(self, player, command, args):
    print "OnChatCommand works!"
```

 * Useful for intercepting commands before they get to their intended target
 * No return behavior
