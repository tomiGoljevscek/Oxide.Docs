# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ConsoleSystem.Arg arg)
{
    Puts("OnRunCommand works!");
}
```

``` lua
function PLUGIN:OnRunCommand(arg)
    print("OnRunCommand works!")
end
```

``` javascript
OnRunCommand: function(arg) {
    print("OnRunCommand works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnRunCommand(self, arg):
    print "OnRunCommand works!"
```

 * Called from ConsoleSystem.Run_Internal, ConsoleSystem.Run_Unrestricted, and ConsoleSystem.SystemRealm_Normal
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustCore to implement chat commands
 * Return true to override the command handling system

## OnTick

``` csharp
void OnTick()
{
    Puts("OnTick works!");
}
```

``` lua
function PLUGIN:OnTick()
    print("OnTick works!")
end
```

``` javascript
OnTick: function() {
    print("OnTick works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnTick(self):
    print "OnTick works!"
```

 * Called from ServerMgr.DoTick
 * Called every tick (defined by the tick rate of the server)
 * No return behavior
