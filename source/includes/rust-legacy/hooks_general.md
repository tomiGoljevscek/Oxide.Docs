# Server Hooks

## OnRunCommand

``` csharp
void OnRunCommand(ConsoleSystem.Arg arg, bool reply)
{
    Puts("OnRunCommand works!");
}
```

``` lua
function PLUGIN:OnRunCommand(arg, reply)
    print("OnRunCommand works!")
end
```

``` coffeescript
OnRunCommand: (arg, reply) =>
    print "OnRunCommand works!"
```

``` javascript
OnRunCommand: function(arg, reply) {
    print("OnRunCommand works!");
}
```

``` python
def OnRunCommand(self, arg, reply):
    print "OnRunCommand works!"
```

 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Return true to override Rust's command handling system

## OnDatablocksInitialized

``` csharp
void OnDatablocksInitialized()
{
    Puts("OnDatablocksInitialized works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` python
We need a Python example here
```
 * Called when all datablocks have been loaded
 * No return behavior

## OnResourceNodeLoaded

``` csharp
void OnResourceNodeLoaded(ResourceTarget resource)
{
    Puts("OnResourceNodeLoaded works!");
}
```

``` lua
function PLUGIN:OnResourceNodeLoaded(resource)
    print("OnResourceNodeLoaded works!")
end
```

``` coffeescript
OnResourceNodeLoaded: (resource) =>
    print "OnResourceNodeLoaded works!"
```

``` javascript
OnResourceNodeLoaded: function(resource) {
    print("OnResourceNodeLoaded works!");
}
```

``` python
def OnResourceNodeLoaded(self, resource):
    print "OnResourceNodeLoaded works!"
```

 * Called when a resource is initializing
 * No return behavior
