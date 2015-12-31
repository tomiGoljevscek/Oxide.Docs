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
Init: () =>
    print "Init works!"
```

``` python
def Init():
    print "Init works!"
```

 * Called when a plugin is being loaded
 * Other plugins may or may not be present, dependant on load order
 * Other plugins will have been executed though, so globals exposed by them will be present

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
LoadDefaultConfig: () =>
    print "LoadDefaultConfig works!"
```

``` python
def LoadDefaultConfig():
    print "LoadDefaultConfig works!"
```

 * Called when the config for a plugin should be initialized
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
OnFrame: () =>
    print "OnFrame works!"
```

``` python
def OnFrame():
    print "OnFrame works!"
```

 * Placeholder

## OnPluginLoaded

``` csharp
void OnPluginLoaded(Plugin name)
{
    Puts("OnPluginLoaded works!");
}
```

``` lua
function PLUGIN:OnPluginLoaded(name)
    print("OnPluginLoaded works!")
end
```

``` javascript
OnPluginLoaded: function(name) {
    print("OnPluginLoaded works!");
}
```

``` coffeescript
OnPluginLoaded: (name) =>
    print "Plugin '#{name}' has been loaded"
```

``` python
def OnPluginLoaded(name):
    print "OnPluginLoaded works!"
```

 * Called when a plugin has been loaded

## OnPluginUnloaded

``` csharp
void OnPluginUnloaded(Plugin name)
{
    Puts("Plugin '" + name + "' has been unloaded);
}
```

``` lua
function PLUGIN:OnPluginUnloaded(name)
    print("Plugin '" .. name .. "' has been unloaded")
end
```

``` javascript
OnPluginUnloaded: function(name) {
    print("OnPluginUnloaded works!");
}
```

``` coffeescript
OnPluginUnloaded: (name) =>
    print "Plugin '#{name}' has been unloaded"
```

``` python
def OnPluginUnloaded(name):
    print "OnPluginUnloaded works!"
```

 * Called when a plugin has been unloaded

## OnUserPermissionGranted

``` csharp
void OnUserPermissionGranted(string name, string perm)
{
    Puts("OnUserPermissionGranted works!");
}
```

``` lua
function PLUGIN:OnUserPermissionGranted(name, perm)
    print("OnUserPermissionGranted works!")
end
```

``` javascript
OnUserPermissionGranted: function(name, perm) {
    print("OnUserPermissionGranted works!");
}
```

``` coffeescript
OnUserPermissionGranted: (name, perm) =>
    print "User '#{name}' granted permission: #{perm}"
```

``` python
def OnUserPermissionGranted(name, perm):
    print "OnUserPermissionGranted works!"
```

 * Called when a permission has been granted to a user

## OnUserPermissionRevoked

``` csharp
void OnUserPermissionRevoked(string name, string perm)
{
    Puts("OnUserPermissionRevoked works!");
}
```

``` lua
function PLUGIN:OnUserPermissionRevoked(name, perm)
    print("OnUserPermissionRevoked works!")
end
```

``` javascript
OnUserPermissionRevoked: function(name, perm) {
    print("OnUserPermissionRevoked works!");
}
```

``` coffeescript
OnUserPermissionRevoked: (name, perm) =>
    print "User '#{name}' revoked permission: #{perm}"
```

``` python
def OnUserPermissionRevoked(name, perm):
    print "OnUserPermissionRevoked works!"
```

 * Called when a permission has been revoked from a user

## OnGroupPermissionGranted

``` csharp
void OnGroupPermissionGranted(string name, string perm)
{
    Puts("OnGroupPermissionGranted works!");
}
```

``` lua
function PLUGIN:OnGroupPermissionGranted(name, perm)
    print("OnGroupPermissionGranted works!")
end
```

``` javascript
OnGroupPermissionGranted: function(name, perm) {
    print("OnGroupPermissionGranted works!");
}
```

``` coffeescript
OnGroupPermissionGranted: (name, perm) =>
    print "Group '#{name}' granted permission: #{perm}"
```

``` python
def OnGroupPermissionGranted(name, perm):
    print "OnGroupPermissionGranted works!"
```

 * Called when a permission has been granted to a group

## OnGroupPermissionRevoked

``` csharp
void OnGroupPermissionRevoked(string name, string perm)
{
    Puts("OnGroupPermissionRevoked works!");
}
```

``` lua
function PLUGIN:OnGroupPermissionRevoked(name, perm)
    print("OnGroupPermissionRevoked works!")
end
```

``` javascript
OnGroupPermissionRevoked: function(name, perm) {
    print("OnGroupPermissionRevoked works!");
}
```

``` coffeescript
OnGroupPermissionRevoked: (name, perm) =>
    print "Group '#{name}' revoked permission: #{perm}"
```

``` python
def OnGroupPermissionRevoked(name, perm):
    print "OnGroupPermissionRevoked works!"
```

 * Called when a permission has been revoked from a group

## Unload

``` csharp
void Unload()
{
    Puts("Save files, destroy timers, etc.");
}
```

``` lua
function PLUGIN:Unload()
    print("Save files, destroy timers, etc.")
end
```

``` javascript
Unload: function() {
    print("Save files, destroy timers, etc.");
}
```

``` coffeescript
Unload: () =>
    print "Save files, destroy timers, etc."
```

``` python
def Unload():
    print "Save files, destroy timers, etc."
```

 * Called when a plugin is being unloaded
