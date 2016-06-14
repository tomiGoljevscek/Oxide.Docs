# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ClientInfo client, string[] args)
{
    Puts("OnRunCommand works!");
}
```

``` lua
function PLUGIN:OnRunCommand(client, args)
    print("OnRunCommand works!")
end
```

``` coffeescript
OnRunCommand: (client, args) =>
    print "OnRunCommand works!"
```

``` javascript
OnRunCommand: function(client, args) {
    print("OnRunCommand works!");
}
```

``` python
def OnRunCommand(self, client, args):
    print "OnRunCommand works!"
```

 * Useful for intercepting commands before they get to their intended target
 * Return true to override the command handling system
