# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ClientInfo client, String[] args)
{
    Puts("OnRunCommand works!");
}
```

``` lua
function PLUGIN:OnRunCommand(client, args)
    print("OnRunCommand works!")
end
```

``` javascript
OnRunCommand: function(client, args) {
    print("OnRunCommand works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnRunCommand(self, client, args):
    print "OnRunCommand works!"
```

 * Called from ConnectionManager.ServerConsoleCommand
 * Useful for intercepting commands before they get to their intended target
 * Return true to override the command handling system
