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

``` coffeescript
OnRunCommand: (arg) =>
  print "OnRunCommand works!"
```

``` javascript
OnRunCommand: function(arg) {
  print("OnRunCommand works!");
}
```

``` python
def OnRunCommand(self, arg):
  print "OnRunCommand works!"
```

 * Useful for intercepting commands before they get to their intended target (like chat.say)
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

``` coffeescript
OnTick: ->
  print "OnTick works!"
```

``` javascript
OnTick: function() {
  print("OnTick works!");
}
```

``` python
def OnTick(self):
  print "OnTick works!"
```

 * Called every tick (defined by the tick rate of the server)
 * No return behavior
