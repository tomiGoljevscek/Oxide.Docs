# Universal Hooks

**Available for all supported games**

[![7 Days to Die](7-days-to-die/favicon-32x32.png)](/7-days-to-die/)
[![Beasts of Prey](beasts-of-prey/favicon-32x32.png)](/beasts-of-prey/)
[![Blockstorm](blockstorm/favicon-32x32.png)](/blockstorm/)
[![Hurtworld](hurtworld/favicon-32x32.png)](/hurtworld/)
[![Reign of Kings](reign-of-kings/favicon-32x32.png)](/reign-of-kings/)
[![Rust](rust/favicon-32x32.png)](/rust/)
[![Rust Legacy](rust-legacy/favicon-32x32.png)](/rust-legacy/)
[![The Forest](the-forest/favicon-32x32.png)](/the-forest/)
[![Unturned](unturned/favicon-32x32.png)](/unturned/)

## Init

``` csharp
void Init()
{
    Puts("Init works!");
}
```

``` lua
function PLUGIN:Init()
    print("Init works!")
end
```

``` javascript
Init: function() {
    print("Init works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def Init():
    print "Init works!"
```

 * Called when the plugin is being loaded
 * Other plugins may or may not be present, dependant on load order
 * Other plugins WILL have been executed though, so globals exposed by them will be present

## LoadDefaultConfig

``` csharp
protected override void LoadDefaultConfig()
{
    Puts("LoadDefaultConfig works!");
}
```

``` lua
function PLUGIN:LoadDefaultConfig()
    print("LoadDefaultConfig works!")
end
```

``` javascript
LoadDefaultConfig: function() {
    print("LoadDefaultConfig works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def LoadDefaultConfig():
    print "LoadDefaultConfig works!"
```

 * Called when the config for the plugin should be initialized
 * Only called if the config file does not already exist

## OnFrame

``` csharp
void OnFrame()
{
    Puts("OnFrame works!");
}
```

``` lua
function PLUGIN:OnFrame()
    print("OnFrame works!")
end
```

``` javascript
OnFrame: function() {
    print("OnFrame works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnFrame():
    print "OnFrame works!"
```

 * Placeholder

## Unload

``` csharp
void Unload()
{
    Puts("Unload works!");
}
```

``` lua
function PLUGIN:Unload()
    print("Unload works!")
end
```

``` javascript
Unload: function() {
    print("Unload works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def Unload():
    print "Unload works!"
```

 * Called when the plugin is being unloaded

## OnPluginLoaded

``` csharp
void OnPluginLoaded(Plugin pluginName)
{
    Puts("OnPluginLoaded works!");
}
```

``` lua
function PLUGIN:OnPluginLoaded()
    print("OnPluginLoaded works!")
end
```

``` javascript
OnPluginLoaded: function() {
    print("OnPluginLoaded works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPluginLoaded():
    print "OnPluginLoaded works!"
```

 * Called when specified plugin has been loaded

## OnPluginUnloaded

``` csharp
void OnPluginUnloaded(Plugin pluginName)
{
    Puts("OnPluginUnloaded works!");
}
```

``` lua
function PLUGIN:OnPluginUnloaded()
    print("OnPluginUnloaded works!")
end
```

``` javascript
OnPluginUnloaded: function() {
    print("OnPluginUnloaded works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPluginUnloaded():
    print "OnPluginUnloaded works!"
```

 * Called when specified plugin has been unloaded
