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

 * Called from ServerMgr.Initialize
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

 * Called from SaveRestore.DoAutomatedSave
 * Called before the server saves and rotates the .sav files
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

 * Called from ConsoleGlobal
 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook
 * No return behavior

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
