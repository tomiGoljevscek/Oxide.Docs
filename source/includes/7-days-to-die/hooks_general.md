# Server Hooks

## OnServerInitialized

``` csharp
void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
```

``` lua
function PLUGIN:OnServerInitialized()
    print("OnServerInitialized works!")
end
```

``` javascript
OnServerInitialized: function() {
    print("OnServerInitialized works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnServerInitialized(self):
    print "OnServerInitialized works!"
```

 * Called from GameManager.StartGame
 * Called after the server startup has been completed and is awaiting connections
 * No return behavior

## OnServerSave

``` csharp
void OnServerSave()
{
    Puts("OnServerSave works!");
}
```

``` lua
function PLUGIN:OnServerSave()
    print("OnServerSave works!")
end
```

``` javascript
OnServerSave: function() {
    print("OnServerSave works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnServerSave(self):
    print "OnServerSave works!"
```

 * Called from World.Save
 * Is called before the server saves world and player data
 * No return behavior

## OnServerShutdown

``` csharp
void OnServerShutdown()
{
    Puts("OnServerShutdown works!");
}
```

``` lua
function PLUGIN:OnServerShutdown()
    print("OnServerShutdown works!")
end
```

``` javascript
OnServerShutdown: function() {
    print("OnServerShutdown works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnServerShutdown(self):
    print "OnServerShutdown works!"
```

 * Called from ModManager.GameShutdown
 * Is called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook
 * No return behavior

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
