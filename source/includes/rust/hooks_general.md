# Server Hooks

## OnMessagePlayer

``` csharp
void OnMessagePlayer(string message, BasePlayer player)
{
    Puts("OnMessagePlayer works!");
}
```

``` lua
function PLUGIN:OnMessagePlayer(message, player)
    print("OnMessagePlayer works!")
end
```

``` coffeescript
OnMessagePlayer: (message, player) =>
    print "OnMessagePlayer works!"
```

``` javascript
OnMessagePlayer: function(message, player) {
    print("OnMessagePlayer works!");
}
```

``` python
def OnMessagePlayer(self, message, player):
    print "OnMessagePlayer works!"
```

 * Useful for intercepting server messages before they get to their intended target
 * Return true to override the default behavior

## OnServerCommand

``` csharp
void OnServerCommand(ConsoleSystem.Arg arg)
{
    Puts("OnServerCommand works!");
}
```

``` lua
function PLUGIN:OnServerCommand(arg)
    print("OnServerCommand works!")
end
```

``` coffeescript
OnServerCommand: (arg) =>
    print "OnServerCommand works!"
```

``` javascript
OnServerCommand: function(arg) {
    print("OnServerCommand works!");
}
```

``` python
def OnServerCommand(self, arg):
    print "OnServerCommand works!"
```

 * Useful for intercepting commands before they get to their intended target
 * Return true to override the command handling system

## OnServerMessage

``` csharp
void OnServerMessage(string message, string name, string color, ulong id)
{
    Puts("OnServerMessage works!");
}
```

``` lua
function PLUGIN:OnServerMessage(message, name, color, id)
    print("OnServerMessage works!")
end
```

``` coffeescript
OnServerMessage: (message, name, color, id) =>
    print "OnServerMessage works!"
```

``` javascript
OnServerMessage: function(message, name, color, id) {
    print("OnServerMessage works!");
}
```

``` python
def OnServerMessage(self, message, name, color, id):
    print "OnServerMessage works!"
```

 * Useful for intercepting server messages before they get to their intended target
 * Return true to override the default behavior

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
